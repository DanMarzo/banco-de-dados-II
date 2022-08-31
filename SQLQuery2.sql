USE pubs

SELECT stor_id, AVG(qty) AS 'média' FROM sales
GROUP BY(stor_id)



SELECT title_id, COUNT(title_id) AS qtde FROM titleauthor 
GROUP BY (title_id) HAVING(COUNT(title_id) > 2)

SELECT au_id ,COUNT(au_id) AS 'Livros editados' FROM titleauthor 
GROUP BY(au_id)

SELECT au_fname + ' ' + au_lname AS [Names Authors], city + ' - ' + state AS [Locazition], au_id FROM authors
WHERE au_fname LIKE('%ea%')

SELECT title_id, price, type FROM titles
WHERE  type LIKE('%COOK%') OR price IS NULL

SELECT pub_id, SUBSTRING(pub_name,1,9) + '*****' AS [pub_name], country FROM publishers
WHERE (country = 'USA' OR country =	'Brazil' OR country = 'Switzerland')