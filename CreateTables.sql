CREATE TABLE Categories(
	Id int not null,
	[Name] nvarchar(50) not null, 
	primary key(Id)
)

CREATE TABLE Products(
	Id int not null,
	[Name] nvarchar(50) not null, 
	primary key(Id)
)

CREATE TABLE CategoriesProducts(
	Id int not null Identity(1,1),
	ProductId int not null, 
	CategoryId int,
	primary key(Id), 
	foreign key (ProductId)  references Products (Id),
	foreign key (CategoryId)  references Categories (Id)
)

INSERT INTO Categories VALUES
(1, '����'),
(2,'����'),
(3,'�����'),
(4, '������')


INSERT INTO Products VALUES
(1,'Coca-Cola'),
(2,'�����������'),
(3,'������'), 
(4,'������'), 
(5, '���������')

INSERT INTO CategoriesProducts VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,null)