SELECT COUNT(ID) AS FISH_COUNT,FISH_NAME
FROM FISH_INFO AS A JOIN FISH_NAME_INFO AS B ON A.FISH_TYPE=B.FISH_TYPE
GROUP BY FISH_NAME
ORDER BY COUNT(ID) DESC