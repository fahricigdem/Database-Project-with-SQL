CREATE TABLE Nutzer (
  Nut_ID INT PRIMARY KEY,
  Vorname VARCHAR(30),
  Nachname VARCHAR(40) DEFAULT "Adler",
  EMail VARCHAR(40) DEFAULT "adam@adler.com",
  Passwort VARCHAR(20) DEFAULT 1234,
  Bild VARCHAR(200) DEFAULT "https//abcdefgh",
  R_datum VARCHAR(20) DEFAULT "01.01.2021"
);

CREATE TABLE Freund (
  Datum VARCHAR(30)  DEFAULT "01.01.2021",
  Nut_eins_ID INT REFERENCES Nutzer (Nut_ID), 
  Nut_zwei_ID INT  REFERENCES Nutzer (Nut_ID),   
  PRIMARY KEY (Nut_eins_ID,Nut_zwei_ID)
);

CREATE TABLE Mitteilung (
  Datum VARCHAR(30)  DEFAULT "01.01.2021",
  Nut_ID INT REFERENCES Nutzer (Nut_ID), 
  Beitrag_ID INT  REFERENCES Beitrag (Beitrag_ID),   
  PRIMARY KEY (Nut_ID,Beitrag_ID)
);


CREATE TABLE Beitrag (
  Beitrag_ID INT PRIMARY KEY,
  Titel VARCHAR(40) DEFAULT "Bla bla",
  Inhalt VARCHAR(40) DEFAULT "Bla bla bla ..." ,
  Status VARCHAR(40) DEFAULT "Bla bla",
  Privat VARCHAR(40) DEFAULT "Bla bla",
  E_datum VARCHAR(20) DEFAULT "01.01.2021",
  B_datum VARCHAR(20) DEFAULT "01.01.2021",
  Nut_ID INT REFERENCES Nutzer (Nut_ID) 
);

CREATE TABLE Komment(
  Komment_ID INT PRIMARY KEY,
  Mutter_Komment INT,
  Inhalt VARCHAR(40) DEFAULT "Bla bla bla ..." ,
  E_datum VARCHAR(20) DEFAULT "01.01.2021",
  B_datum VARCHAR(20) DEFAULT "01.01.2021",
  Nut_ID INT REFERENCES Nutzer (Nut_ID),
  Beitrag_ID INT REFERENCES Beitrag (Beitrag_ID)   
);
