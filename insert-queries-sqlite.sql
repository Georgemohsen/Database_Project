BEGIN TRANSACTION;
INSERT INTO `Written` (Item_ID,Title,Magazine_Flag,Released_Date,Book_Flag,Author_ID,NumberOfPages) VALUES (1,'Gray''s Anatomy',NULL,NULL,1,5,1200);
INSERT INTO `Written` (Item_ID,Title,Magazine_Flag,Released_Date,Book_Flag,Author_ID,NumberOfPages) VALUES (2,'Calculus',NULL,NULL,1,6,900);
INSERT INTO `Written` (Item_ID,Title,Magazine_Flag,Released_Date,Book_Flag,Author_ID,NumberOfPages) VALUES (3,'Database Systems',NULL,NULL,1,7,1000);
INSERT INTO `Written` (Item_ID,Title,Magazine_Flag,Released_Date,Book_Flag,Author_ID,NumberOfPages) VALUES (4,'الأيام',NULL,NULL,1,2,600);
INSERT INTO `Written` (Item_ID,Title,Magazine_Flag,Released_Date,Book_Flag,Author_ID,NumberOfPages) VALUES (5,'Hamlet',NULL,NULL,1,3,550);
INSERT INTO `Written` (Item_ID,Title,Magazine_Flag,Released_Date,Book_Flag,Author_ID,NumberOfPages) VALUES (6,'Oliver Twist',NULL,NULL,1,4,500);
INSERT INTO `Written` (Item_ID,Title,Magazine_Flag,Released_Date,Book_Flag,Author_ID,NumberOfPages) VALUES (7,'ميكى',1,'2018-12-13',NULL,NULL,25);
INSERT INTO `Written` (Item_ID,Title,Magazine_Flag,Released_Date,Book_Flag,Author_ID,NumberOfPages) VALUES (8,'ميكى',1,'2018-12-20',NULL,NULL,25);
INSERT INTO `Section` (ID,SName) VALUES (1,'Engineering');
INSERT INTO `Section` (ID,SName) VALUES (2,'Medicine');
INSERT INTO `Section` (ID,SName) VALUES (3,'Literature');
INSERT INTO `Section` (ID,SName) VALUES (4,'Comics & Cartoons');
INSERT INTO `Publisher` (ID,Publisher_Name) VALUES (1,'Al Ahram');
INSERT INTO `Publisher` (ID,Publisher_Name) VALUES (2,'O''Reilly');
INSERT INTO `Publisher` (ID,Publisher_Name) VALUES (3,'Pearson');
INSERT INTO `Publisher` (ID,Publisher_Name) VALUES (4,'Penguin');
INSERT INTO `Publisher` (ID,Publisher_Name) VALUES (5,'Nahdet Masr');
INSERT INTO `Publisher` (ID,Publisher_Name) VALUES (6,'Disney');
INSERT INTO `Member` (SSN,First_Name,Last_Name,Phone,End_Membership_Date,Age,Adr) VALUES (111,'Amira','Nagy','01001234567','5/1/2019',26,'8 Main St.');
INSERT INTO `Member` (SSN,First_Name,Last_Name,Phone,End_Membership_Date,Age,Adr) VALUES (222,'Adel','Zaki','01221234567','4/2/2019',22,'13 Main Sq.');
INSERT INTO `Member` (SSN,First_Name,Last_Name,Phone,End_Membership_Date,Age,Adr) VALUES (333,'Ramy','Fouad','01991234567','29/12/2018',17,'3 Green St.');
INSERT INTO `Member` (SSN,First_Name,Last_Name,Phone,End_Membership_Date,Age,Adr) VALUES (444,'Rania','Ramzy','01001234567','21/3/2019',12,'9 Blue St.');
INSERT INTO `Item` (ID,Publisher_ID,Section_ID) VALUES (1,3,2);
INSERT INTO `Item` (ID,Publisher_ID,Section_ID) VALUES (2,2,1);
INSERT INTO `Item` (ID,Publisher_ID,Section_ID) VALUES (3,2,1);
INSERT INTO `Item` (ID,Publisher_ID,Section_ID) VALUES (4,1,3);
INSERT INTO `Item` (ID,Publisher_ID,Section_ID) VALUES (5,4,3);
INSERT INTO `Item` (ID,Publisher_ID,Section_ID) VALUES (6,4,3);
INSERT INTO `Item` (ID,Publisher_ID,Section_ID) VALUES (7,5,4);
INSERT INTO `Item` (ID,Publisher_ID,Section_ID) VALUES (8,5,4);
INSERT INTO `Item` (ID,Publisher_ID,Section_ID) VALUES (9,6,4);
INSERT INTO `Item` (ID,Publisher_ID,Section_ID) VALUES (10,6,4);
INSERT INTO `CD` (Item_ID,CD_Name) VALUES (9,'Oliver Twist - The movie');
INSERT INTO `CD` (Item_ID,CD_Name) VALUES (10,'Tom and Jerry');
INSERT INTO `Borrows` (SSN,Item_ID,Borrow_Date,Return_Date) VALUES (111,1,'2018-12-01',NULL);
INSERT INTO `Borrows` (SSN,Item_ID,Borrow_Date,Return_Date) VALUES (111,6,'2018-07-05','2018-07-19');
INSERT INTO `Borrows` (SSN,Item_ID,Borrow_Date,Return_Date) VALUES (222,2,'2018-04-01','2018-04-10');
INSERT INTO `Borrows` (SSN,Item_ID,Borrow_Date,Return_Date) VALUES (222,3,'2018-11-25',NULL);
INSERT INTO `Borrows` (SSN,Item_ID,Borrow_Date,Return_Date) VALUES (333,6,'2018-11-1','2018-11-16');
INSERT INTO `Borrows` (SSN,Item_ID,Borrow_Date,Return_Date) VALUES (333,5,'2018-11-16','2018-11-26');
INSERT INTO `Borrows` (SSN,Item_ID,Borrow_Date,Return_Date) VALUES (333,4,'2018-26-11','2018-12-05');
INSERT INTO `Author` (ID,Author_Name) VALUES (2,'Taha Hussein');
INSERT INTO `Author` (ID,Author_Name) VALUES (3,'William Shakespeare');
INSERT INTO `Author` (ID,Author_Name) VALUES (4,'Charles Dickens');
INSERT INTO `Author` (ID,Author_Name) VALUES (5,'Henry Gray');
INSERT INTO `Author` (ID,Author_Name) VALUES (6,'James Stewart');
INSERT INTO `Author` (ID,Author_Name) VALUES (7,'Ramez Elmasri');
COMMIT;
