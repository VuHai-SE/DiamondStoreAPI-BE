﻿using System;
using System.Collections.Generic;

namespace BusinessObjects;

public partial class TblSaleStaff
{
    public string StaffId { get; set; } = null!;

    public int? AccountId { get; set; }

    public string? FirstName { get; set; }

    public string? LastName { get; set; }

    public virtual TblAccount? Account { get; set; }

    public virtual ICollection<TblOrder> TblOrders { get; set; } = new List<TblOrder>();
}
