SELECT *
FROM EMPLOYEE;



--PRIMARY KEY CAN BE COMBINATION OF TWO OR THREE COLUMNS
CREATE TABLE SALES(
 ORDER_ID NUMBER(5) NOT NULL,
 ORDER_DATE DATE,
 CUSTOMER_ID NUMBER,
 PRODUCT_ID VARCHAR2(10),
 SALES NUMBER(10,2),
 PROFIT NUMBER(8) CHECK(PROFIT>100),
CONSTRAINT PKEY PRIMARY KEY (ORDER_ID,PRODUCT_ID) 
);

SELECT *
FROM SALES;

DROP TABLE SALES;

--CREATING A SALES TABLE WHICH HAVE 
--SINGLE PRIMARY KEY
CREATE TABLE  SALES(
 ORDER_ID NUMBER(5) NOT NULL,
 ORDER_DATE DATE,
 CUSTOMER_ID NUMBER,
 PRODUCT_ID VARCHAR2(10),
 PROFIT NUMBER(8) CHECK(PROFIT>100),
CONSTRAINT PKEY PRIMARY KEY(ORDER_ID) 
--FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER (CUSTOMER_ID) ON DELETE CASCADE 
);

ALTER TABLE SALES
ADD FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER(CUSTOMER_ID) ON DELETE CASCADE;

--INSERTING ROWS IN SALES TABLE
-- Example 1
INSERT INTO SALES (ORDER_ID, ORDER_DATE, CUSTOMER_ID, PRODUCT_ID, PROFIT) VALUES (1, TO_DATE('2024-02-01', 'YYYY-MM-DD'), 1, 'P001', 150.50);

-- Example 2
INSERT INTO SALES (ORDER_ID, ORDER_DATE, CUSTOMER_ID, PRODUCT_ID, PROFIT) VALUES (2, TO_DATE('2024-02-02', 'YYYY-MM-DD'), 2, 'P002', 200.00);

-- Example 3
INSERT INTO SALES (ORDER_ID, ORDER_DATE, CUSTOMER_ID, PRODUCT_ID, PROFIT) VALUES (3, TO_DATE('2024-02-03', 'YYYY-MM-DD'), 3, 'P003', 120.75);

-- Example 4
INSERT INTO SALES (ORDER_ID, ORDER_DATE, CUSTOMER_ID, PRODUCT_ID, PROFIT) VALUES (4, TO_DATE('2024-02-04', 'YYYY-MM-DD'), 4, 'P004', 180.25);

-- Example 5
INSERT INTO SALES (ORDER_ID, ORDER_DATE, CUSTOMER_ID, PRODUCT_ID, PROFIT) VALUES (5, TO_DATE('2024-02-05', 'YYYY-MM-DD'), 5, 'P005', 250.00);

-- Example 6
INSERT INTO SALES (ORDER_ID, ORDER_DATE, CUSTOMER_ID, PRODUCT_ID, PROFIT) VALUES (6, TO_DATE('2024-02-06', 'YYYY-MM-DD'), 6, 'P006', 130.50);

-- Example 7
INSERT INTO SALES (ORDER_ID, ORDER_DATE, CUSTOMER_ID, PRODUCT_ID, PROFIT) VALUES (7, TO_DATE('2024-02-07', 'YYYY-MM-DD'), 7, 'P007', 300.00);

-- Example 8
INSERT INTO SALES (ORDER_ID, ORDER_DATE, CUSTOMER_ID, PRODUCT_ID, PROFIT) VALUES (8, TO_DATE('2024-02-08', 'YYYY-MM-DD'), 8, 'P008', 180.75);

-- Example 9
INSERT INTO SALES (ORDER_ID, ORDER_DATE, CUSTOMER_ID, PRODUCT_ID, PROFIT) VALUES (9, TO_DATE('2024-02-09', 'YYYY-MM-DD'), 9, 'P009', 220.25);

-- Example 10
INSERT INTO SALES (ORDER_ID, ORDER_DATE, CUSTOMER_ID, PRODUCT_ID, PROFIT) VALUES (10, TO_DATE('2024-02-10', 'YYYY-MM-DD'), 10, 'P010', 120.00);

-- Example 11
INSERT INTO SALES (ORDER_ID, ORDER_DATE, CUSTOMER_ID, PRODUCT_ID, PROFIT) VALUES (11, TO_DATE('2024-02-11', 'YYYY-MM-DD'), 11, 'P011', 150.75);

-- Example 12
INSERT INTO SALES (ORDER_ID, ORDER_DATE, CUSTOMER_ID, PRODUCT_ID, PROFIT) VALUES (12, TO_DATE('2024-02-12', 'YYYY-MM-DD'), 12, 'P012', 190.50);

-- Example 13
INSERT INTO SALES (ORDER_ID, ORDER_DATE, CUSTOMER_ID, PRODUCT_ID, PROFIT) VALUES (13, TO_DATE('2024-02-13', 'YYYY-MM-DD'), 13, 'P013', 140.25);

-- Example 14
INSERT INTO SALES (ORDER_ID, ORDER_DATE, CUSTOMER_ID, PRODUCT_ID, PROFIT) VALUES (14, TO_DATE('2024-02-14', 'YYYY-MM-DD'), 14, 'P014', 280.00);

-- Example 15
INSERT INTO SALES (ORDER_ID, ORDER_DATE, CUSTOMER_ID, PRODUCT_ID, PROFIT) VALUES (15, TO_DATE('2024-02-15', 'YYYY-MM-DD'), 15, 'P015', 160.75);

-- Example 16
INSERT INTO SALES (ORDER_ID, ORDER_DATE, CUSTOMER_ID, PRODUCT_ID, PROFIT) VALUES (16, TO_DATE('2024-02-16', 'YYYY-MM-DD'), 16, 'P016', 210.25);

-- Example 17
INSERT INTO SALES (ORDER_ID, ORDER_DATE, CUSTOMER_ID, PRODUCT_ID, PROFIT) VALUES (17, TO_DATE('2024-02-17', 'YYYY-MM-DD'), 17, 'P017', 130.00);

-- Example 18
INSERT INTO SALES (ORDER_ID, ORDER_DATE, CUSTOMER_ID, PRODUCT_ID, PROFIT) VALUES (18, TO_DATE('2024-02-18', 'YYYY-MM-DD'), 18, 'P018', 160.75);

-- Example 19
INSERT INTO SALES (ORDER_ID, ORDER_DATE, CUSTOMER_ID, PRODUCT_ID, PROFIT) VALUES (19, TO_DATE('2024-02-19', 'YYYY-MM-DD'), 19, 'P019', 180.25);

-- Example 20
INSERT INTO SALES (ORDER_ID, ORDER_DATE, CUSTOMER_ID, PRODUCT_ID, PROFIT) VALUES (20, TO_DATE('2024-02-20', 'YYYY-MM-DD'), 20, 'P020', 220.00);

-- Example 21
INSERT INTO SALES (ORDER_ID, ORDER_DATE, CUSTOMER_ID, PRODUCT_ID, PROFIT) VALUES (21, TO_DATE('2024-02-21', 'YYYY-MM-DD'), 21, 'P021', 190.50);

-- Example 22
INSERT INTO SALES (ORDER_ID, ORDER_DATE, CUSTOMER_ID, PRODUCT_ID, PROFIT) VALUES (22, TO_DATE('2024-02-22', 'YYYY-MM-DD'), 22, 'P022', 240.25);

-- Example 23
INSERT INTO SALES (ORDER_ID, ORDER_DATE, CUSTOMER_ID, PRODUCT_ID, PROFIT) VALUES (23, TO_DATE('2024-02-23', 'YYYY-MM-DD'), 23, 'P023', 170.00);

-- Example 24
INSERT INTO SALES (ORDER_ID, ORDER_DATE, CUSTOMER_ID, PRODUCT_ID, PROFIT) VALUES (24, TO_DATE('2024-02-24', 'YYYY-MM-DD'), 24, 'P024', 200.75);

-- Example 25
INSERT INTO SALES (ORDER_ID, ORDER_DATE, CUSTOMER_ID, PRODUCT_ID, PROFIT) VALUES (25, TO_DATE('2024-02-25', 'YYYY-MM-DD'), 25, 'P025', 250.50);

SELECT *
FROM SALES;

--CREATING ANOTHER TABLE THAT IS CUSTOMER
--AND ESTABLISHING CONNECTION THAT IS FOREIGN KEY
CREATE TABLE CUSTOMER(
 CUSTOMER_ID NUMBER(5) NOT NULL,
 CUSTOMER_NAME VARCHAR2(50),
 SEGMENT VARCHAR2(20),
 CITY VARCHAR2(20),
CONSTRAINT PKEY_OF_CUSTOMER PRIMARY KEY (CUSTOMER_ID) 
);

--INSERTING RECORDS IN CUSTOMER TABLE
-- Example 1
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, SEGMENT, CITY) VALUES (1, 'John Doe', 'Retail', 'New York');

-- Example 2
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, SEGMENT, CITY) VALUES (2, 'Jane Smith', 'Wholesale', 'Los Angeles');

-- Example 3
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, SEGMENT, CITY) VALUES (3, 'Robert Johnson', 'Online', 'Chicago');

-- Example 4
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, SEGMENT, CITY) VALUES (4, 'Emily Davis', 'Retail', 'Houston');

-- Example 5
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, SEGMENT, CITY) VALUES (5, 'Michael Brown', 'Wholesale', 'Phoenix');

-- Example 6
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, SEGMENT, CITY) VALUES (6, 'Sophia Martinez', 'Online', 'Philadelphia');

-- Example 7
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, SEGMENT, CITY) VALUES (7, 'William Wilson', 'Retail', 'San Antonio');

-- Example 8
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, SEGMENT, CITY) VALUES (8, 'Olivia Taylor', 'Wholesale', 'San Diego');

-- Example 9
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, SEGMENT, CITY) VALUES (9, 'Daniel Anderson', 'Online', 'Dallas');

-- Example 10
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, SEGMENT, CITY) VALUES (10, 'Ava Moore', 'Retail', 'San Jose');

-- Example 11
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, SEGMENT, CITY) VALUES (11, 'Ethan White', 'Wholesale', 'Austin');

-- Example 12
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, SEGMENT, CITY) VALUES (12, 'Isabella Harris', 'Online', 'Jacksonville');

-- Example 13
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, SEGMENT, CITY) VALUES (13, 'Mason Martin', 'Retail', 'Indianapolis');

-- Example 14
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, SEGMENT, CITY) VALUES (14, 'Emma Thompson', 'Wholesale', 'San Francisco');

-- Example 15
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, SEGMENT, CITY) VALUES (15, 'Liam Davis', 'Online', 'Columbus');

-- Example 16
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, SEGMENT, CITY) VALUES (16, 'Avery Clark', 'Retail', 'Charlotte');

-- Example 17
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, SEGMENT, CITY) VALUES (17, 'Harper King', 'Wholesale', 'Fort Worth');

-- Example 18
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, SEGMENT, CITY) VALUES (18, 'Benjamin Turner', 'Online', 'Detroit');

-- Example 19
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, SEGMENT, CITY) VALUES (19, 'Chloe Allen', 'Retail', 'El Paso');

-- Example 20
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, SEGMENT, CITY) VALUES (20, 'Logan Parker', 'Wholesale', 'Memphis');

-- Example 21
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, SEGMENT, CITY) VALUES (21, 'Mia Evans', 'Online', 'Seattle');

-- Example 22
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, SEGMENT, CITY) VALUES (22, 'Lucas Scott', 'Retail', 'Denver');

-- Example 23
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, SEGMENT, CITY) VALUES (23, 'Zoe Adams', 'Wholesale', 'Washington');

-- Example 24
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, SEGMENT, CITY) VALUES (24, 'Jayden White', 'Online', 'Boston');

-- Example 25
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, SEGMENT, CITY) VALUES (25, 'Aria Lee', 'Retail', 'Nashville');

SELECT *
FROM CUSTOMER;





CREATE TABLE PRODUCT(
  PRODUCT_ID VARCHAR2(10) NOT NULL,
  PRODUCT_NAME VARCHAR2(70),
  PRODUCT_QUANTITY NUMBER(5),
  PRODUCT_PRICE NUMBER(8),
CONSTRAINT PKEY_PRODUCT PRIMARY KEY (PRODUCT_ID)  
);

INSERT INTO PRODUCT (PRODUCT_ID, PRODUCT_NAME, PRODUCT_QUANTITY, PRODUCT_PRICE) VALUES ('P001', 'Laptop', 20, 1200.50);
INSERT INTO PRODUCT (PRODUCT_ID, PRODUCT_NAME, PRODUCT_QUANTITY, PRODUCT_PRICE) VALUES ('P002', 'Smartphone', 50, 699.99);
INSERT INTO PRODUCT (PRODUCT_ID, PRODUCT_NAME, PRODUCT_QUANTITY, PRODUCT_PRICE) VALUES ('P003', 'Printer', 15, 299.99);
INSERT INTO PRODUCT (PRODUCT_ID, PRODUCT_NAME, PRODUCT_QUANTITY, PRODUCT_PRICE) VALUES ('P004', 'Tablet', 30, 399.99);
INSERT INTO PRODUCT (PRODUCT_ID, PRODUCT_NAME, PRODUCT_QUANTITY, PRODUCT_PRICE) VALUES ('P005', 'Digital Camera', 10, 499.99);
INSERT INTO PRODUCT (PRODUCT_ID, PRODUCT_NAME, PRODUCT_QUANTITY, PRODUCT_PRICE) VALUES ('P006', 'Smartwatch', 40, 199.99);
INSERT INTO PRODUCT (PRODUCT_ID, PRODUCT_NAME, PRODUCT_QUANTITY, PRODUCT_PRICE) VALUES ('P007', 'Desktop Computer', 25, 899.99);
INSERT INTO PRODUCT (PRODUCT_ID, PRODUCT_NAME, PRODUCT_QUANTITY, PRODUCT_PRICE) VALUES ('P008', 'Gaming Console', 15, 349.99);
INSERT INTO PRODUCT (PRODUCT_ID, PRODUCT_NAME, PRODUCT_QUANTITY, PRODUCT_PRICE) VALUES ('P009', 'Wireless Router', 50, 79.99);
INSERT INTO PRODUCT (PRODUCT_ID, PRODUCT_NAME, PRODUCT_QUANTITY, PRODUCT_PRICE) VALUES ('P010', 'LED TV', 12, 799.99);
INSERT INTO PRODUCT (PRODUCT_ID, PRODUCT_NAME, PRODUCT_QUANTITY, PRODUCT_PRICE) VALUES ('P011', 'Bluetooth Speaker', 60, 59.99);
INSERT INTO PRODUCT (PRODUCT_ID, PRODUCT_NAME, PRODUCT_QUANTITY, PRODUCT_PRICE) VALUES ('P012', 'External SSD', 18, 129.99);
INSERT INTO PRODUCT (PRODUCT_ID, PRODUCT_NAME, PRODUCT_QUANTITY, PRODUCT_PRICE) VALUES ('P013', 'Fitness Tracker', 35, 89.99);
INSERT INTO PRODUCT (PRODUCT_ID, PRODUCT_NAME, PRODUCT_QUANTITY, PRODUCT_PRICE) VALUES ('P014', 'Office Chair', 22, 149.99);
INSERT INTO PRODUCT (PRODUCT_ID, PRODUCT_NAME, PRODUCT_QUANTITY, PRODUCT_PRICE) VALUES ('P015', 'Coffee Maker', 8, 39.99);
INSERT INTO PRODUCT (PRODUCT_ID, PRODUCT_NAME, PRODUCT_QUANTITY, PRODUCT_PRICE) VALUES ('P016', 'Graphic Tablet', 5, 249.99);
INSERT INTO PRODUCT (PRODUCT_ID, PRODUCT_NAME, PRODUCT_QUANTITY, PRODUCT_PRICE) VALUES ('P017', 'Air Purifier', 15, 179.99);
INSERT INTO PRODUCT (PRODUCT_ID, PRODUCT_NAME, PRODUCT_QUANTITY, PRODUCT_PRICE) VALUES ('P018', 'Backpack', 40, 29.99);
INSERT INTO PRODUCT (PRODUCT_ID, PRODUCT_NAME, PRODUCT_QUANTITY, PRODUCT_PRICE) VALUES ('P019', 'Digital Scale', 18, 19.99);
INSERT INTO PRODUCT (PRODUCT_ID, PRODUCT_NAME, PRODUCT_QUANTITY, PRODUCT_PRICE) VALUES ('P020', 'Wireless Earbuds', 25, 89.99);
INSERT INTO PRODUCT (PRODUCT_ID, PRODUCT_NAME, PRODUCT_QUANTITY, PRODUCT_PRICE) VALUES ('P021', 'Projector', 10, 299.99);
INSERT INTO PRODUCT (PRODUCT_ID, PRODUCT_NAME, PRODUCT_QUANTITY, PRODUCT_PRICE) VALUES ('P022', 'Electric Toothbrush', 30, 49.99);
INSERT INTO PRODUCT (PRODUCT_ID, PRODUCT_NAME, PRODUCT_QUANTITY, PRODUCT_PRICE) VALUES ('P023', 'Air Fryer', 15, 79.99);
INSERT INTO PRODUCT (PRODUCT_ID, PRODUCT_NAME, PRODUCT_QUANTITY, PRODUCT_PRICE) VALUES ('P024', 'Desk Lamp', 20, 24.99);
INSERT INTO PRODUCT (PRODUCT_ID, PRODUCT_NAME, PRODUCT_QUANTITY, PRODUCT_PRICE) VALUES ('P025', 'Cordless Vacuum Cleaner', 12, 129.99);

SELECT *
FROM PRODUCT;

