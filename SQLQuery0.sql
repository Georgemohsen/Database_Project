use BookShop
CREATE TABLE Section (
Section_ID INT NOT NULL,
Section_Name VARCHAR(50) NOT NULL
PRIMARY KEY (Section_ID)
);


CREATE TABLE Publisher (
Publisher_ID INT NOT NULL,
Publisher_Name VARCHAR(120) NOT NULL,
PRIMARY KEY (Publisher_ID)

);

CREATE TABLE CD (
Item_ID INT NOT NULL,
Price INT NOT NULL,
CD_Name VARCHAR(50) NOT NULL,
Section_ID INT REFERENCES Section(Section_ID),
Publisher_ID INT REFERENCES Publisher (Publisher_ID) 
PRIMARY KEY (Item_ID)
);