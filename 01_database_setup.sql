CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    City VARCHAR(50)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    Amount DECIMAL(10,2),
    Status VARCHAR(20),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);

CREATE TABLE OrderDetails (
    OrderID INT,
    ProductID INT,
    Quantity INT,
    PRIMARY KEY (OrderID, ProductID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
INSERT INTO Customers VALUES
(1,'Rahul','Mumbai'),
(2,'Anu','Delhi'),
(3,'Arjun','Bangalore'),
(4,'Priya','Chennai'),
(5,'Vivek','Mumbai'),
(6,'Neha','Delhi'),
(7,'Rohan','Pune'),
(8,'Sneha','Bangalore');
INSERT INTO Orders VALUES
(101,1,'2026-01-05',25000,'Completed'),
(102,2,'2026-01-08',18000,'Completed'),
(103,3,'2026-01-12',42000,'Completed'),
(104,1,'2026-01-15',30000,'Completed'),
(105,4,'2026-01-18',15000,'Cancelled'),
(106,5,'2026-01-20',55000,'Completed'),
(107,2,'2026-01-22',12000,'Completed'),
(108,6,'2026-01-25',35000,'Completed'),
(109,7,'2026-02-02',48000,'Completed'),
(110,8,'2026-02-05',22000,'Cancelled'),
(111,3,'2026-02-08',28000,'Completed'),
(112,5,'2026-02-10',32000,'Completed'),
(113,4,'2026-02-15',27000,'Completed'),
(114,6,'2026-02-18',19000,'Completed'),
(115,7,'2026-02-20',15000,'Completed');
INSERT INTO Products VALUES
(1,'Laptop','Electronics',60000),
(2,'Phone','Electronics',30000),
(3,'Headphones','Accessories',5000),
(4,'Keyboard','Accessories',3000),
(5,'Monitor','Electronics',18000),
(6,'Chair','Furniture',12000),
(7,'Desk','Furniture',20000),
(8,'Mouse','Accessories',2000);
INSERT INTO OrderDetails VALUES
(101,1,1),
(101,3,2),
(102,2,1),
(103,5,2),
(104,1,1),
(104,8,2),
(105,6,1),
(106,1,1),
(107,4,2),
(108,7,1),
(109,2,1),
(109,3,2),
(110,6,1),
(111,5,1),
(112,1,1),
(113,7,1),
(114,2,1),
(115,4,3);
