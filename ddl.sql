/*Exercice 1 :*/
CREATE TABLE Product (
    Product_id VARCHAR (20) CONSTRAINT pk_product PRIMARY KEY,
    Product_Name VARCHAR (20) NOT NULL,
    Price NUMBER CHECK (Price > 0)
);

CREATE TABLE Customer(
    Customer_id VARCHAR (20) CONSTRAINT pk_customer PRIMARY KEY,
    Customer_Name VARCHAR (20) NOT NULL,
    Customer_Tel NUMBER
);

CREATE TABLE Orders(
    Quantity NUMBER,
    Total_amount NUMBER,
    CONSTRAINT fk_product FOREIGN KEY (Product_id) REFERENCES Product (Product_id),
    CONSTRAINT fk_customer FOREIGN KEY (Customer_id) REFERENCES Customer (Customer_id)
);

/*Exercice 2 :*/
/*Add a column Category (VARCHAR2(20)) to the PRODUCT table.*/

ALTER TABLE Product ADD Category VARCHAR (20);

/*Add a column OrderDate (DATE)  to the ORDERS table which have SYSDATE as a default value*/
ALTER TABLE Orders ADD CONSTRAINT OrderDate default SYSDATE;