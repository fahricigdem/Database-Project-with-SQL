/*5. Selektiere alle Freunde eines Nutzers.*/

SELECT  Vorname, Nachname, Nut_ID
FROM Freund, Nutzer
WHERE (Nut_eins_ID = 101 OR Nut_zwei_ID = 101) and
   (Nut_ID != 101) and
   (Nutzer.Nut_ID = Freund.Nut_eins_ID or Nutzer.Nut_ID = Freund.Nut_zwei_ID)
