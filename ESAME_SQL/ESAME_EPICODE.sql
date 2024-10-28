CREATE DATABASE ESAME;


CREATE TABLE Product (
ProductID VARCHAR(3)
, ProductName VARCHAR (30)
, CategoryID VARCHAR (3)
);

ALTER TABLE Product 
ADD CONSTRAINT PK_PoductID PRIMARY KEY (ProductID);
ALTER TABLE Product
ADD CONSTRAINT FK_CategoryID FOREIGN KEY (CategoryID) REFERENCES Category (CategoryID);


INSERT INTO Product VALUES 
 ('P1', 'Teddy Bear', 'C1'),
    ('P2', 'Toy Car', 'C2'),
    ('P3', 'Lego Set', 'C3'),
    ('P4', 'Doll House', 'C4'),
    ('P5', 'Puzzle 1000 Pieces', 'C5'),
    ('P6', 'Robot Dino', 'C6'),
    ('P7', 'Remote Control Car', 'C7'),
    ('P8', 'Building Blocks', 'C8'),
    ('P9', 'Plush Elephant', 'C9'),
    ('P10', 'Magic Kit', 'C10'),
    ('P11', 'Train Set', 'C11'),
    ('P12', 'Kite', 'C12'),
    ('P13', 'Board Game', 'C13'),
    ('P14', 'Water Gun', 'C14'),
    ('P15', 'Action Figure', 'C15'),
    ('P16', 'Mini Kitchen Set', 'C16'),
    ('P17', 'Play Dough Set', 'C17'),
    ('P18', 'Toy Drum', 'C18'),
    ('P19', 'Basketball Hoop Set', 'C19'),
    ('P20', 'Stuffed Unicorn', 'C20'),
    ('P21', 'Science Experiment Kit', 'C21'),
    ('P22', 'Race Track Set', 'C22'),
    ('P23', 'Musical Keyboard', 'C23'),
    ('P24', 'Soccer Ball', 'C24'),
    ('P25', 'Foam Sword', 'C25'),
    ('P26', 'Binoculars', 'C26'),
    ('P27', 'Doctor Play Set', 'C27'),
    ('P28', 'Magic Wand', 'C28'),
    ('P29', 'Coloring Book', 'C29'),
    ('P30', 'Crayons Pack', 'C30');

CREATE TABLE Category (
CategoryID  VARCHAR(3)
, CategoryName VARCHAR (30)
, ProductID VARCHAR(3)
);

ALTER TABLE Category 
ADD CONSTRAINT PK_CategoryID PRIMARY KEY (CategoryID);
ALTER TABLE Category 
ADD CONSTRAINT FK_ProductID FOREIGN KEY (ProductID) REFERENCES Product (ProductID);


INSERT INTO Category (CategoryID, CategoryName, ProductID) VALUES
    ("C1", 'Stuffed Animals', 'P1'),
    ("C2", 'Vehicles', 'P2'),
    ("C3", 'Building Sets', 'P3'),
    ("C4", 'Dollhouses', 'P4'),
    ("C5", 'Puzzles', 'P5'),
    ("C6", 'Robotics', 'P6'),
    ("C7", 'Remote Control Toys', 'P7'),
    ("C8", 'Blocks', 'P8'),
    ("C9", 'Plush Toys', 'P9'),
    ("C10", 'Magic Toys', 'P10'),
    ("C11", 'Train Sets', 'P11'),
    ("C12", 'Outdoor Toys', 'P12'),
    ("C13", 'Board Games', 'P13'),
    ("C14", 'Water Toys', 'P14'),
    ("C15", 'Action Figures', 'P15'),
    ("C16", 'Role Play Sets', 'P16'),
    ("C17", 'Craft Kits', 'P17'),
    ("C18", 'Musical Toys', 'P18'),
    ("C19", 'Sports Toys', 'P19'),
    ("C20", 'Fantasy Animals', 'P20'),
    ("C21", 'Educational Kits', 'P21'),
    ("C22", 'Race Sets', 'P22'),
    ("C23", 'Musical Instruments', 'P23'),
    ("C24", 'Sports Equipment', 'P24'),
    ("C25", 'Toy Weapons', 'P25'),
    ("C26", 'Adventure Gear', 'P26'),
    ("C27", 'Medical Play', 'P27'),
    ("C28", 'Magic Props', 'P28'),
    ("C29", 'Art Supplies', 'P29'),
    ("C30", 'Drawing Tools', 'P30');
    
    
CREATE TABLE Sales (
SalesID VARCHAR (3)
, ProductID VARCHAR (3)
, RegionID VARCHAR (2)
, Date DATE 
, Quantity INT 
, SalesAmount DECIMAL (10,2)
); 

ALTER TABLE Sales  
ADD CONSTRAINT PK_SalesId PRIMARY KEY (SalesID); 
 ALTER TABLE sales 
 ADD CONSTRAINT FK_ProductID2 FOREIGN KEY (ProductID)  REFERENCES Product (ProductID); 
 ALTER TABLE Sales 
 ADD CONSTRAINT FK_RegionID FOREIGN KEY (RegionID) REFERENCES Region (RegionID);

INSERT INTO Sales (SalesID, ProductID, RegionID, Date, Quantity, SalesAmount) VALUES
('S1', 'P1', 'R1', '2024-01-15', 10, 250.00),   
('S2', 'P2', 'R2', '2024-01-16', 5, 125.50),     
('S3', 'P3', 'R3', '2024-01-17', 8, 300.00),     
('S4', 'P4', 'R4', '2024-01-18', 15, 375.00),    
('S5', 'P5', 'R5', '2024-01-19', 20, 500.00),    
('S6', 'P6', 'R6', '2024-01-20', 12, 600.00),    
('S7', 'P7', 'R7', '2024-01-21', 7, 210.00),     
('S8', 'P8', 'R8', '2024-01-22', 10, 250.00),  
('S9', 'P9', 'R9', '2024-01-23', 6, 150.00),     
('S10', 'P10', 'R10', '2024-01-24', 5, 125.00),  
('S11', 'P11', 'R1', '2024-02-01', 4, 100.00),   
('S12', 'P12', 'R2', '2024-02-02', 9, 180.00),
('S13', 'P13', 'R3', '2024-02-03', 3, 90.00),    
('S14', 'P14', 'R4', '2024-02-04', 8, 200.00),    
('S15', 'P15', 'R5', '2024-02-05', 6, 150.00),   
('S16', 'P16', 'R6', '2024-02-06', 5, 130.00),   
('S17', 'P17', 'R7', '2024-02-07', 12, 300.00),    
('S18', 'P18', 'R8', '2024-02-08', 7, 175.00),    
('S19', 'P19', 'R9', '2024-02-09', 10, 250.00),    
('S20', 'P20', 'R10', '2024-02-10', 4, 100.00),    
('S21', 'P21', 'R1', '2024-02-11', 6, 150.00),    
('S22', 'P22', 'R2', '2024-02-12', 9, 225.00),   
('S23', 'P23', 'R3', '2024-02-13', 5, 130.00),   
('S24', 'P24', 'R4', '2024-02-14', 12, 300.00),    
('S25', 'P25', 'R5', '2024-02-15', 8, 200.00),    
('S26', 'P26', 'R6', '2024-02-16', 7, 175.00),    
('S27', 'P27', 'R7', '2024-02-17', 3, 75.00),    
('S28', 'P28', 'R8', '2024-02-18', 4, 100.00),   
('S29', 'P29', 'R9', '2024-02-19', 10, 250.00),   
('S30', 'P30', 'R10', '2024-02-20', 5, 125.00);    

CREATE TABLE  Region (
RegionID VARCHAR (3)
, RegionName VARCHAR (30)
, StateID VARCHAR (4)
);

ALTER TABLE Region
ADD CONSTRAINT PK_RegionID PRIMARY KEY (RegionID);
ALTER TABLE Region 
ADD CONSTRAINT FK_StateID FOREIGN KEY (StateID) REFERENCES State (StateId);

INSERT INTO Region (RegionID, RegionName, StateID) VALUES
('R1', 'Africa', 'ST1'),                
('R2', 'Asia', 'ST6'),                  
('R3', 'Europe', 'ST11'),               
('R4', 'North America', 'ST16'),        
('R5', 'South America', 'ST21'),       
('R6', 'Australia', 'ST25'),            
('R7', 'Antarctica', 'ST15'),          
('R8', 'Middle East', 'ST28'),          
('R9', 'Southeast Asia', 'ST7'),        
('R10', 'Caribbean', 'ST19');


CREATE TABLE State (
StateID VARCHAR (4)
, StateName VARCHAR (30)
, RegionID VARCHAR (3)
);

ALTER TABLE State 
ADD CONSTRAINT PK_StateID PRIMARY KEY (StateID);
ALTER TABLE State 
ADD CONSTRAINT FK_RegionID2 FOREIGN KEY (RegionID) REFERENCES Region (RegionID); 

INSERT INTO State (StateID, StateName, RegionID) VALUES
('ST1', 'Algeria', 'R1'),              
('ST2', 'Nigeria', 'R1'),               
('ST3', 'Kenya', 'R1'),                 
('ST4', 'Egypt', 'R1'),                 
('ST5', 'South Africa', 'R1'),         
('ST6', 'China', 'R2'),                 
('ST7', 'India', 'R2'),                
('ST8', 'Japan', 'R2'),               
('ST9', 'South Korea', 'R2'),           
('ST10', 'Thailand', 'R2'),             
('ST11', 'Germany', 'R3'),              
('ST12', 'France', 'R3'),               
('ST13', 'Italy', 'R3'),               
('ST14', 'Spain', 'R3'),                
('ST15', 'Netherlands', 'R3'),         
('ST16', 'USA', 'R4'),                  
('ST17', 'Canada', 'R4'),              
('ST18', 'Mexico', 'R4'),             
('ST19', 'Cuba', 'R10'),                 
('ST20', 'Dominican Republic', 'R10'),  
('ST21', 'Brazil', 'R5'),               
('ST22', 'Argentina', 'R5'),           
('ST23', 'Colombia', 'R5'),             
('ST24', 'Chile', 'R5'),               
('ST25', 'Australia', 'R6'),            
('ST26', 'New Zealand', 'R6'),        
('ST27', 'Fiji', 'R6'),                 
('ST28', 'Saudi Arabia', 'R8'),         
('ST29', 'Iran', 'R8'),                 
('ST30', 'United Arab Emirates', 'R8');  

-- Task 4
-- 1) 
SELECT ProductID
FROM Product;
SELECT DISTINCT ProductID
FROM Product;

SELECT RegionID 
FROM Region;
SELECT DISTINCT RegionID
FROM Region;

SELECT SalesID
FROM Sales;
SELECT DISTINCT SalesID
FROM Sales;

SELECT StateID
FROM State; 
SELECT DISTINCT StateID
FROM State;

SELECT  Categoryid 
FROM Category; 
SELECT DISTINCT CategoryID
FROM Category; 

-- 2) 
SELECT 
p.ProductID AS "ProductCode"
, s.Date 
, p.ProductName 
, c.CategoryName
, st.StateName
, r.RegionName
, CASE 
WHEN DATEDIFF (CURRENT_DATE, Date ) >180 THEN TRUE
ELSE FALSE
END AS "SalesDate>180"
FROM Sales AS s
INNER JOIN 
Product p ON s.ProductID = p.ProductID
INNER JOIN 
    Category c ON p.Categoryid = c.Categoryid
INNER JOIN 
    Region r ON s.Regionid = r.Regionid
INNER JOIN  
    State st ON r.StateID = st.StateID;
    
    -- 3) 
    SELECT 
    p.ProductID
    , p.ProductName 
    , SUM(s.SalesAmount) AS "TotalSales"
    FROM 
    Sales s
    INNER JOIN 
    Product p ON p.ProductID = s.ProductID
    GROUP BY 
    p.ProductID
    , p.ProductName;
    
    
-- 4)
SELECT 
p.ProductID
, p.ProductName 
, EXTRACT(YEAR FROM s.Date) AS "Year"
,SUM(s.SalesAmount) AS "AnnualTurnover"
FROM 
Product p
INNER JOIN 
Sales s ON p.ProductID = s.ProductID
GROUP BY 
p.ProductID
, p.ProductName
, EXTRACT(YEAR FROM s.Date);

-- 5)
SELECT 
 st.StateName 
, EXTRACT(YEAR FROM s.Date) AS "Year"
, SUM(s.SalesAmount) AS "AnnualTurnover"
FROM 
Region r 
INNER JOIN
Sales s ON r.RegionID = s.RegionID
INNER JOIN 
State st ON r.StateID = st.StateID 
GROUP BY 
st.StateName
, EXTRACT(YEAR FROM s.Date)
ORDER BY 
 Year,
 AnnualTurnover DESC;

-- 6) 
SELECT 
c.CategoryName 
, SUM(s.Quantity) "TotalQuantity"
FROM
Category c  
INNER JOIN 
Product p ON c.ProductID = p.ProductID
INNER JOIN 
Sales s ON s.ProductID = p.ProductID
GROUP BY 
c.CategoryName 
ORDER BY
 TotalQuantity DESC;
 
 /* 
 Le categorie mggiormente vendute sono Puzzles, Dollhouses e Craft Kits
 */
 
 -- 7)
 SELECT 
 p.ProductID
 , p.ProductName 
 FROM 
 Product p
 LEFT JOIN 
 Sales s ON s.ProductID = p.ProductID
 WHERE 
 p.ProductID IS NULL;
 
 /* 
 In questo primo apporccio usiamo la LEFT JOIN così abbiamo tutte le corrispondenze della tabella product, inclusi quelli che non trovano corrispondenza nella tabella sales. 
 Se un prodotto non è stato venduto, il left join lascerà NULL nei campi della tabella vendite, così da identificarlo velocemente 
 */
 
 SELECT 
 p.ProductID 
 , p.ProductName 
 FROM 
 Product p 
 WHERE 
 p.ProductID NOT IN (SELECT s.ProductID FROM Sales s);

/* 
In questo  caso usiamo  un subquery per selezionare l'elenco di ProductID che si trovano all'interno della tabella Sales e poi cerchiamo il ProductID della tabell tabella 
Product che non ci sono
*/

-- 8)
CREATE VIEW Versione_Denormalizzata AS
SELECT 
p.ProductID AS ProductCode
, p.ProductName 
, c.CategoryName 
FROM Product p  
INNER JOIN 
Category c ON p.Categoryid = c.CategoryID;

-- 9)
CREATE VIEW Geographic_Info AS 
SELECT
st.StateName 
, r.RegionName 
, COUNT(s.SalesID) AS Quantity 
, SUM(s.SalesAmount) AS TotalAmount
FROM 
Sales s 
INNER JOIN 
Region r ON s.RegionID = r.RegionID
INNER JOIN 
State st ON r.StateID = st.StateID
GROUP BY 
r.RegionName 
, st.StateName
ORDER BY 
r.RegionName 
, st.StateName  
