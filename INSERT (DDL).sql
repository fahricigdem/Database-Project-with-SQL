INSERT INTO Nutzer (Nut_ID, Vorname)
VALUES(101,"AAAA"),(102,"BBBB"),(103,"CCCC"),(104,"DDDD"),(105,"EEEE");

INSERT INTO Freund (Nut_eins_ID, Nut_zwei_ID)
VALUES(101, 102),(102, 104),(103, 104),(104, 105),(105, 101);

INSERT INTO Beitrag(Beitrag_ID, NUT_ID)
VALUES(201, 101),(202, 101),(203, 102),(204, 103),(205, 103);

INSERT INTO Komment(Komment_ID, Mutter_Komment, Nut_ID, Beitrag_ID)
VALUES(301,NULL,101,201),
      (302,NULL,102,205),
      (303,301,103,201),
      (304,NULL,101,205),
      (305,NULL,104,205)
;
