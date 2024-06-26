﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.DTOs.Request
{
    public class ProductFilterCriteria
    {
        public string? GemOrigin { get; set; }
        public double? MinCaratWeight { get; set; }
        public double? MaxCaratWeight { get; set; }
        public string? Color {  get; set; }
        public string? Clarity { get; set; }
        public string? Cut { get; set; }
        public string? Material { get; set; }
        public string? Category { get; set; }
        public string? Gender { get; set; }
    }
}
