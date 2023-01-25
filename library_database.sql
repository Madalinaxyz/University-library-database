CREATE TABLE CITITORI(
cnp character varying(50) NOT NULL,
nume_student character varying(50) NOT NULL,
prenume_student character varying(50) NOT NULL,
data_nasterii_student date,
telefon_student character varying(50) NOT NULL,
adresa_student character varying(50) NOT NULL,
cod_facultate character varying(50) NOT NULL,
cod_specializare character varying(50) NOT NULL,
cod_an character varying(50) NOT NULL,
cod_carte character varying (50) NOT NULL,
CONSTRAINT pk_cititori PRIMARY KEY (cnp),
CONSTRAINT CITITORI_cod_facultate_fkey FOREIGN KEY(cod_facultate) REFERENCES FACULTATE(id_facultate),
CONSTRAINT CITITORI_cod_specializare_fkey FOREIGN KEY(cod_specializare) REFERENCES SPECIALIZARE(id_specializare),
CONSTRAINT CITITORI_cod_an_fkey FOREIGN KEY(cod_an) REFERENCES ANI(id_an)
CONSTRAINT CITITORI_cod_carte_fkey FOREIGN KEY(cod_carte) REFERENCES ANI(isbn)
);
CREATE TABLE FACULTATE(
id_facultate character varying(50) NOT NULL,
nume_facultate character varying(100) NOT NULL,
CONSTRAINT pk_facultate PRIMARY KEY (id_facultate)
);
DROP TABLE SPECIALIZARE CASCADE CONSTRAINTS;
CREATE TABLE SPECIALIZARE(
id_specializare character varying(50) NOT NULL,
nume_specializare character varying(100) NOT NULL,
CONSTRAINT pk_specializare PRIMARY KEY (id_specializare)
);
CREATE TABLE ANI(
id_an character varying(50) NOT NULL,
nume_an character varying(50) NOT NULL,
CONSTRAINT pk_ani PRIMARY KEY (id_an)
);
CREATE TABLE CARTI(
isbn character varying(50) NOT NULL,
titlu_carte character varying(100) NOT NULL,
anul_publicarii character varying(50) NOT NULL,
editura character varying(50) NOT NULL,
nr_pagini number,
nr_volume number,
cod_status character varying(50) NOT NULL,
CONSTRAINT pk_carti PRIMARY KEY (isbn),
CONSTRAINT CARTI_cod_status_fkey FOREIGN KEY(cod_status) REFERENCES STATUS_CARTE(id_status)
);
CREATE TABLE AUTORI(
id_autor character varying(50) NOT NULL,
nume_autor character varying(50) NOT NULL,
prenume_autor character varying(50) NOT NULL,
data_nasterii_autor date,
CONSTRAINT pk_autori PRIMARY KEY (id_autor)
);
CREATE TABLE AUTORI_CARTE(
id_autori_carte character varying(50) NOT NULL,
cod_carte character varying(50) NOT NULL,
cod_autor character varying(50) NOT NULL,
CONSTRAINT pk_autori_carte PRIMARY KEY (id_autori_carte),
CONSTRAINT AUTORI_CARTE_cod_carte_fkey FOREIGN KEY(cod_carte) REFERENCES CARTI (isbn),
CONSTRAINT AUTORI_CARTE_cod_autor_fkey FOREIGN KEY(cod_autor) REFERENCES AUTORI (id_autor)
);
CREATE TABLE STATUS_CARTE(
id_status character varying(50) NOT NULL,
stare_status character varying(50) NOT NULL,
CONSTRAINT pk_status_carte PRIMARY KEY (id_status)
);
CREATE TABLE BIBLIOTECAR(
id_bibliotecar character varying(50) NOT NULL,
nume_bibliotecar character varying(50) NOT NULL,
prenume_bibliotecar character varying(50) NOT NULL,
data_nasterii_bibliotecar date,
adresa_bibliotecar character varying(50) NOT NULL,
telefon_bibliotecar character varying(50) NOT NULL,
cod_facultate character varying(50) NOT NULL,
CONSTRAINT pk_bibliotecar PRIMARY KEY (id_bibliotecar),
CONSTRAINT BIBLIOTECAR_cod_facultate_fkey FOREIGN KEY(cod_facultate) REFERENCES FACULTATE(id_facultate)
);
INSERT INTO cititori (cnp,nume_student,prenume_student,data_nasterii_student,telefon_student,adresa_student,cod_facultate,cod_specializare,cod_an,cod_carte) VALUES
('6100512468644', 'Popescu','Ioana','22/OCT/1998','0734165987','Radu Voda nr 78','F1','S1','A3','C3');
INSERT INTO cititori (cnp,nume_student,prenume_student,data_nasterii_student,telefon_student,adresa_student,cod_facultate,cod_specializare,cod_an,cod_carte) VALUES
('5120512466674', 'Manea','Andrei','15/SEP/1997','0784513426','Ion Barbu nr 59','F2','S2','A4','');
INSERT INTO cititori (cnp,nume_student,prenume_student,data_nasterii_student,telefon_student,adresa_student,cod_facultate,cod_specializare,cod_an,cod_carte) VALUES
('5005532468699', 'Voicu','Andrei','24/SEP/2000','0799246988','Calea Mosilor nr 67','F3','S3','A1','C1');
INSERT INTO cititori (cnp,nume_student,prenume_student,data_nasterii_student,telefon_student,adresa_student,cod_facultate,cod_specializare,cod_an,cod_carte) VALUES
('5180572468654', 'Papa','Alexandru','05/MAY/1995','0798153425','Aleea Avrig nr 21','F4','S4','A6','');
INSERT INTO cititori (cnp,nume_student,prenume_student,data_nasterii_student,telefon_student,adresa_student,cod_facultate,cod_specializare,cod_an,cod_carte) VALUES
('6190513468644', 'Firescu','Ana','16/JUL/1996','0734109487','Intrarea Bicaz nr 23','F5','S5','A5','');
INSERT INTO cititori (cnp,nume_student,prenume_student,data_nasterii_student,telefon_student,adresa_student,cod_facultate,cod_specializare,cod_an,cod_carte) VALUES
('6100512468609', 'Tudoran','Gabriela','22/OCT/1993','0729165947','Rasnov nr 25','F6','S6','A8','');
INSERT INTO cititori (cnp,nume_student,prenume_student,data_nasterii_student,telefon_student,adresa_student,cod_facultate,cod_specializare,cod_an,cod_carte) VALUES
('6145512468632', 'Petrescu','Luiza','24/MAY/2000','0767162380','Ramuri Tei nr 52','F7','S7','A1','C8','');
INSERT INTO cititori (cnp,nume_student,prenume_student,data_nasterii_student,telefon_student,adresa_student,cod_facultate,cod_specializare,cod_an,cod_carte) VALUES
('5145512468632', 'Ducu','Adrian','05/AUG/1999','0767162380','Horei nr 33','F8','S8','A2','');
INSERT INTO cititori (cnp,nume_student,prenume_student,data_nasterii_student,telefon_student,adresa_student,cod_facultate,cod_specializare,cod_an,cod_carte) VALUES
('6142612499963', 'Logofatu','Miruna','05/AUG/1996','0767162380','Vasile Lascar nr 37','F9','S9','A5','C10');
INSERT INTO cititori (cnp,nume_student,prenume_student,data_nasterii_student,telefon_student,adresa_student,cod_facultate,cod_specializare,cod_an,cod_carte) VALUES
('5145513456843', 'Mateescu','Alexandru','05/AUG/1999','0721154380','Grigore Moisil nr 51','F10','S10','A2','');
INSERT INTO facultate (id_facultate, nume_facultate) VALUES
('F1','Facultatea de Inginerie Electrica');
INSERT INTO facultate (id_facultate, nume_facultate) VALUES
('F2','Facultatea de Energetica');
INSERT INTO facultate (id_facultate, nume_facultate) VALUES
('F3','Facultatea de Automatica si Calculatoare')
INSERT INTO facultate (id_facultate, nume_facultate) VALUES
('F4','Facultatea de Electronica,Telecomunicatii si Tehnologia Informatiei');
INSERT INTO facultate (id_facultate, nume_facultate) VALUES
('F5','Facultatea de Inginerie Mecanica si Mecatronica');INSERT INTO facultate (id_facultate, nume_facultate) VALUES
('F6','Facultatea de Ingineria si Managementul Sistemelor Tehnologice');
INSERT INTO facultate (id_facultate, nume_facultate) VALUES
('F7','Facultatea de Ingineria Sistemelor Biotehnice');
INSERT INTO facultate (id_facultate, nume_facultate) VALUES
('F8','Facultatea de Transporturi');
INSERT INTO facultate (id_facultate, nume_facultate) VALUES
('F9','Facultatea de Inginerie Aerospatiala');
INSERT INTO facultate (id_facultate, nume_facultate) VALUES
('F10','Facultatea de Stiinta si Ingineria materialelor');
INSERT INTO facultate (id_facultate, nume_facultate) VALUES
('F11','Facultatea de Chimie Aplicata si Stiita Materialelor');
INSERT INTO facultate (id_facultate, nume_facultate) VALUES
('F12','Facultatea de Inginerie in Limbi Straine');
INSERT INTO facultate (id_facultate, nume_facultate) VALUES
('F13','Facultatea de Stiinte Aplicate');
INSERT INTO facultate (id_facultate, nume_facultate) VALUES
('F14','Facultatea de Inginerie Medicala');
INSERT INTO facultate (id_facultate, nume_facultate) VALUES
('F15','Antreprenoriat,Ingineria si Managementul Afacerilor');
INSERT INTO specializare (id_specializare ,nume_specializare) VALUES
('S1', 'Electronica de putere si actionari electrice');
INSERT INTO specializare (id_specializare ,nume_specializare) VALUES
('S2', 'Hidroenergetica');
INSERT INTO specializare (id_specializare ,nume_specializare) VALUES
('S3', 'Automatica si informatica aplicata');
INSERT INTO specializare (id_specializare ,nume_specializare) VALUES
('S4', 'Electronica aplicata');
INSERT INTO specializare (id_specializare ,nume_specializare) VALUES
('S5', 'Mecanica fina si nanotehnologii');
INSERT INTO specializare (id_specializare ,nume_specializare) VALUES
('S6', 'Tehnologia constructiilor de masini');
INSERT INTO specializare (id_specializare ,nume_specializare) VALUES
('S7', 'Masini si instalatii pentru agricultura si industria alimentara');
INSERT INTO specializare (id_specializare ,nume_specializare) VALUES
('S8', 'Vehicule pentru transportul feroviar');
INSERT INTO specializare (id_specializare ,nume_specializare) VALUES
('S9', 'Design aeronautic');
INSERT INTO specializare (id_specializare ,nume_specializare) VALUES
('S10', 'Ingineria elaborarii materialelor metalice');
INSERT INTO specializare (id_specializare ,nume_specializare) VALUES
('S11', 'Stiinta si ingieria polimerilor');
INSERT INTO specializare (id_specializare ,nume_specializare) VALUES
('S12', 'Ingineria informatiei in limba franceza');
INSERT INTO specializare (id_specializare ,nume_specializare) VALUES
('S13', 'Inginerie fizica');
INSERT INTO specializare (id_specializare ,nume_specializare) VALUES
('S14', 'Biomateriale si dispozitive medicale');
INSERT INTO specializare (id_specializare ,nume_specializare) VALUES
('S15', 'Ingineria si managementul afacerilor');
INSERT INTO ani (id_an, nume_an) VALUES
('A1', 'Licenta-Anul 1');
INSERT INTO ani (id_an, nume_an) VALUES
('A2', 'Licenta-Anul 2');
INSERT INTO ani (id_an, nume_an) VALUES
('A3', 'Licenta-Anul 3');
INSERT INTO ani (id_an, nume_an) VALUES
('A4', 'Licenta-Anul 4');
INSERT INTO ani (id_an, nume_an) VALUES
('A5', 'Master-Anul 1');
INSERT INTO ani (id_an, nume_an) VALUES
('A6', 'Master-Anul 2');
INSERT INTO ani (id_an, nume_an) VALUES
('A7', 'Doctorat-Anul 1');
INSERT INTO ani (id_an, nume_an) VALUES
('A8', 'Doctorat-Anul 2');
INSERT INTO ani (id_an, nume_an ) VALUES
('A9', 'Doctorat-Anul 3');
INSERT INTO carti (isbn,titlu_carte,anul_publicarii,editura,nr_pagini,nr_volume,cod_status ) VALUES
('C1','Matematici speciale','2003','Corint','350','1','STATUS1');
INSERT INTO carti (isbn,titlu_carte,anul_publicarii,editura,nr_pagini,nr_volume,cod_status ) VALUES
('C2','Mecanica','2003','Teora','250','1','STATUS2');
INSERT INTO carti (isbn,titlu_carte,anul_publicarii,editura,nr_pagini,nr_volume,cod_status ) VALUES
('C3','Securitate cibernetica','2015','Albastra','321','1','STATUS1');
INSERT INTO carti (isbn,titlu_carte,anul_publicarii,editura,nr_pagini,nr_volume,cod_status ) VALUES
('C4','Programul Maple','2010','Art','215','STATUS1');
INSERT INTO carti (isbn,titlu_carte,anul_publicarii,editura,nr_pagini,nr_volume,cod_status ) VALUES
('C5','Analiza combinatorica','2007','Corint','263','STATUS2');
INSERT INTO carti (isbn,titlu_carte,anul_publicarii,editura,nr_pagini,nr_volume,cod_status ) VALUES
('C6','Algebra liniara si geometrie diferentiala','2001','Artemis','270','STATUS1');
INSERT INTO carti (isbn,titlu_carte,anul_publicarii,editura,nr_pagini,nr_volume,cod_status ) VALUES
('C7','Tehnologii web','2003','Albastra','357','STATUS2');
INSERT INTO carti (isbn,titlu_carte,anul_publicarii,editura,nr_pagini,nr_volume,cod_status ) VALUES
('C8','Design aeronautic','2005','Art','359','STATUS1');
INSERT INTO carti (isbn,titlu_carte,anul_publicarii,editura,nr_pagini,nr_volume,cod_status ) VALUES
('C9','Chimie aplicata','2000','Corint','334','STATUS2');
INSERT INTO carti (isbn,titlu_carte,anul_publicarii,editura,nr_pagini,nr_volume,cod_status ) VALUES
('C10','Circuite electronice liniare','2009','Corint','291','STATUS1');
INSERT INTO autori (id_autor, nume_autor, prenume_autor,data_nasterii_autor) VALUES
('AUTOR1', 'Dionisie','Alexandru','14/JAN/1985');
INSERT INTO autori (id_autor, nume_autor, prenume_autor,data_nasterii_autor) VALUES
('AUTOR2', 'Soare','Raluca','08/SEP/1985');
INSERT INTO autori (id_autor, nume_autor, prenume_autor,data_nasterii_autor) VALUES
('AUTOR3', 'Radu','Ioana','14/MAY/1987');
INSERT INTO autori (id_autor, nume_autor, prenume_autor,data_nasterii_autor) VALUES
('AUTOR4', 'Vacareanu','Andrei','23/AUG/1989');
INSERT INTO autori (id_autor, nume_autor, prenume_autor,data_nasterii_autor) VALUES
('AUTOR5', 'Dumitrache','Alina','28/SEP/1991');
INSERT INTO autori (id_autor, nume_autor, prenume_autor,data_nasterii_autor) VALUES
('AUTOR6', 'Nastasie','George','11/JUN/1983');
INSERT INTO autori (id_autor, nume_autor, prenume_autor,data_nasterii_autor) VALUES
('AUTOR7', 'Moraru','Valentin','14/JUL/1974');
INSERT INTO autori (id_autor, nume_autor, prenume_autor,data_nasterii_autor) VALUES
('AUTOR8', 'Tenea','Gabriel','19/NOV/1970');
INSERT INTO autori (id_autor, nume_autor, prenume_autor,data_nasterii_autor) VALUES
('AUTOR9', 'Dumitrescu','Stefan','21/SEP/1977');
INSERT INTO autori (id_autor, nume_autor, prenume_autor,data_nasterii_autor) VALUES
('AUTOR10', 'Grigore','Mihai','17/DEC/1969');
INSERT INTO autori_carte (id_autori_carte, cod_carte,cod_autor) VALUES
('AC1','C1','AUTOR1');
INSERT INTO autori_carte (id_autori_carte, cod_carte,cod_autor) VALUES
('AC2','C2','AUTOR2');
INSERT INTO autori_carte (id_autori_carte, cod_carte,cod_autor) VALUES
('AC3','C3','AUTOR3');
INSERT INTO autori_carte (id_autori_carte, cod_carte,cod_autor) VALUES
('AC4','C4','AUTOR4');
INSERT INTO autori_carte (id_autori_carte, cod_carte,cod_autor) VALUES
('AC5','C5','AUTOR5');
INSERT INTO autori_carte (id_autori_carte, cod_carte,cod_autor) VALUES
('AC6','C6','AUTOR6');
INSERT INTO autori_carte (id_autori_carte, cod_carte,cod_autor) VALUES
('AC7','C7','AUTOR7');
INSERT INTO autori_carte (id_autori_carte, cod_carte,cod_autor) VALUES
('AC8','C8','AUTOR8');
INSERT INTO autori_carte (id_autori_carte, cod_carte,cod_autor) VALUES
('AC9','C9','AUTOR9');
INSERT INTO autori_carte (id_autori_carte, cod_carte,cod_autor) VALUES
('AC10','C10','AUTOR10');
INSERT INTO status_carte (id_status, stare_status) VALUES
('STATUS1','inchiriata');
INSERT INTO status_carte (id_status, stare_status) VALUES
('STATUS2','neinchiriata');
INSERT INTO bibliotecar (id_bibliotecar,nume_bibliotecar,prenume_bibliotecar,data_nasterii_bibliotecar,adresa_bibliotecar,telefon_bibliotecar,cod_facultate) VALUES
('B1', 'Georgescu','Ana', '14/AUG/1970','Strada Pinului nr 65','0787654547','F1');
INSERT INTO bibliotecar (id_bibliotecar,nume_bibliotecar,prenume_bibliotecar,data_nasterii_bibliotecar,adresa_bibliotecar,telefon_bibliotecar,cod_facultate) VALUES
('B2', 'Neacsu','Elena', '25/DEC/1975','Calea Mosilor nr 25','0722432154','F2');
INSERT INTO bibliotecar (id_bibliotecar,nume_bibliotecar,prenume_bibliotecar,data_nasterii_bibliotecar,adresa_bibliotecar,telefon_bibliotecar,cod_facultate) VALUES
('B3', 'Predescu','Carmen', '21/JUN/1977','Aleea Grivitei nr 43','0796552134','F3');
INSERT INTO bibliotecar (id_bibliotecar,nume_bibliotecar,prenume_bibliotecar,data_nasterii_bibliotecar,adresa_bibliotecar,telefon_bibliotecar,cod_facultate) VALUES
('B4', 'Stanciu','Georgeta', '17/JUL/1972','Intrarea Bicaz nr 90','0787654231','F4');
INSERT INTO bibliotecar (id_bibliotecar,nume_bibliotecar,prenume_bibliotecar,data_nasterii_bibliotecar,adresa_bibliotecar,telefon_bibliotecar,cod_facultate) VALUES
('B5', 'Stancu','Cornelia', '18/MAY/1981','Rasnov nr 68','0787654551','F5');
INSERT INTO bibliotecar (id_bibliotecar,nume_bibliotecar,prenume_bibliotecar,data_nasterii_bibliotecar,adresa_bibliotecar,telefon_bibliotecar,cod_facultate) VALUES
('B6', 'Nesu','Rodica', '23/JUL/1976','Ramuri Tei nr 2','0787656623','F6');
INSERT INTO bibliotecar (id_bibliotecar,nume_bibliotecar,prenume_bibliotecar,data_nasterii_bibliotecar,adresa_bibliotecar,telefon_bibliotecar,cod_facultate) VALUES
('B7', 'Pistol','Niculina', '20/APR/1979','Bulevardul Magheru nr 54','0787688231','F7');
INSERT INTO bibliotecar (id_bibliotecar,nume_bibliotecar,prenume_bibliotecar,data_nasterii_bibliotecar,adresa_bibliotecar,telefon_bibliotecar,cod_facultate) VALUES
('B8', 'Dumitru','Gabriela', '11/FEB/1985','Calea Victoriei nr 56','0782154231','F8');
INSERT INTO bibliotecar (id_bibliotecar,nume_bibliotecar,prenume_bibliotecar,data_nasterii_bibliotecar,adresa_bibliotecar,telefon_bibliotecar,cod_facultate) VALUES
('B9', 'Negrut','Valeria', '10/NOV/1970','Strada Lipscani nr 21','0987654231','F9');
INSERT INTO bibliotecar (id_bibliotecar,nume_bibliotecar,prenume_bibliotecar,data_nasterii_bibliotecar,adresa_bibliotecar,telefon_bibliotecar,cod_facultate) VALUES
('B10', 'Andreescu','Daniela', '16/JUL/1964','Bulevardul Regina Elisabeta','0987654231','F10');
INSERT INTO bibliotecar (id_bibliotecar,nume_bibliotecar,prenume_bibliotecar,data_nasterii_bibliotecar,adresa_bibliotecar,telefon_bibliotecar,cod_facultate) VALUES
('B11', 'Tanase','Cristina', '22/OCT/1967','Strada Arthur Verona nr 88','0987654231','F11');
INSERT INTO bibliotecar (id_bibliotecar,nume_bibliotecar,prenume_bibliotecar,data_nasterii_bibliotecar,adresa_bibliotecar,telefon_bibliotecar,cod_facultate) VALUES
('B12', 'Mantea','Laura', '28/APR/1969','Bulevardul Pavel Kiseleff nr 22','0987654231','F12');
INSERT INTO bibliotecar (id_bibliotecar,nume_bibliotecar,prenume_bibliotecar,data_nasterii_bibliotecar,adresa_bibliotecar,telefon_bibliotecar,cod_facultate) VALUES
('B13', 'Lupu','Daniela', '25/JAN/1962','Strada Xenefon nr 45','0987654231','F13');
INSERT INTO bibliotecar (id_bibliotecar,nume_bibliotecar,prenume_bibliotecar,data_nasterii_bibliotecar,adresa_bibliotecar,telefon_bibliotecar,cod_facultate) VALUES
('B14', 'Albu','Cristina', '14/JUL/1965','Strada Trandafirului nr 10','0987654231','F14');
INSERT INTO bibliotecar (id_bibliotecar,nume_bibliotecar,prenume_bibliotecar,data_nasterii_bibliotecar,adresa_bibliotecar,telefon_bibliotecar,cod_facultate) VALUES
('B15', 'Dimian','Alexandra', '12/NOV/1975','Strada Libertatii nr 3','0987654231','F15');