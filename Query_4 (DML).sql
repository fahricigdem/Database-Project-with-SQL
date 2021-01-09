/*4. Selektiere den Titel des letzten Beitrags mit den ersten beiden Kommentaren.*/

SELECT  Beitrag.Titel as Beitrag_Titel, Komment_ID,Komment.Inhalt
from Beitrag, Komment
where Beitrag.Beitrag_ID = Komment.Beitrag_ID and 
       Beitrag.Beitrag_ID = (select Beitrag_ID from Beitrag order by Beitrag_ID desc limit 1)
limit 2 