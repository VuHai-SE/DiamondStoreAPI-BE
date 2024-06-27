﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using BusinessObjects;
using Services;
using Microsoft.AspNetCore.Identity.Data;
using Services.DTOs.Request;
using System.IdentityModel.Tokens.Jwt;
using Microsoft.IdentityModel.Tokens;
using System.Security.Claims;
using System.Text;
using System.Configuration;
using Services.DTOs.Response;
using BusinessObjects.ResponseModels;


namespace DiamondStoreAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AccountsController : ControllerBase
    {
        private readonly IAccountService _accountService;
        private readonly ICustomerService _customerService;
        private readonly string _jwtSecret;
        private readonly IConfiguration _configuration;


        public AccountsController(IAccountService accountService, ICustomerService customerService, IConfiguration configuration)
        {
            _accountService = accountService;
            _customerService = customerService;
            _configuration = configuration;
            _jwtSecret = _configuration.GetValue<string>("Jwt:Day_la_key_JWT");
        }

        [HttpPost("login")]
        public async Task<IActionResult> Login([FromBody] Services.DTOs.Request.LoginRequest request)
        {
            if (request == null)
            {
                return BadRequest("Invalid client request");
            }

            var account = await _accountService.AuthenticateAsync(request.Username, request.Password);
            if (account == null)
            {
                return Unauthorized();
            }

            var token = GenerateJwtToken(account);
            BusinessObjects.ResponseModels.LoginResponse customerInfo = _customerService.GetCustomerByAccountForLogin(request.Username);

            return Ok(new
            {
                Token = token,
                CustomerInfo = customerInfo
            });
        }

        [HttpPost("register")]
        public async Task<IActionResult> Register([FromBody] Services.DTOs.Request.RegisterRequest request)
        {
            await _accountService.RegisterAsync(request);
            return Ok();
        }

        [HttpPost("forgot-password")]
        public async Task<IActionResult> ForgotPassword([FromBody] Services.DTOs.Request.ForgotPasswordRequest request)
        {
            if (string.IsNullOrEmpty(request.Username) || string.IsNullOrEmpty(request.OldPassword) || string.IsNullOrEmpty(request.NewPassword))
            {
                return BadRequest("Username, old password, and new password must be provided.");
            }

            var result = await _accountService.ForgotPasswordAsync(request);

            if (result == "Account not found.")
            {
                return NotFound(result);
            }
            else if (result == "Old password does not match." || result == "New password cannot be the same as the old password.")
            {
                return BadRequest(result);
            }

            return Ok(result);
        }


        [HttpPost("CheckUsernameExist")]
        public async Task<IActionResult> CheckUsernameExist(string username)
        {
            return Ok(_accountService.IsUsernameExisted(username));
        }

        [HttpPost("CheckEmailExist")]
        public async Task<IActionResult> CheckEmailExist(string email)
        {
            return Ok(_customerService.IsEmailExisted(email));
        }

        [HttpPost("CheckPhoneExist")]
        public async Task<IActionResult> CheckPhoneExist(string phone)
        {
            return Ok(_customerService.isPhoneExisted(phone));
        }

        private string GenerateJwtToken(TblAccount account)
        {
            var tokenHandler = new JwtSecurityTokenHandler();
            var key = Encoding.ASCII.GetBytes(_jwtSecret);
            var tokenDescriptor = new SecurityTokenDescriptor
            {
                Subject = new ClaimsIdentity(new[]
                {
                    new Claim(ClaimTypes.Name, account.Username),
                    new Claim(ClaimTypes.Role, account.Role)
                }),
                Expires = DateTime.UtcNow.AddDays(7),
                SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.HmacSha256Signature)
            };
            var token = tokenHandler.CreateToken(tokenDescriptor);
            return tokenHandler.WriteToken(token);
        }
    }
}
