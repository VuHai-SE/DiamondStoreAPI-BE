﻿using System;
using System.Collections.Generic;

namespace DiamondStoreAPI.Models;

public partial class TblOrderDetail
{
    public string OrderDetailId { get; set; } = null!;

    public string? OrderId { get; set; }

    public string? ProductId { get; set; }

    public int? CustomizedSize { get; set; }

    public double? CustomizedAmount { get; set; }

    public int? Quantity { get; set; }

    public double? TotalPrice { get; set; }

    public double? FinalPrice { get; set; }

    public virtual TblOrder? Order { get; set; }

    public virtual TblProduct? Product { get; set; }

    public virtual TblWarranty? TblWarranty { get; set; }
}
