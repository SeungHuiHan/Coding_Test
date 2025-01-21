SELECT A.AUTHOR_ID,AUTHOR_NAME,A.CATEGORY,SUM(SALES*PRICE)  AS TOTAL_SALES
FROM BOOK AS A , AUTHOR AS B , BOOK_SALES AS C
WHERE A.BOOK_ID=C.BOOK_ID AND A.AUTHOR_ID=B.AUTHOR_ID AND SALES_DATE LIKE '%2022-01%'
GROUP BY AUTHOR_NAME,CATEGORY
#HAVING 
ORDER BY A.AUTHOR_ID,CATEGORY DESC