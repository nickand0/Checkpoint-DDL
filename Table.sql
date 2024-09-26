--Table customer
CREATE TABLE Customer (
    Customer_Id VARCHAR2(20) PRIMARY KEY ,
    Customer_Name VARCHAR2(20) NOT NULL,
    Customer_Tel NUMBER 
)

--TAble Product
CREATE TABLE Product (
    Product_Id VARCHAR2(20) PRIMARY KEY,
    Product_Name VARCHAR2(20) NOT NULL,
    Price NUMBER CHECK (Price > 0)
)

--Table Orders
CREATE TABLE Orders (
    Customer_Id VARCHAR2(20) ,
    Product_Id VARCHAR2(20) ,
    Quantity NUMBER 
    Total_amount NUMBER
    CONSTRAINT fk_customer FOREIGN KEY (Customer_Id) REFERENCES Customer(Customer_Id),
    CONSTRAINT fk_product FOREIGN KEY (Product_Id) REFERENCES Product(Product_Id)
)

--Ajout d'une colonne Categorie 0 la table product
ALTER TABLE Product ADD Categorie VARCHAR2(20)

--Ajout d'une colonne Date_de_Commande SYSDATE comme valeur par default dans orders
ALTER TABLE Orders ADD Date_de_Commande DATE DEFAULT SYSDATE