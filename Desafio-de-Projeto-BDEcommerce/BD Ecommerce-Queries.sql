-- Queries no BD Ecommmerce

use ecommerce;

select count(*) from clients;
select * from clients c, orders o where c.idClient = o.idClient;

select Fname, Lname, idOrder, OrderStatus from clients c, orders o where c.idClient = o.idClient;
select concat(Fname, ' ',Lname) as Client, idOrder as Request, OrderStatus as Status from clients c, orders o where c.idClient = o.idClient;

select * from clients c, orders o
	where c.idClient = o.idClient
    group by idOrder;
    
select count(*) from clients c, orders o
	where c.idClient = o.idClient;
    
-- Quantos produtos cada cliente pediu?
select c.idClient, Fname, count(*) as Number_of_products from clients c inner join orders o on c.idClient = o.idClient
					    inner join ProductbyOrder p ON o.idOrder = p.idOrder
					group by c.idClient;
                    
-- Quantos pedidos cada cliente fez classificando do que pediu mais para o que pediu menos?
select c.idClient, Fname, count(*) as Number_of_orders from clients c inner join orders o on c.idClient = o.idClient
						group by c.idClient
                        order by Number_of_orders desc;
                        

--
--
-- Algum vendedor também é fornecedor?
select idSeller, idSupplier from Seller s inner join Suppliers p where s.TradeName = p.TradeName;


--
--
-- Relação de nomes de fornecedores e nomes dos produtos
select Pr.idProduct, Pr.ProductName, Pr.CategoryProd, InventProd, Price, idSupplier from Product as Pr, ProductbySupplier as Ps where Ps.idProduct=Pr.idProduct
						   group by idProduct;
                           

--
--
-- Ordens entregues
select * from orders where OrderStatus='entregue';

--
--
-- Compras por tipo de pagamento
select PaymentMet as Forma_pagamento, count(*) as Qnt from orders
			group by PaymentMet;
            
--
--
--  Estoque por categorias onde o estoque é menor do que 500.
select P.CategoryProd as Categoria, count(P.idProduct) as Qnt_Produtos, S.idStorages as Armazem, sum(InventProd) as Estoque
		from Product P, ProductbyStorages S
        where P.idProduct=S.idproduct
        group by CategoryProd
        having sum(InventProd) <= 500;
        
        --
--
--  Estoque por categorias e armazem
select P.CategoryProd as Categoria, count(P.idProduct) as Qnt_Produtos, S.idStorages as Armazem, sum(InventProd) as Estoque
		from Product P, ProductbyStorages S
        where P.idProduct=S.idproduct
        group by CategoryProd
        order by Estoque desc;