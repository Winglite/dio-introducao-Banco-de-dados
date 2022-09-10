Esse é o segundo desafio DIO no Bootcamp Database Experience - Básico.

Nesse desafio deverá ser criado do zero um Schema do negócio Oficina, seguindo os requisitos de negócio descritos abaixo.

LEVANTAMENTO DOS REQUISITOS:

- Sistema de controle e gerenciamento de execução de ordens de serviço em uma oficina mecânica.
- Cliente levam veículos à oficina mecânica para serem consertados ou para passarem por revisões periódicas.
- Cada veículo é disignado a uma equipe de mecânicos que identifica os serviços a serem executados e preenche uma OS com data
de entrega.
- A partir da OS, calcula-se o valor de cada serviço, consultando-se uma tabela de referência de mão-de-obra.
- O valor de cada peça tabém irá compor a OS.
- O cliente autoriza a execução dos serviços.
- A mesma equipe avalia e executa os serviços
- Os mecânicos possuem código, nome, endereço e especialidade
- Cada OS possui: N°, data de emissão, um valor, status e uma data para conclusão dos trabalhos.
- Uma OS pode ser composta por vários serviços e um mesmo serviço pode estar contido em mais de uma OS.
- Uma OS pode ter vários tipos de peça e uma peça pode estar presente em mais de uma OS.