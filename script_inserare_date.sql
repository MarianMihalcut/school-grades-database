-- Tabela Studenti(cu autoincrement)
insert into Studenti values(NULL, 'Popescu', 'Maria-Ioana', '6040501123456', TO_DATE('01/05/2004', 'DD/MM/YYYY'), 'popescu.maria@yahoo.com', '0721123456');

insert into Studenti(id_student, nume_student, prenume_student, CNP, data_nasterii, email)
    values(NULL, 'Mihalcut', 'Marian-Madalin', '5040424270826','24-APR-2004','marian-madalin.mihalcut@student.tuiasi.ro');

insert into Studenti(id_student, nume_student, prenume_student, CNP, data_nasterii, telefon)
    values(NULL, 'Ionescu', 'Andrei-Mihai', '5030701231453', TO_DATE('01/07/2003','DD/MM/YYYY'),'0732123956');

insert into Studenti values(NULL, 'Popa', 'Elena-Alina', '6020303123456', TO_DATE('2002-03-03', 'YYYY-MM-DD'), 'popa.elena@student.tuiasi.ro', '0743275621');
--Student din Moldova(nu se adauga CNP-ul in format romanesc)
insert into Studenti values(NULL, 'Ursachi','Alexei', '5051019231269', TO_DATE('2005-10-19','YYYY-MM-DD'), 'ursachi_alexei@gmail.com','3731921123');

insert into Studenti values(NULL, 'Petrila','Alexandra','6060814243520', TO_DATE('2006-08-14','YYYY-MM-DD'), 'alexandra.petrila@student.tuiasi.ro','0721345678');

insert into Studenti values(NULL, 'Ardeleanu','Robert','5010113657891', TO_DATE('2001-01-13','YYYY-MM-DD'), 'ardeleanu-robert@gmail.com','0770823431');


-- Tabela Detalii_Student (cu cheie primara din tabela Studenti)
insert into Detalii_Student values(
    (select id_student from Studenti where nume_student='Popescu' and prenume_student='Maria-Ioana'),
    8321,'H',123456
);

insert into Detalii_Student values(
    (select id_student from Studenti where nume_student='Mihalcut' and prenume_student='Marian-Madalin'),
    1543,'H',124765
);

insert into Detalii_Student values(
    (select id_student from Studenti where nume_student='Ionescu' and prenume_student='Andrei-Mihai'),
    2345,'H',231785
);

insert into Detalii_Student values(
    (select id_student from Studenti where nume_student='Popa' and prenume_student='Elena-Alina'),
    1980,'D',582616
);

insert into Detalii_Student values(
    (select id_student from Studenti where nume_student='Ursachi' and prenume_student='Alexei'),
    2025,'C',286833
);

insert into Detalii_Student values(
    (select id_student from Studenti where nume_student='Petrila' and prenume_student='Alexandra'),
    8991,'I',967473
);

insert into Detalii_Student values(
    (select id_student from Studenti where nume_student='Ardeleanu' and prenume_student='Robert'),
    9976,'M',856367
);


-- Tabela Grupe(fara autoincrement deoarece cheia primara e un sir de caractere)
insert into Grupe(id_grupa,specializare) values('1108A','CTI');

insert into Grupe(id_grupa,facultate) values('1202B','AC');

insert into Grupe(id_grupa) values('1310B');

insert into Grupe values('1402A','IS','TUIASI-AC');

insert into Grupe values('SSC-I-1B','M-C','AC');

insert into Grupe values('DSWT-II-1A','M-C','TUIASI-AC');


-- Tabela Studenti_Grupe
insert into Studenti_Grupe values (
    (select id_student from studenti where nume_student='Popescu' and prenume_student='Maria-Ioana'),
    (select id_grupa from grupe where id_grupa='1310B'),
    '2025-2026',3,'licenta'); 

insert into Studenti_Grupe values (
    (select id_student from studenti where nume_student='Mihalcut' and prenume_student='Marian-Madalin'),
    (select id_grupa from grupe where id_grupa='1310B'),
    '2025-2026',3,'licenta'); 

insert into Studenti_Grupe values (
    (select id_student from studenti where nume_student='Ionescu' and prenume_student='Andrei-Mihai'),
    (select id_grupa from grupe where id_grupa='1402A'),
    '2025-2026',4,'licenta'); 

insert into Studenti_Grupe values (
    (select id_student from studenti where nume_student='Popa' and prenume_student='Elena-Alina'),
    (select id_grupa from grupe where id_grupa='SSC-I-1B'),
    '2025-2026',1,'master'); 

insert into Studenti_Grupe values (
    (select id_student from studenti where nume_student='Ursachi' and prenume_student='Alexei'),
    (select id_grupa from grupe where id_grupa='1202B'),
    '2025-2026',2,'licenta'); 

insert into Studenti_Grupe values (
    (select id_student from studenti where nume_student='Petrila' and prenume_student='Alexandra'),
    (select id_grupa from grupe where id_grupa='1108A'),
    '2025-2026',1,'licenta'); 

insert into Studenti_Grupe values (
    (select id_student from studenti where nume_student='Ardeleanu' and prenume_student='Robert'),
    (select id_grupa from grupe where id_grupa='DSWT-II-1A'),
    '2024-2025',2,'master'); 


-- Tabela Discipline(cu autoincrement)
--nu garantez ca creditele sunt cele din realitate
--pt anul I,CTI
insert into Discipline values(NULL,'PC',1,5);
insert into Discipline values(NULL,'AM',1,5);
insert into Discipline values(NULL,'MD',2,4);

--pt anul II,IS
insert into Discipline values(NULL,'ED',1,4);
insert into Discipline values(NULL,'MN',1,5);
insert into Discipline values(NULL,'TO',2,5);

--pt anul III,CTI
insert into Discipline values(NULL,'BD',1,4);
insert into Discipline values(NULL,'RCP',1,2);
insert into Discipline values(NULL,'SDI',2,4);

--pt anul IV,IS
insert into Discipline values(NULL,'RC',1,5);
insert into Discipline values(NULL,'SCR',1,4);

--pt anul I master
insert into Discipline values(NULL,'SSC',1,5);
insert into Discipline values(NULL,'MSHV',1,4);

--pt anul II master
insert into Discipline values(NULL,'IQC',1,4);
insert into Discipline values(NULL,'HPC',1,5);

--Tabela Note
insert into Note values(
    (select id_student from studenti where nume_student='Popescu' and prenume_student='Maria-Ioana'),
    (select id_disciplina from discipline where denumire='BD'),
    10,'Colocviu',NULL
);
insert into Note values(
    (select id_student from studenti where nume_student='Popescu' and prenume_student='Maria-Ioana'),
    (select id_disciplina from discipline where denumire='RCP'),
    9,'Colocviu','Foarte bine'
);
insert into Note values(
    (select id_student from studenti where nume_student='Mihalcut' and prenume_student='Marian-Madalin'),
    (select id_disciplina from discipline where denumire='BD'),
    9,'Laborator',NULL
);
insert into Note values(
    (select id_student from studenti where nume_student='Mihalcut' and prenume_student='Marian-Madalin'),
    (select id_disciplina from discipline where denumire='RCP'),
    8,'Colocviu','Se putea si mai bine daca esalonai sarcinile bine in timpul semestrului'
);

insert into Note values(
    (select id_student from studenti where nume_student='Ionescu' and prenume_student='Andrei-Mihai'),
    (select id_disciplina from discipline where denumire='RC'),
    10,'Examen', NULL
);
insert into Note values(
    (select id_student from studenti where nume_student='Ionescu' and prenume_student='Andrei-Mihai'),
    (select id_disciplina from discipline where denumire='SCR'),
    8,'Examen',NULL
);

insert into Note values(
    (select id_student from Studenti where nume_student='Popa' and prenume_student='Elena-Alina'),
    (select id_disciplina from discipline where denumire='SSC'),
    9,'Laborator', NULL
);
insert into Note values(
    (select id_student from Studenti where nume_student='Popa' and prenume_student='Elena-Alina'),
    (select id_disciplina from discipline where denumire='MSHV'),
    7,'Examen','Sunt notiuni care inca nu le stapanesti, dar chestiile de baza le stii'
);

insert into Note values(
    (select id_student from studenti where nume_student='Ursachi' and prenume_student='Alexei'),
    (select id_disciplina from discipline where denumire='MN'),
    6,'Examen',NULL
);

insert into Note values (
    (select id_student from studenti where nume_student='Petrila' and prenume_student='Alexandra'),
    (select id_disciplina from discipline where denumire='PC'),
    7,'Laborator',NULL
);
insert into Note values (
    (select id_student from studenti where nume_student='Petrila' and prenume_student='Alexandra'),
    (select id_disciplina from discipline where denumire='AM'),
    8,'Examen','Felicitari!'
);

insert into Note values(
    (select id_student from studenti where nume_student='Ardeleanu' and prenume_student='Robert'),
    (select id_disciplina from discipline where denumire='IQC'),
    10,'Examen',NULL
);
insert into Note values(
    (select id_student from studenti where nume_student='Ardeleanu' and prenume_student='Robert'),
    (select id_disciplina from discipline where denumire='HPC'),
    8,'Examen',NULL
);

--Tabela Profesori
insert into Profesori values (NULL,'Mocanu','Daniel','Conf.','daniel.mocanu@academic.tuiasi.ro'); 

insert into Profesori values (NULL,'Mironeanu','Catalin','S.l.','catalin.mironeanu@academic.tuiasi.ro'); 

insert into Profesori values (NULL,'Andreescu','Marian','Prof.','marian.andreescu@academic.tuiasi.ro'); 

insert into Profesori values (NULL,'Tudorache','Richard','S.l.','richard.tudorache@academic.tuiasi.ro'); 

insert into Profesori values (NULL,'Serban','Elena','Conf.','elena.serban@academic.tuiasi.ro'); 

insert into Profesori values (NULL,'Apetroaiei','Radu','S.l.','radu.apetroaiei@academic.tuiasi.ro');

insert into Profesori values (NULL,'Croitoru','Xenia','S.l.','xenia.croitoru@academic.tuiasi.ro'); 

insert into Profesori values (NULL,'Ifrim','Eduard','Asoc.','eduard.ifrim@academic.tuiasi.ro'); 

insert into Profesori values (NULL,'Petrila','Ion','Prof.','ion.petrila@academic.tuiasi.ro'); 

insert into Profesori values (NULL,'Stan','Alexandru','Asist.','alexandru.stan@academic.tuiasi.ro'); 

--Tabela Discipline_Profesori

insert into Discipline_Profesori values(
    (select id_disciplina from Discipline where denumire='PC'),
    (select id_profesor from Profesori where nume_prof='Stan' and prenume_prof='Alexandru'),
    'Titular Aplicatii'
);

insert into Discipline_Profesori values(
    (select id_disciplina from Discipline where denumire='AM'),
    (select id_profesor from Profesori where nume_prof='Andreescu' and prenume_prof='Marian'),
    'Titular Disciplina'
);

insert into Discipline_Profesori values(
    (select id_disciplina from Discipline where denumire='MD'),
    (select id_profesor from Profesori where nume_prof='Serban' and prenume_prof='Elena'),
    'titular disciplina'
);

insert into Discipline_Profesori values(
    (select id_disciplina from Discipline where denumire='ED'),
    (select id_profesor from Profesori where nume_prof='Petrila' and prenume_prof='Ion'),
    'Titular Disciplina'
);

insert into Discipline_Profesori values(
    (select id_disciplina from Discipline where denumire='MN'),
    (select id_profesor from Profesori where nume_prof='Serban' and prenume_prof='Elena'),
    'titular aplicatii'
);

insert into Discipline_Profesori values(
    (select id_disciplina from Discipline where denumire='TO'),
    (select id_profesor from Profesori where nume_prof='Croitoru' and prenume_prof='Xenia'),
    'Titular Disciplina'
);

insert into Discipline_Profesori values(
    (select id_disciplina from Discipline where denumire='BD'),
    (select id_profesor from Profesori where nume_prof='Mironeanu' and prenume_prof='Catalin'),
    'Titular Disciplina'
);

insert into Discipline_Profesori values(
    (select id_disciplina from Discipline where denumire='RCP'),
    (select id_profesor from Profesori where nume_prof='Tudorache' and prenume_prof='Richard'),
    'Titular Aplicatii'
);

insert into Discipline_Profesori values(
    (select id_disciplina from Discipline where denumire='SDI'),
    (select id_profesor from Profesori where nume_prof='Mocanu' and prenume_prof='Daniel'),
    'Titular Aplicatii'
);

insert into Discipline_Profesori values(
    (select id_disciplina from Discipline where denumire='RC'),
    (select id_profesor from Profesori where nume_prof='Mocanu' and prenume_prof='Daniel'),
    'Titular Disciplina'
);

insert into Discipline_Profesori values(
    (select id_disciplina from Discipline where denumire='SSC'),
    (select id_profesor from Profesori where nume_prof='Ifrim' and prenume_prof='Eduard'),
    'Titular Aplicatii'
);

insert into Discipline_Profesori values(
    (select id_disciplina from Discipline where denumire='IQC'),
    (select id_profesor from Profesori where nume_prof='Apetroaiei' and prenume_prof='Radu'),
    'titular disciplina'
);