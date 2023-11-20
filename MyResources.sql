CREATE DATABASE MyResources
CREATE TABLE Utilisateur ( userID INT PRIMARY KEY , nomUtilisateur VARCHAR (20) , Mail VARCHAR (40) )
CREATE TABLE Squad ( SquadID INT PRIMARY KEY )
CREATE TABLE Projet ( ProjetID INT PRIMARY KEY , NomProjet VARCHAR (20) , Description VARCHAR (100) , Date_Debut DATE , Date_Fin DATE )
CREATE TABLE Ressource ( RessourceId INT PRIMARY KEY )
CREATE TABLE Catégorie ( CategoryID INT PRIMARY KEY , CategoryName VARCHAR (20) )
CREATE TABLE Subcategory ( SubcategoryID INT PRIMARY KEY )