CREATE DATABASE MyResources
CREATE TABLE Utilisateur ( userID INT PRIMARY KEY , nomUtilisateur VARCHAR (20) , Mail VARCHAR (40) )
CREATE TABLE Squad ( SquadID INT PRIMARY KEY )
CREATE TABLE Projet ( ProjetID INT PRIMARY KEY , NomProjet VARCHAR (20) , Description VARCHAR (100) , Date_Debut DATE , Date_Fin DATE )
CREATE TABLE Ressource ( RessourceId INT PRIMARY KEY )
CREATE TABLE Catégorie ( CategoryID INT PRIMARY KEY , CategoryName VARCHAR (20) )
CREATE TABLE Subcategory ( SubcategoryID INT PRIMARY KEY )
ALTER TABLE Squad 
ADD userID INT
ALTER TABLE squad
ADD FOREIGN KEY (userID) REFERENCES utilisateur(userID);
ALTER TABLE squad 
ADD squad_Name VARCHAR (30)
ALTER TABLE squad 
ADD ProjetID INT
ALTER TABLE squad
ADD FOREIGN KEY (ProjetID) REFERENCES projet(ProjetID);
ALTER TABLE ressource 
ADD SquadID INT 
ALTER TABLE ressource
ADD FOREIGN KEY (SquadID) REFERENCES squad(SquadID);
ALTER TABLE ressource 
ADD ProjetID INT
ALTER TABLE ressource
ADD FOREIGN KEY (ProjetID) REFERENCES projet(ProjetID);
ALTER TABLE ressource
ADD SubcategoryID INT 
ALTER TABLE ressource
ADD FOREIGN KEY (SubcategoryID) REFERENCES subcategory(SubcategoryID);
ALTER TABLE catégorie
ADD SubcategoryID INT 
ALTER TABLE catégorie
ADD FOREIGN KEY (SubcategoryID) REFERENCES subcategory(SubcategoryID);
ALTER TABLE utilisateur 
ADD role VARCHAR (10)
INSERT INTO projet ( ProjetID , NomProjet , Description , Date_Debut , Date_Fin)
VALUES( 1 , 'project1' ,'this is first project' , 2023-11-15 , 2023-11-23);
INSERT INTO projet ( ProjetID , NomProjet , Description , Date_Debut , Date_Fin)
VALUES( 2 , 'project2' ,'this is second project' , 2023-11-02 , 2023-11-24);
INSERT INTO projet ( ProjetID , NomProjet , Description , Date_Debut , Date_Fin)
VALUES( 3 , 'project3' ,'this is third project' , 2023-11-25 , 2023-11-29);
INSERT INTO projet ( ProjetID , NomProjet , Description , Date_Debut , Date_Fin)
VALUES( 4 , 'project4' ,'this is number 4 project' , 2023-11-01 , 2023-11-30);
INSERT INTO subcategory ( SubcategoryID)
VALUE ( 1);
INSERT INTO subcategory ( SubcategoryID)
VALUE ( 2);
INSERT INTO subcategory ( SubcategoryID)
VALUE ( 3);
INSERT INTO subcategory ( SubcategoryID)
VALUE ( 4);
INSERT INTO catégorie ( CategoryID , CategoryName , SubcategoryID)
VALUES(1 , 'category1' , 1);
INSERT INTO catégorie ( CategoryID , CategoryName , SubcategoryID)
VALUES(2 , 'category2' , 2);
INSERT INTO catégorie ( CategoryID , CategoryName , SubcategoryID)
VALUES(3 , 'category3' , 3);
INSERT INTO catégorie ( CategoryID , CategoryName , SubcategoryID)
VALUES(4 , 'category4' , 4);
INSERT INTO utilisateur (userID , nomUtilisateur  , Mail, role)
VALUES( 1 ,'utilisateur1', 'utilisateur1@gmail.com', 'Leader');
INSERT INTO utilisateur (userID , nomUtilisateur  , Mail, role)
VALUES( 2 ,'utilisateur2', 'utilisateur2@gmail.com', 'Member');
INSERT INTO utilisateur (userID , nomUtilisateur  , Mail, role)
VALUES( 3 ,'utilisateur3', 'utilisateur3@gmail.com', 'Member');
INSERT INTO utilisateur (userID , nomUtilisateur  , Mail, role)
VALUES( 4 ,'utilisateur4', 'utilisateur4@gmail.com', 'Member');
INSERT INTO squad ( SquadID , userID , squad_Name , ProjetID)
VALUES( 1 , 1 , 'alpha_squad' , 1);
INSERT INTO squad ( SquadID , userID , squad_Name , ProjetID)
VALUES( 2 , 2 , 'HOLD_squad' , 2);
INSERT INTO squad ( SquadID , userID , squad_Name , ProjetID)
VALUES( 3 , 3 , 'PARIS_squad' , 3);
INSERT INTO squad ( SquadID , userID , squad_Name , ProjetID)
VALUES( 4 , 4 , 'CODERS_squad' , 4);
INSERT INTO ressource ( RessourceId , SquadID , ProjetID , SubcategoryID)
VALUES(1 , 1 , 1 , 1);
INSERT INTO ressource ( RessourceId , SquadID , ProjetID , SubcategoryID)
VALUES(2 , 2 , 2 , 2);
INSERT INTO ressource ( RessourceId , SquadID , ProjetID , SubcategoryID)
VALUES(3 , 3 , 3 , 3);
INSERT INTO ressource ( RessourceId , SquadID , ProjetID , SubcategoryID)
VALUES(4 , 4 , 4 , 4);