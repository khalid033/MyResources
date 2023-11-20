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
INSERT INTO utilisateur ( userID , nomUtilisateur , Mail)
VALUES (1 , 'khalid' , 'khalid@gmail.com');
