CREATE TABLE DICE (
  imie TEXT NOT NULL,
  wynik TEXT NOT NULL,
  sys_update_date TIMESTAMP NOT NULL,
  CONSTRAINT dice_pk PRIMARY KEY (imie)
);

CREATE TABLE WEAPON
(
  ID INT NOT NULL,
  BRON TEXT,
  STOPIEN int,
  OBRAZENIA TEXT,
  UKRYCIE TEXT,
  ZASIEG TEXT,
  SZYBKOSTRZELNOSC TEXT,
  SILA int,
  CONSTRAINT "WEAPON_PK" PRIMARY KEY (ID)
);

CREATE TABLE SHEETS
(	ID INT NOT NULL,
   LOGIN TEXT NOT NULL,
   PASS TEXT NOT NULL,
   IMIE TEXT NOT NULL,
   SILA INT NOT NULL,
   CHARYZMA INT NOT NULL,
   PERCEPCJA INT NOT NULL,
   ZRECZNOSC INT NOT NULL,
   ODDZIALYWANIE INT NOT NULL,
   INTELIGENCJA INT NOT NULL,
   WYTRZYMALOSC INT NOT NULL,
   WYGLAD INT NOT NULL,
   SPRYT INT NOT NULL,
   AKTORSTWO INT NOT NULL,
   ETYKIETA INT NOT NULL,
   LINGWISTYKA INT NOT NULL,
   AUTORYTET INT NOT NULL,
   JEZDZIECTWO INT NOT NULL,
   MEDYCYNA INT NOT NULL,
   BOJKA INT NOT NULL,
   KRYCIE INT NOT NULL,
   NAUKA INT NOT NULL,
   CZUJNOSC INT NOT NULL,
   LUCZNICTWO INT NOT NULL,
   OKULTYZM INT NOT NULL,
   EMPATIA INT NOT NULL,
   MUZYKA INT NOT NULL,
   POLITYKA INT NOT NULL,
   PRZEBIEGLOSC INT NOT NULL,
   OSWAJANIE INT NOT NULL,
   PRAWO INT NOT NULL,
   UNIKI INT NOT NULL,
   RZEMIOSLO INT NOT NULL,
   SLEDZTWO INT NOT NULL,
   WYSPORTOWANIE INT NOT NULL,
   SZTUKA INT NOT NULL,
   WIEJSKA INT NOT NULL,
   ZASTRASZANIE INT NOT NULL,
   WALKA INT NOT NULL,
   WYKSZTALCENIE INT NOT NULL,
   ZLODZIEJSTWO INT NOT NULL,
   ZIELARSTWO INT NOT NULL,
   ZARZADZANIE INT NOT NULL,
   DYSCYPLINY1 INT NOT NULL,
   DYSCYPLINY2 INT NOT NULL,
   DYSCYPLINY3 INT NOT NULL,
   DYSCYPLINY4 INT NOT NULL,
   DYSCYPLINY5 INT NOT NULL,
   POZYCJA1 INT NOT NULL,
   POZYCJA2 INT NOT NULL,
   POZYCJA3 INT NOT NULL,
   POZYCJA4 INT NOT NULL,
   POZYCJA5 INT NOT NULL,
   SUMIENIE INT NOT NULL,
   SAMOKONTROLA INT NOT NULL,
   ODWAGA INT NOT NULL,
   INNE1 INT NOT NULL,
   INNE2 INT NOT NULL,
   INNE3 INT NOT NULL,
   INNE4 INT NOT NULL,
   INNE5 INT NOT NULL,
   DROGA INT NOT NULL,
   STAN INT NOT NULL,
   BRON1_ID INT REFERENCES WEAPON(ID),
   BRON2_ID INT REFERENCES WEAPON(ID),
   BRON3_ID INT REFERENCES WEAPON(ID),
   BRON4_ID INT REFERENCES WEAPON(ID),
   WOLA INT NOT NULL,
   KREW INT NOT NULL,
   DOSWIADCZENIE INT NOT NULL,
   WOLA_MAX INT,
   KREW_MAX INT,
   GRACZ TEXT,
   SAGA TEXT,
   NATURA TEXT,
   POSTAWA TEXT,
   KLAN TEXT,
   POKOLENIE TEXT,
   SCHRONIENIE TEXT,
   ROLA TEXT,
   DYSCYPLINY1_OPIS TEXT,
   DYSCYPLINY2_OPIS TEXT,
   DYSCYPLINY3_OPIS TEXT,
   DYSCYPLINY4_OPIS TEXT,
   DYSCYPLINY5_OPIS TEXT,
   POZYCJA1_OPIS TEXT,
   POZYCJA2_OPIS TEXT,
   POZYCJA3_OPIS TEXT,
   POZYCJA4_OPIS TEXT,
   POZYCJA5_OPIS TEXT,
   INNE1_OPIS TEXT,
   INNE2_OPIS TEXT,
   INNE3_OPIS TEXT,
   INNE4_OPIS TEXT,
   INNE5_OPIS TEXT,
  CONSTRAINT SHEETS_PK PRIMARY KEY (ID),
  CONSTRAINT unique_LOGIN UNIQUE (LOGIN)
);