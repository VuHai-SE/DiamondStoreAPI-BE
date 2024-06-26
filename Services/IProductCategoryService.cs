﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BusinessObjects;

namespace Services
{
    public interface IProductCategoryService
    {
        public List<TblProductCategory> GetProductCategories();
        public TblProductCategory AddProductCategories(TblProductCategory productCategory);
        public TblProductCategory GetProductCategory(string id);

        public bool UpdateProductCategory(string id, TblProductCategory productCategory);
        public bool DeleteProductCategory(string id);
        public TblProductCategory GetCategoryByName(string name);
    }
}
