Criar comando para exibir as informações de identificação (pub_id) e nome (pub_name) das Editoras (Publishers) 
que o país (country) seja igual a USA, Brazil, Switzerland
Observação!
O nome da editora deverá ser mascarado, alterando da 10 a 20 posição por "*"

SELECT pub_id, substring(pub_name,1,10) + replicate('*',10) + substring(pub_name,21,len(pub_name))
FROM pubs.dbo.publishers
--WHERE country in ('USA','Brazil','Switzerland')
WHERE country = 'USA' OR country = 'Brazil'  OR country = 'Switzerland'

Criar comando para exibir o código do Livro (title_id) dos Títulos (Titles) que possuem 
seu preço (price) sem valor informado ou seu tipo (type) seja relacionado a culinária (cook).

SELECT title_id
FROM pubs..titles
WHERE price IS NULL OR type like '%cook%'

Criar o comando para exibir as informações abaixo dos Autores (authors) que possuam a sequencia "ea" 
em seu primeiro nome (au_fname)
- Nome (au_fname + au_lname)
- Cidade / Estado (city e state)
- Identificação (au_id)

SELECT au_fname + ' '+ au_lname [Nome], city + ' / ' + state [Cidade / Estado], au_id [Identificação]
FROM pubs..authors
WHERE au_fname like '%ea%'

Criar o comando para exibir a quantidade de Livros Editados (titleautor) agrupando por Autor (au_id).

SELECT au_id, COUNT(*)
FROM pubs..titleauthor
GROUP BY au_id

Criar o comando para exibir a quantidade de Livros Editados (titleautor) agrupando por Títulos (title_id)
daqueles que a contagem seja superior a 2.

SELECT title_id, COUNT(*)
FROM pubs..titleauthor
GROUP BY title_id HAVING COUNT(*) > 2

Criar o comando para exibir a média de quantidades vendidas (qty) de Vendas (Sales) 
agrupando por Loja (stor_id).

SELECT stor_id, AVG(qty)
FROM pubs..sales
GROUP BY stor_id

SELECT * FROM pubs..sales order by stor_id


Criar comando para exibir as informações de Loja (stor_id), Ordem de Venda (ord_id) e 
título (title_id) das Vendas (sales):
- Em que a ordem (ord_date) tenha sido realizada entre os dias 14 e 15
OU
- Em que a ordem (ord_date) tenha sido realizada no mês de Outubro (10)

SELECT stor_id, ord_num, title_id
FROM pubs..sales
WHERE (DAY(ord_date) IN (14,15)) OR (MONTH(ord_date) = 10)


