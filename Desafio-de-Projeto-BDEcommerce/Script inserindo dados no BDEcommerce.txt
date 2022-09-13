-- inserindo dados no BD ecommerce

use ecommerce;
show tables;

-- Clients: idcliente, Fname, Minit, Lname, CPF, Address, Bdate

insert into clients (Fname, Minit, Lname, CPF, Address, Bdate)
	values('Maria','M','Silva',123456789,'rua da prata 29, Carangola', '1993-07-25'),
		  ('Mateus','O','Pimentel',123123123,'rua do ouro 523, Centro ', '1995-05-07'),
          ('Ricardo','P','Fonseca',456456456,'rua de baixo 2698, Centro', '1992-02-15'),
          ('Julia','G','Assis',789789789,'rua de baixo 985, Centro', '1995-10-25'),
          ('Roberta','F','Fanca',987987987,'rua do meio 15, Carangola', '1975-06-03'),
          ('Paula','R','Dias',654654654,'rua da frente 632, Carangola', '1987-12-05');
          
select * from clients;

-- clients_type: CPF, CNPJ, idclient
insert into clients_type (CPF, CNPJ, idclient)
	values(123456789,null, 1),
		  (123123123,95233077000118, 2),
          (456456456,01974545000161, 3),
          (789789789,null, 4),
          (987987987,null, 5),
          (654654654,25668429000182, 5);
select * from clients_type;

-- payment_type: (Ncard, ValidadeCard, NameCard, CardType, CountNumber, CountAg, CountOp, PixKey);
insert into payment_type (Ncard, ValidadeCard, NameCard, CardType, CountNumber, CountAg, CountOp, PixKey)
	values('517107918','2024-05-15','Maria M','credito',null, null,null,null),
		  (null, null, null, null, '74671-1', '3209', '001', null),
          (null, null, null, null, '75471-1', '3209', '001', null),
          (null, null, null, null, null, null, null, 755263545),
          ('531606425', '2028-02-01', 'Roberta F', 'credito', null, null, null, null),
          (null, null, null, null, null, null, null, 755263577);
    
select * from payment_type;

-- payment_client: (idTypeClient, idPayment_types);
insert into payment_client (idTypeClient, idPayment_types)
	values(1, 1),
		  (2, 2),
          (3, 3),
          (4, 4),
          (5, 5),
          (6, 6);
    
select * from payment_client;

-- orders: (idClient, OrderStatus, Shipping, Descriptions, PaymentMet,AddressShip);
insert into orders (idClient, OrderStatus, Shipping, Descriptions, PaymentMet,AddressShip)
	values(1, 'pagamento confirmado', '15.25', null, 'cartão de credito','rua da prata 29, Carangola'),
		  (2, 'processando', '9.99','favor enviar azul', 'debito em conta','rua do ouro 523, Centro'),
          (3, 'cancelado', '0.00', 'desisti da compra', 'debito em conta','rua de baixo 2698, Centro'),
          (3, 'sendo preparado', '15.00', null, 'debito em conta','rua de baixo 2698, Centro'),
          (4, 'entregue', '14.95', 'favor enviar preto', 'PIX','rua de baixo 985, Centro'),
          (5, 'entregue', '13.12', null, 'cartão de credito','rua da frente 632, Carangola'),
          (6, 'sendo preparado', '5.99', null, 'PIX','rua da frente 632, Carangola');
    
select * from orders;

-- table payments: (idOrder, idClient, idPayment_types, PaymentStatus);
insert into payments (idOrder, idClient, idPayment_types, PaymentStatus)
	values(8, 1, 1, 'pagamento confirmado'),
		  (9, 2, 2, 'processando'),
          (10, 3, 3, 'cancelado'),
          (11, 3, 3, 'pagamento confirmado'),
          (12, 4, 4, 'pagamento confirmado'),
          (13, 5, 5, 'pagamento confirmado'),
          (14, 6, 6, 'pagamento confirmado');
    
select * from payments;


-- table Delivery: (idOrder, idClient, DeliveryStatus, TrackingCode);
insert into Delivery (idOrder, idClient, DeliveryStatus, TrackingCode)
	values(8, 1, null, null),
		  (9, 2, null, null),
          (10, 3, null, null),
          (11, 3, 'na transportadora', '12345'),
          (12, 4, 'entregue', '12342'),
          (13, 5, 'entregue', '12340'),
          (13, 5, 'saiu para entrega', '12347');
        
select * from Delivery;


-- table Product: (ProductName, DescProduct, CategoryProd, InventProd);
insert into Product(ProductName, DescProduct, CategoryProd, InventProd)
	values('blusa azul', 'blusa azul tamanho M', 'moda adulta', '50'),
		  ('blusa azul', 'blusa azul tamanho P', 'moda adulta', '30'),
          ('blusa azul', 'blusa azul tamanho G', 'moda adulta', '47'),
          ('blusa amarela', 'blusa amarela tamanho M', 'moda adulta', '75'),
		  ('blusa amarela', 'blusa amarela tamanho P', 'moda adulta', '37'),
          ('blusa amarela', 'blusa amarela tamanho G', 'moda adulta', '42'),
          ('camiseta verde', 'camiseta verde tamanho 3 anos', 'moda infantil', '42'),
          ('vestido rosa', 'vestido rosa tamanho 6 anos', 'moda infantil', '15'),
          ('chips queijo', 'chips 100g sabor queijo', 'comida', '150'),
		  ('pizza', 'pizza grande sabor carne', 'comida', '600'),
          ('sanduiche', 'sanduiche sabor frango', 'comida', '300'),
          ('sushi', 'sushi de peixe', 'comida', '150'),
          ('kit churrasco', 'Kit de carnes para churrasco', 'comida', '150'),
		  ('refrigerante limão', 'refrigerante 500ml sabor limão', 'comida', '500'),
          ('refrigerante guarana', 'refrigerante 500ml sabor guarana', 'comida', '500'),
          ('refrigerante cola', 'refrigerante 500ml sabor cola', 'comida', '500'),
          ('suco uva', 'suco 500ml sabor uva', 'comida', '500'),
          ('suco uva', 'suco 500ml sabor uva', 'comida', '500'),
          ('abridor de garrafas', 'abridor de garrafas inox', 'utilidades', '30'),
          ('carvão', 'carvão para churrasco', 'utilidades', '50');
          
          insert into Product(ProductName, DescProduct, CategoryProd, InventProd)
	values('jaqueta', 'jaqueta tamanho M', 'moda adulta', '10');
        
	UPDATE Product SET InventProd ='150' WHERE ProductName='jaqueta';
    UPDATE Product SET InventProd ='300' WHERE ProductName='abridor de garrafas';
    
select * from Product;

-- table ProductbyOrder: (idProduct, idOrder);
insert into ProductbyOrder (idProduct, idOrder)
	values(1, 8),
		  (2, 8),
          (5, 9),
          (7, 10),
          (8, 10),
          (9, 11),
          (11, 12),
          (13, 13);
        
select * from ProductbyOrder;

-- table Storages: (StorageAddress);
insert into Storages (StorageAddress)
	values('rua cinco 1365, Carangola'),
		  ('rua sete 1365, setea');
        
select * from Storages;

-- table ProductbyStorages: (idProduct, idStorages);
insert into ProductbyStorages (idProduct, idStorages)
	values(1, 1),
		  (2, 1),
          (3, 1),
          (4, 1),
          (5, 1),
          (6, 1),
          (9, 2),
          (10, 2),
          (11, 2),
          (14, 2),
          (15, 2),
          (16, 2),
          (19, 2);
          
          insert into ProductbyStorages (idProduct, idStorages)
	values(21, 1);
    
            
select * from ProductbyStorages;


-- table Seller: (CompanyName, TradeName, City);
insert into Seller (CompanyName, TradeName, City)
	values('veste kids', 'veste bem ltda', 'São Paulo'),
		  ('come tudo', 'comidas prontas ltda', 'São Paulo'),
          ('suco bom', 'bebidas ltdas', 'São Paulo'),
          ('Pega fogo', 'carvão ltda', 'São Paulo');
        
select * from Seller;

-- table ProductbySeller: (idProduct, idSeller, Quantity, Price);
insert into ProductbySeller (idProduct, idSeller, Quantity, Price)
	values(7, 1, '45', '29.99'),
		  (8, 1, '43', '29.99'),
          (12, 2, '100', '79.99'),
          (13, 2, '100', '129.99'),
          (17, 3, '70', '9.99'),
          (18, 3, '70', '7.99'),
          (20, 4, '100', '8.99');
        
select * from ProductbySeller;


-- table Suppliers: (CompanyName, TradeName, City);
insert into Suppliers (CompanyName, TradeName, City)
	values('tem de tudo', 'importados ltda', 'São Paulo'),
		  ('Comida legal', 'comida rapida ltda', 'São Paulo'),
          ('Meu refri', 'refrigerantes ltda', 'São Paulo');
          
insert into Suppliers (CompanyName, TradeName, City)
	values('veste kids', 'veste bem ltda', 'São Paulo');
        
select * from Suppliers;


-- table ProductbySupplier: (idProduct, idSupplier, Quantity, Price);
insert into ProductbySupplier (idProduct, idSupplier, Quantity, Price)
	values(1, 1, '50', '19.99'),
		  (2, 1, '30', '19.99'),
          (3, 1, '47', '19.99'),
          (4, 1, '75', '19.99'),
          (5, 1, '37', '19.99'),
          (6, 1, '42', '19.99'),
          (9, 2, '150', '5.99'),
          (10, 2, '600', '10.99'),
          (11, 2, '300', '7.99'),
          (19, 2, '30', '1.99'),
          (14, 3, '500', '6.99'),
          (15, 3, '500', '6.99'),
          (16, 3, '500', '6.99');
          
          insert into ProductbySupplier (idProduct, idSupplier, Quantity, Price)
	values(21, 4, '10', '89.99');
        
select * from ProductbySupplier;