USE DiamondStore;
GO

-- Insert sample data into Tbl_MaterialCategory
INSERT INTO Tbl_MaterialCategory (MaterialID, MaterialName)
VALUES 
('M001', 'Gold'),
('M002', 'Silver'),
('M003', 'Platinum'),
('M004', 'Palladium'),
('M005', 'Titanium');

-- Insert sample data into Tbl_MaterialPriceList
INSERT INTO Tbl_MaterialPriceList (MaterialID, UnitPrice, EffDate)
VALUES 
('M001', 60.0, '2024-01-01'),
('M002', 25.0, '2024-01-01'),
('M003', 100.0, '2024-01-01'),
('M004', 70.0, '2024-01-01'),
('M005', 50.0, '2024-01-01');

-- Insert sample data into Tbl_GemPriceList
INSERT INTO Tbl_GemPriceList (Origin, CaratWeight, Color, Cut, Clarity, Price, EffDate, Size)
VALUES 
('South Africa', 1.0, 'D', 'Excellent', 'IF', 10000.0, '2024-01-01', 5.0),
('Russia', 0.8, 'E', 'Very Good', 'VVS1', 8000.0, '2024-01-01', 4.0),
('Australia', 0.5, 'F', 'Good', 'VS1', 5000.0, '2024-01-01', 3.0),
('Canada', 1.2, 'G', 'Excellent', 'SI1', 12000.0, '2024-01-01', 6.0),
('Brazil', 0.9, 'H', 'Very Good', 'I1', 9000.0, '2024-01-01', 4.5);

-- Insert sample data into Tbl_Gem
INSERT INTO Tbl_Gem (GemID, GemName, Polish, Symmetry, Fluorescence, Origin, CaratWeight, Color, Cut, Clarity, Shape)
VALUES 
('G001', 'Diamond', 'Excellent', 'Excellent', 'None', 'South Africa', 1.0, 'D', 'Excellent', 'IF', 'Round'),
('G002', 'Diamond', 'Very Good', 'Very Good', 'Faint', 'Russia', 0.8, 'E', 'Very Good', 'VVS1', 'Princess'),
('G003', 'Diamond', 'Good', 'Good', 'Medium', 'Australia', 0.5, 'F', 'Good', 'VS1', 'Oval'),
('G004', 'Diamond', 'Excellent', 'Excellent', 'Strong', 'Canada', 1.2, 'G', 'Excellent', 'SI1', 'Cushion'),
('G005', 'Diamond', 'Very Good', 'Very Good', 'None', 'Brazil', 0.9, 'H', 'Very Good', 'I1', 'Emerald');

-- Insert sample data into Tbl_ProductCategory
INSERT INTO Tbl_ProductCategory (CategoryID, CategoryName)
VALUES 
('C001', 'Rings'),
('C002', 'Necklaces'),
('C003', 'Bracelets'),
('C004', 'Earrings'),
('C005', 'Watches');

-- Insert sample data into Tbl_Account
INSERT INTO Tbl_Account (Username, Password, Role)
VALUES 
('johndoe', 'password123', 'Customer'), --1
('janedoe', 'password123', 'Customer'), --2
('staff1', 'password123', 'SaleStaff'), --3
('admin1', 'password123', 'Admin'), --4
('staff2', 'password123', 'SaleStaff'), --5
('shipper1', 'password123', 'Shipper'),--6
('shipper2', 'password123', 'Shipper'),--7
('tom', 'password123', 'Customer'),--8
('lisa', 'password123', 'Customer'),--9
('mark', 'password123', 'Customer');--10

-- Insert sample data into Tbl_Staff
INSERT INTO Tbl_SaleStaff (StaffID, AccountID, FirstName, LastName)
VALUES 
('S001', 3, 'Alice', 'Smith'),
('S002', 5, 'Bob', 'Johnson');

INSERT INTO Tbl_Shipper(ShipperID, AccountID, FirstName, LastName)
VALUES 
('SP001', 6, 'Jack', 'Grealish'),
('SP002', 7, 'Marcus', 'Rashford');


-- Insert sample data into Tbl_Customer
INSERT INTO Tbl_Customer (AccountID, FirstName, LastName, Gender, Birthday, Email, PhoneNumber, Address, Ranking, DiscountRate, Status)
VALUES 
(1, 'John', 'Doe', 'Male', '1990-01-01', 'john.doe@example.com', '0123456789', '123 Main St', 'Silver', 5.0, 1),
(2, 'Jane', 'Doe', 'Female', '1992-02-02', 'jane.doe@example.com', '0987654321', '456 Elm St', 'Gold', 10.0, 1),
(8, 'Tom', 'Smith', 'Male', '1985-03-03', 'tom.smith@example.com', '0123456788', '789 Pine St', 'Bronze', 2.0, 1),
(9, 'Lisa', 'Brown', 'Female', '1988-04-04', 'lisa.brown@example.com', '0987654320', '101 Oak St', 'Platinum', 15.0, 1),
(10, 'Mark', 'Davis', 'Male', '1995-05-05', 'mark.davis@example.com', '0123456787', '202 Cedar St', 'Silver', 5.0, 1);

-- Insert sample data into Tbl_Membership
INSERT INTO Tbl_Membership (MinSpend, MaxSpend, DiscountRate, Ranking)
VALUES 
(0.0, 999.99, 2.0, 'Bronze'),
(1000.0, 4999.99, 5.0, 'Silver'),
(5000.0, 9999.99, 10.0, 'Gold'),
(10000.0, 19999.99, 15.0, 'Platinum'),
(20000.0, NULL, 20.0, 'Diamond');

-- Insert sample data into Tbl_Product
INSERT INTO Tbl_Product (ProductID, ProductName, ProductCode, Description, CategoryID, MaterialCost, GemCost, ProductionCost, PriceRate, ProductSize, Image, Status, UnitSizePrice)
VALUES 
('P001', 'Gold Ring', 'R001', '18k Gold Ring', 'C001', 100.0, 200.0, 50.0, 1.5, 7, 'ring1.jpg', 1, 10),
('P002', 'Silver Necklace', 'N001', 'Sterling Silver Necklace', 'C002', 50.0, 0.0, 30.0, 1.4, 18, 'necklace1.jpg', 1, 10),
('P003', 'Platinum Bracelet', 'B001', 'Platinum Bracelet', 'C003', 200.0, 0.0, 70.0, 1.6, 8, 'bracelet1.jpg', 1, 10),
('P004', 'Diamond Earrings', 'E001', 'Diamond Earrings', 'C004', 100.0, 1000.0, 80.0, 1.8, 4, 'earrings1.jpg', 1, 10),
('P005', 'Titanium Watch', 'W001', 'Titanium Watch', 'C005', 150.0, 0.0, 100.0, 1.7, 42, 'watch1.jpg', 1, 10);

-- Insert sample data into Tbl_ProductMaterial
INSERT INTO Tbl_ProductMaterial (ProductID, MaterialID, Weight)
VALUES 
('P001', 'M001', 5.0),
('P002', 'M002', 10.0),
('P003', 'M003', 8.0),
('P004', 'M004', 6.0),
('P005', 'M005', 7.0);

-- Insert sample data into Tbl_ProductGem
INSERT INTO Tbl_ProductGem (ProductID, GemID)
VALUES 
('P001', 'G001'),
('P004', 'G002');

-- Insert sample data into Tbl_Order
INSERT INTO Tbl_Order (CustomerID, OrderDate, PaymentMethod, OrderStatus, ShippingDate, ReceiveDate, StaffID, ShipperID, ShipStatus)
VALUES 
(1, '2024-05-01', 'Credit Card', 'Delivered', '2024-05-02', '2024-05-05', 'S001', 'SP001', 'Done'),
(2, '2024-05-02', 'Paypal', 'Delivered', '2024-05-03', '2024-05-06', 'S002', 'SP002', 'Done'),
(3, '2024-05-03', 'Cash on Delivery', 'Processing', NULL, NULL, 'S001', 'SP002', 'Pending'),
(4, '2024-05-04', 'Credit Card', 'Delivered', '2024-05-05', '2024-05-08', 'S002', 'SP001', 'Done'),
(5, '2024-05-05', 'Bank Transfer', 'Delivered', '2024-05-06', '2024-05-09', 'S001', 'SP002', 'Done');


-- Insert sample data into Tbl_OrderDetail
INSERT INTO Tbl_OrderDetail (OrderID, ProductID, CustomizedSize, CustomizedAmount, Quantity, TotalPrice, FinalPrice)
VALUES 
(1, 'P001', 8, 5.0, 1, 450.0, 427.5),
(2, 'P002', 18, 10.0, 2, 200.0, 180.0),
(3, 'P003', 9, 8.0, 1, 432.0, 421.0),
(4, 'P004', 4, 6.0, 1, 2160.0, 1836.0),
(5, 'P005', 42, 7.0, 1, 425.0, 382.5);

-- Insert sample data into Tbl_Payment
INSERT INTO Tbl_Payment (OrderID, CustomerID, PaymentMethod, Deposits, PayDetail)
VALUES 
(1, 'C001', 'Credit Card', 100.0, 'Paid in full'),
(2, 'C002', 'Paypal', 50.0, 'Paid in full'),
(3, 'C003', 'Cash on Delivery', 0.0, 'To be paid upon delivery'),
(4, 'C004', 'Credit Card', 100.0, 'Paid in full'),
(5, 'C005', 'Bank Transfer', 150.0, 'Paid in full');

-- Insert sample data into Tbl_Warranty
INSERT INTO Tbl_Warranty (WarrantyID, OrderDetailID, WarrantyStartDate, WarrantyEndDate)
VALUES 
('W001', 1, '2024-05-05', '2025-05-05'),
('W002', 2, '2024-05-07', '2025-05-07'),
('W003', 3, '2024-05-09', '2025-05-09'),
('W004', 4, '2024-05-11', '2025-05-11'),
('W005', 5, '2024-05-13', '2025-05-13');

-- Insert sample data into Tbl_DiamondGradingReport
INSERT INTO Tbl_DiamondGradingReport (GemID, GenerateDate, Image)
VALUES 
('G001', '2024-01-01', 'report1.jpg'),
('G002', '2024-01-02', 'report2.jpg'),
('G003', '2024-01-03', 'report3.jpg'),
('G004', '2024-01-04', 'report4.jpg'),
('G005', '2024-01-05', 'report5.jpg');

INSERT INTO Tbl_Product (ProductID, ProductName, ProductCode, Description, CategoryID, MaterialCost, GemCost, ProductionCost, PriceRate, ProductSize, Image, Status, UnitSizePrice)
VALUES 
('P006', 'High Jewellery Necklace', 'N006', 'High Jewellery Necklace', 'C002', 500.0, 1000.0, 300.0, 2.0, 18, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw47181d40/images/large/0173c18084d351718d0a9e48cbf37bf4.png?sw=350&sh=350&sm=fit&sfrm=png', 1, 10),
('P007', 'White Gold Cartier Necklace', 'N007', 'White Gold Cartier Necklace', 'C002', 400.0, 800.0, 250.0, 1.9, 18, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dwffda1a5e/images/large/a7cde65b34e85f8d81ac915d458c5f9c.png?sw=350&sh=350&sm=fit&sfrm=png', 1, 10),
('P008', 'High Jewellery Necklace', 'N008', 'High Jewellery Necklace', 'C002', 550.0, 1100.0, 320.0, 2.1, 18, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw1a70f15f/images/large/f1d14e7bda6653d094c29e0e8e0c255d.png?sw=750&sh=750&sm=fit&sfrm=png', 1, 10),
('P009', 'White Gold Cartier Necklace', 'N009', 'White Gold Cartier Necklace', 'C002', 450.0, 900.0, 270.0, 1.95, 18, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw239464bc/images/large/624964b5d1fa5b4bb3477f89a0c4ac85.png?sw=350&sh=350&sm=fit&sfrm=png', 1, 10),
('P010', 'Creative Collection Necklace', 'N010', 'Creative Collection Necklace', 'C002', 600.0, 1200.0, 350.0, 2.2, 18, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw0268880d/images/large/8adcabe099f45e909df00c8611bb72ed.png?sw=350&sh=350&sm=fit&sfrm=png', 1, 10),
('P011', 'Cactus Cartier Necklace', 'N011', 'Cactus Cartier Necklace', 'C002', 700.0, 1400.0, 400.0, 2.3, 18, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw46b1b322/images/large/acb4bede2579540ba22c8aa8772cbafa.png?sw=350&sh=350&sm=fit&sfrm=png', 1, 10),
('P012', 'Diamond Collection Necklace', 'N012', 'Diamond Collection Necklace', 'C002', 750.0, 1500.0, 420.0, 2.4, 18, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dwdaadb731/images/large/e0291a1acfd05dd4a650685bcc9bae7b.png?sw=350&sh=350&sm=fit&sfrm=png', 1, 10),
('P013', 'Essential Lines Necklace', 'N013', 'Essential Lines Necklace', 'C002', 650.0, 1300.0, 370.0, 2.25, 18, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw8912a4d8/images/large/b9e2c2997bd95191a9714fa3827b4ce8.png?sw=350&sh=350&sm=fit&sfrm=png', 1, 10),
('P014', 'High Jewellery Necklace', 'N014', 'High Jewellery Necklace', 'C002', 800.0, 1600.0, 450.0, 2.5, 18, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw7a7ff269/images/large/18c28814474f5cd8ac3f7a8ce2b77c4f.png?sw=350&sh=350&sm=fit&sfrm=png', 1, 10),
('P015', 'Pluie Cartier Necklace', 'N015', 'Pluie Cartier Necklace', 'C002', 850.0, 1700.0, 480.0, 2.55, 18, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw8306c07f/images/large/3ceae3fdcd5650a4a8d2297609e328a1.png?sw=350&sh=350&sm=fit&sfrm=png', 1, 10),
('P016', 'Rose Gold Rows', 'N016', 'Rose Gold Rows', 'C002', 900.0, 1800.0, 500.0, 2.6, 18, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw81b5d6ac/images/large/f204dae450545ef1a598dd970d2c03bd.png?sw=350&sh=350&sm=fit&sfrm=png', 1, 10),
('P017', 'High Jewellery Necklace', 'N017', 'High Jewellery Necklace', 'C002', 950.0, 1900.0, 530.0, 2.65, 18, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dwd5cc280c/images/large/1b97625136395d54b5b06a15c042c1ee.png?sw=350&sh=350&sm=fit&sfrm=png', 1, 10),
('P018', 'High Jewellery Necklace', 'N018', 'High Jewellery Necklace', 'C002', 1000.0, 2000.0, 550.0, 2.7, 18, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dwe9bcd418/images/large/53dba1afd1595a53b508412270b30e2b.png?sw=350&sh=350&sm=fit&sfrm=png', 1, 10),
('P019', 'Essential Lines Necklace', 'N019', 'Essential Lines Necklace', 'C002', 1050.0, 2100.0, 580.0, 2.75, 18, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw5f9f8a78/images/large/666f7a6d40ba57faa14e04d6c171c9d2.png?sw=350&sh=350&sm=fit&sfrm=png', 1, 10),
('P020', 'Creative Collection Necklace', 'N020', 'Creative Collection Necklace', 'C002', 1100.0, 2200.0, 600.0, 2.8, 18, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dwe9bcd418/images/large/53dba1afd1595a53b508412270b30e2b.png?sw=350&sh=350&sm=fit&sfrm=png', 1, 10),
('P021', 'Natural Necklace', 'N021', 'Natural Necklace', 'C002', 1150.0, 2300.0, 620.0, 2.85, 18, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw5d4cf56c/images/large/0ba43057d9665138b65bb0d9089d0228.png?sw=350&sh=350&sm=fit&sfrm=png', 1, 10),
('P022', 'White Gold Cartier Necklace', 'N022', 'White Gold Cartier Necklace', 'C002', 1200.0, 2400.0, 650.0, 2.9, 18, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw0268880d/images/large/8adcabe099f45e909df00c8611bb72ed.png?sw=350&sh=350&sm=fit&sfrm=png', 1, 10),
('P023', 'High Jewellery Necklace', 'N023', 'High Jewellery Necklace', 'C002', 1250.0, 2500.0, 680.0, 2.95, 18, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw85bb1d04/images/large/533c17a7178e507d88f2510e3edd8405.png?sw=350&sh=350&sm=fit&sfrm=png', 1, 10),
('P024', 'Cactus Cartier Necklace', 'N024', 'Cactus Cartier Necklace', 'C002', 1300.0, 2600.0, 700.0, 3.0, 18, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dwe0c53b15/images/large/38c830fdb5cd5eca93a643a7bd162a1c.png?sw=350&sh=350&sm=fit&sfrm=png', 1, 10);


INSERT INTO Tbl_Product (ProductID, ProductName, ProductCode, Description, CategoryID, MaterialCost, GemCost, ProductionCost, PriceRate, ProductSize, Image, Status, UnitSizePrice)
VALUES 
('P025', 'Yellow Gold Bracelet', 'B002', 'Yellow Gold Bracelet', 'C003', 300.0, 0.0, 100.0, 1.5, 7, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw066a394e/images/large/c694697eb0fe59438264df232a5bb04c.png?sw=350&sh=350&sm=fit&sfrm=png', 1, 10),
('P026', 'Love Bracelet, Brushed Finish', 'B003', 'Love Bracelet, Brushed Finish', 'C003', 320.0, 0.0, 105.0, 1.6, 7, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dwcba2aabd/images/large/ce38e7d247cc55f696b9aad467fed8bb.png?sw=350&sh=350&sm=fit&sfrm=png', 1, 10),
('P027', 'White Gold Bracelet', 'B004', 'White Gold Bracelet', 'C003', 340.0, 0.0, 110.0, 1.7, 7, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dwf0b8de1c/images/large/50ebc21a2ed6517eb65b42da4bcad436.png?sw=350&sh=350&sm=fit&sfrm=png', 1, 10),
('P028', 'Trinity Bracelet', 'B005', 'Trinity Bracelet', 'C003', 360.0, 0.0, 115.0, 1.8, 7, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw20a31872/images/large/296992162cb055bd8a164ac42d09729e.png?sw=350&sh=350&sm=fit&sfrm=png', 1, 10),
('P029', 'Cartier of Love Amour Bracelet', 'B006', 'Cartier of Love Amour Bracelet', 'C003', 380.0, 0.0, 120.0, 1.9, 7, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dwcf0f0aab/images/large/3a2e8f9894305450b15cae24932aeb5a.png?sw=350&sh=350&sm=fit&sfrm=png', 1, 10),
('P030', 'Cartier of Love Amour Bracelet XS', 'B007', 'Cartier of Love Amour Bracelet XS', 'C003', 400.0, 0.0, 125.0, 2.0, 7, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dwfcbfa97c/images/large/1a3d09bb6e115a80bee1408881f8fc46.png?sw=350&sh=350&sm=fit&sfrm=png', 1, 10),
('P031', 'Cartier of Love Amour Bracelet L', 'B008', 'Cartier of Love Amour Bracelet L', 'C003', 420.0, 0.0, 130.0, 2.1, 7, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dwb2cf45ba/images/large/067147ce0a9050729f1d2d668860707c.png?sw=350&sh=350&sm=fit&sfrm=png', 1, 10),
('P032', 'Love Bracelet', 'B009', 'Love Bracelet', 'C003', 440.0, 0.0, 135.0, 2.2, 7, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw56b361e4/images/large/7588be8cc38f5afe98eb6fbd549128c6.png?sw=350&sh=350&sm=fit&sfrm=png', 1, 10),
('P033', 'Panthere Cartier Bracelet', 'B010', 'Panthere Cartier Bracelet', 'C003', 460.0, 0.0, 140.0, 2.3, 7, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw6fd07710/images/large/9c231fd015b257c2be89e78216ed958f.png?sw=350&sh=350&sm=fit&sfrm=png', 1, 10),
('P034', 'Clash Cartier Bracelet', 'B011', 'Clash Cartier Bracelet', 'C003', 480.0, 0.0, 145.0, 2.4, 7, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw415b9290/images/large/19c1bd747ae350358c95d6bb9ce29ee2.png?sw=350&sh=350&sm=fit&sfrm=png', 1, 10),
('P035', 'Love Bracelet', 'B012', 'Love Bracelet', 'C003', 500.0, 0.0, 150.0, 2.5, 7, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw8380f03d/images/large/0d5c7536c1355250a837ff6f105854ba.png?sw=350&sh=350&sm=fit&sfrm=png', 1, 10),
('P036', 'Rose Gold Bracelet', 'B013', 'Rose Gold Bracelet', 'C003', 520.0, 0.0, 155.0, 2.6, 7, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw5c102b5f/images/large/d0ea4f64c1e95d8caf0c7c822031bd95.png?sw=350&sh=350&sm=fit&sfrm=png', 1, 10),
('P037', 'Essential Lines Bracelet', 'B014', 'Essential Lines Bracelet', 'C003', 540.0, 0.0, 160.0, 2.7, 7, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw29b76f55/images/large/1ff3bcfd19d5593f8f47590669099f3b.png?sw=350&sh=350&sm=fit&sfrm=png', 1, 10),
('P038', 'Trinity Bracelet', 'B015', 'Trinity Bracelet', 'C003', 560.0, 0.0, 165.0, 2.8, 7, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw2d2d994e/images/large/c4d9d7ffeda25cc68600b3749a58fbe8.png?sw=350&sh=350&sm=fit&sfrm=png', 1, 10),
('P039', 'White Gold Bracelet', 'B016', 'White Gold Bracelet', 'C003', 580.0, 0.0, 170.0, 2.9, 7, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw4fa4af11/images/large/65442a6e13885ba09bfe68c572935734.png?sw=350&sh=350&sm=fit&sfrm=png', 1, 10),
('P040', 'Trinity Extra L Bracelet', 'B017', 'Trinity Extra L Bracelet', 'C003', 600.0, 0.0, 175.0, 3.0, 7, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw372eebb6/images/large/b306cb3932c450349ee98e0e3', 1, 10);
INSERT INTO Tbl_Product (ProductID, ProductName, ProductCode, Description, CategoryID, MaterialCost, GemCost, ProductionCost, PriceRate, ProductSize, Image, Status)
VALUES
('P041', 'LOVE EARINGS', 'E001', 'LOVE EARINGS', 'C004', 100.0, 0.0, 50.0, 1.5, 4, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw9de442d2/images/large/e97f27c9b22755a997b558374c202ae7.png?sw=350&sh=350&sm=fit&sfrm=png', 1),
('P042', 'LOVE SINGLE EARING', 'E002', 'LOVE SINGLE EARING', 'C004', 80.0, 0.0, 40.0, 1.4, 2, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw890932a7/images/large/53bc8587ab985f3289842ce088948bff.png?sw=350&sh=350&sm=fit&sfrm=png', 1),
('P043', 'ROSE GOLD LOVE EARINGS', 'E003', 'ROSE GOLD LOVE EARINGS', 'C004', 120.0, 0.0, 60.0, 1.6, 4, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dwd6e04d21/images/large/b1d93c9e6eec5057a6f876214ba156be.png?sw=350&sh=350&sm=fit&sfrm=png', 1),
('P044', 'YELLOW GOLD LOVE EARINGS', 'E004', 'YELLOW GOLD LOVE EARINGS', 'C004', 110.0, 0.0, 55.0, 1.5, 4, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw9aeeae8e/images/large/d23ba87205a0518ab35a72586cb4d9c0.png?sw=350&sh=350&sm=fit&sfrm=png', 1),
('P045', 'CARTIER OF LOVE EARINGS XS', 'E005', 'CARTIER OF LOVE EARINGS XS', 'C004', 90.0, 0.0, 45.0, 1.4, 2, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dwde84f3f3/images/large/e3296e25e12557c58b29a83618ae91ab.png?sw=350&sh=350&sm=fit&sfrm=png', 1),
('P046', 'CARIER OF LOVE EARINGS', 'E006', 'CARIER OF LOVE EARINGS', 'C004', 100.0, 0.0, 50.0, 1.5, 4, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw5ad07a20/images/large/9ede5fdaa4ed5828b2add5fb6c28e333.png?sw=350&sh=350&sm=fit&sfrm=png', 1),
('P047', 'YELLOW GOLD LOVE EARINGS', 'E007', 'YELLOW GOLD LOVE EARINGS', 'C004', 110.0, 0.0, 55.0, 1.5, 4, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw448be5b3/images/large/f89bb062f6c95cb6890306ddd0fea5a1.png?sw=350&sh=350&sm=fit&sfrm=png', 1),
('P048', 'ETINCELLE CARTIER EARINGS', 'E008', 'ETINCELLE CARTIER EARINGS', 'C004', 130.0, 200.0, 65.0, 1.7, 4, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw76a61518/images/large/70756db2ce515f4bcc158ee8b38a6a9.png?sw=350&sh=350&sm=fit&sfrm=png', 1),
('P049', 'JUSTE UN CLOU EARRINGS', 'E009', 'JUSTE UN CLOU EARRINGS', 'C004', 150.0, 0.0, 75.0, 1.6, 4, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw4ddff1f2/images/large/ee61383c3ae753a1aa818da18239b489.png?sw=350&sh=350&sm=fit&sfrm=png', 1),
('P050', 'LOVE SINGLE EARINGS', 'E010', 'LOVE SINGLE EARINGS', 'C004', 80.0, 0.0, 40.0, 1.4, 2, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw3427ce18/images/large/7c38c5535df55cd8a163993c08722be8.png?sw=350&sh=350&sm=fit&sfrm=png', 1),
('P051', 'CARTIER D''AMOUR EARINGS', 'E011', 'CARTIER D''AMOUR EARINGS', 'C004', 120.0, 0.0, 60.0, 1.6, 4, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw98465cd8/images/large/41a246cd665f531db097f9f89323a341.png?sw=350&sh=350&sm=fit&sfrm=png', 1),
('P052', 'CLASH DE CARTIER EARRINGS SMALL MODEL', 'E012', 'CLASH DE CARTIER EARRINGS SMALL MODEL', 'C004', 170.0, 0.0, 85.0, 1.7, 3, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw1c95e576/images/large/9b91716d746953dea61f7c7d7cbb9861.png?sw=350&sh=350&sm=fit&sfrm=png', 1),
('P053', 'JUSTE UN CLOU EARRINGS', 'E013', 'JUSTE UN CLOU EARRINGS', 'C004', 150.0, 0.0, 75.0, 1.6, 4, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw621d9c33/images/large/2986e697ea135269b46a36cf01adb876.png?sw=350&sh=350&sm=fit&sfrm=png', 1),
('P054', 'LOVE SINGLE EARING', 'E014', 'LOVE SINGLE EARING', 'C004', 80.0, 0.0, 40.0, 1.4, 2, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw032e3a5c/images/large/19177f49973d5236af09b0782b492bd0.png?sw=350&sh=350&sm=fit&sfrm=png', 1),
('P055', 'ETINCELLE DE CARTIER EARRINGS', 'E015', 'ETINCELLE DE CARTIER EARRINGS', 'C004', 130.0, 200.0, 65.0, 1.7, 4, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dwed2b6918/images/large/0027d0e4f9b45938b578e767e9d0d67e.png?sw=350&sh=350&sm=fit&sfrm=png', 1),
('P056', 'JUSTE UN CLOU EARRINGS', 'E016', 'JUSTE UN CLOU EARRINGS', 'C004', 150.0, 0.0, 75.0, 1.6, 4, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dwe95f037c/images/large/21b86e0a57e35ec68dd66e56c5125ec2.png?sw=350&sh=350&sm=fit&sfrm=png', 1),
('P057', 'TRINITY EARINGS', 'E017', 'TRINITY EARINGS', 'C004', 180.0, 0.0, 90.0, 1.8, 4, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dwe7b6621b/images/large/84166e4cc8655859bf60bce0ad35dd57.png?sw=350&sh=350&sm=fit&sfrm=png', 1),
('P058', 'CLASH DE CARTIER EARINGS', 'E018', 'CLASH DE CARTIER EARINGS', 'C004', 200.0, 0.0, 100.0, 1.9, 4, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw981cbaa2/images/large/4234fc61a5f252da93c11df7d0cf8645.png?sw=350&sh=350&sm=fit&sfrm=png', 1),
('P059', 'C DE CARTIER EARINGS', 'E019', 'C DE CARTIER EARINGS', 'C004', 160.0, 0.0, 80.0, 1.7, 3, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw6a5d4eda/images/large/2e4d9ce2e418521983a1ac9d6becf3e6.png?sw=350&sh=350&sm=fit&sfrm=png', 1),
('P060', 'CARTIER DE AMOUR EARINGS', 'E020', 'CARTIER DE AMOUR EARINGS', 'C004', 120.0, 0.0, 60.0, 1.6, 4, 'https://www.cartier.com/dw/image/v2/BGTJ_PRD/on/demandware.static/-/Sites-cartier-master/default/dw2cd28779/images/large/983b93c35a2c55c7a75c1db5acbd1363.png?sw=350&sh=350&sm=fit&sfrm=png', 1);
