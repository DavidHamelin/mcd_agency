--USE [agency]
--GO

---- Saisie des valeurs dans types

--INSERT INTO [dbo].[types] ([type]) VALUES
--('maison'),
--('appartement'),
--('terrain');

---- Saisie des valeurs dans creneau horaire

--INSERT INTO [dbo].[creneaux_horaire] ([creneau]) VALUES
--('9:00'),
--('10:00'),
--('11:00'),
--('14:00'),
--('15:00'),
--('16:00');

---- Selection des créneaux :
--USE [agency]
--GO
--SELECT [creneau] FROM [dbo].[creneaux_horaire]
--GO

---- Saisie des 30 biens :

--USE [agency]
--GO
--INSERT INTO [dbo].[biens_immo] ([nom_bien], [code_postal], [prix], [id_types]) VALUES
--('F2 40m²','76600','51111','1'),
--('F3 98m²','76600','88000','2'),
--('F4 90m²','76600','190000','2'),
--('F1 22m²','76600','78000','1'),
--('F2 38m²','76600','80000','1'),
--('F3 66m²','76600','130000','2'),
--('F2 37m²','76600','90000','2'),
--('F1 22m²','76600','44000','1'),
--('F4 88m²','76600','160000','1'),
--('F5 101m²','76600','220000','2'),
--('F2 50m²','76600','110000','2'),
--('F2 42m²','76600','119000','1'),
--('F4 88m²','76600','190000','2'),
--('F3 62m²','76600','150000','2'),
--('F1 18m²','76600','60000','1'),
--('F2 28m²','76600','99000','1'),
--('F3 58m²','76600','110000','1'),
--('F6 144m²','76600','350000','1'),
--('F7 200m²','76600','600000','1'),
--('F8 300m²','76600','800000','1'),
--('F3 65m²','76600','400000','1'),
--('F4 101m²','76600','250000','2'),
--('1200m²','76600','100000','3'),
--('800m²','76600','60000','3'),
--('950m²','76600','40000','3'),
--('2200m²','76600','180000','3'),
--('1800m²','76600','200000','3'),
--('1200m²','76600','150000','3'),
--('1900m²','76600','120000','3'),
--('1400m²','76600','170000','3');


---- Saisie de 20 clients


--USE [agency]
--GO
--INSERT INTO [dbo].[clients] ([nom], [prenom], [date_naissance], [mail], [budget], [id_types]) VALUES

--('Dupont','Bob','05/11/72', 'dupont@hotmail.fr', '350000','1'),
--('Doe','John','15/01/91', 'john.doe@laposte.com', '120000','2'),
--('Latune','Jean-Eude','17/03/74', 'jesuisriche@gmail.com', '400000','3'),
--('Bob','Bob','25/04/31', 'bobbob@bob.com', '210000','2'),
--('Le gaulois','Provencal','22/11/30', 'cestpasfaux@kaamelot.fr', '123941','1'),
--('Willis','Bruce','14/02/80', 'bruce.willis@filmdaction.com', '2000000','2'),
--('Michel','Jean-marc','26/06/66', 'jmm@yahoo.com', '154000','1'),
--('2','Jean-paul','31/03/40', 'lepape@vatican.com', '300000','3'),
--('Potter','Garry','07/07/82', 'presque@padlourd.uk', '400000','1'),
--('Skaiwalkeur','Luc','31/05/77', 'luc@gmail.com', '187000','2'),
--('Moulin','Edouard','25/11/01', 'E.Moulin@hotmail.fr', '250000','3'),
--('Lahaie','Pierre-edouard-jean-jaques','13/12/71', 'PEJJL@yahoo.fr', '3457880','1'),
--('Aguin','Zo','29/09/93', 'Z.aguin@gmail.com', '450800','2'),
--('Babar','Michel','09/12/09', 'M.Babar@wanadoo.fr', '123321','2'),
--('Poisson','Jaques','15/12/00', 'CommandantPoisson@gmail.com', '13455550','1'),
--('Moissoneuse-Batteuse','Pierre','15/11/98', 'farmingsimlateur-addict@yahoo.com', '300000','3'),
--('Michel','Francois','01/01/01', 'm.francois@orange.com', '511000','2'),
--('Pierre','Pierre','13/08/1974', 'Pierrepierre@pierre.com', '5000','1'),
--('Uber','Ibrahim','03/03/03', 'U.ibrahim@gmail.fr', '420000','2'),
--('Wood','Bolly','11/11/11', 'bollywood@gmail.com', '600000','3');

--USE [agency]
--GO
--ALTER TABLE [dbo].[clients]
--DROP COLUMN [id_rendez_vous]
--GO

---- Saisie de 10 RDV

--USE [agency]
--GO

--('20/02/2019','14','2','22'),
--('20/03/2019','1','1','1'),
--('01/04/2019','19','3','3'),
--('23/02/2019','13','1','2'),
--('24/02/2019','2','2','11'),
--('17/02/2019','6','6','24'),
--('17/03/2019','9','4','17'),
--('02/04/2019','4','6','30'),
--('21/04/2019','3','6','30'),
--('17/03/2019','7','5','14');
