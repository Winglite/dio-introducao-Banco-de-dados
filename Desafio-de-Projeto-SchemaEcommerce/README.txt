Esse é o primeiro desafio DIO no Bootcamp Database Experience - Básico.

Nesse desafio será aprensentado um Schema do negócio E-commerce, seguindo os requisitos de negócio descritos abaixo.

LEVANTAMENTO DOS REQUISITOS:

PRODUTO:

- Os produtos são vendidos por uma única plataforma onine. Contudo, estes podem ter vendedores distintos (terceiros).
- Cada produto possui um fornecedor.
- Um ou mais produtos podem compor um pedido.


CLIENTE:

- O cliente pode se cadastrar no site com seu CPF ou CNPJ
- O endereço do cliente irá determinar o valor do frete.
- Um cliente pode fazer mais de um pedido. Este tem um período de carência para devolução.


PEDIDO:

- Os pedidos são criados por clientes e possuem informações de compra, endereço e status da entrega.
- Um produto ou mais compõe o pedido.
- O pedido pode ser cancelado.


FORNECEDOR e ESTOQUE : Pensar em como fazer.


O DESAFIO ERA: refinar o modelo nos seguintes pontos:
- Cliente PJ e PF - Uma conta pode ser PJ ou PF, mas não pode ter duas informações;
- Pagamento - Pode ter cadastrado mais de uma forma de pagamento;
- Entrega - Possui status  c´digo de rastreio.