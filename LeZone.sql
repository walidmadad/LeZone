CREATE TABLE Clients(
id_client INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Civilite VARCHAR(50),
Nom VARCHAR(255),
Prenom VARCHAR(255),
Email VARCHAR(50),
Telephone VARCHAR(50),
Adresse VARCHAR(50),
CP VARCHAR(50),
Ville VARCHAR(50),
Date_de_naissance DATE) ;

CREATE TABLE Livreurs(
id_Livreur INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Civilite VARCHAR(50),
Nom VARCHAR(50),
Prenom VARCHAR(50),
Email VARCHAR(50),
Telephone VARCHAR(50),
Adresse VARCHAR(50),
CP VARCHAR(50),
Ville VARCHAR(50),
Date_de_naissance DATE) ;

CREATE TABLE Vehicules(
Id_vehicule INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
modele VARCHAR(50),
marque VARCHAR(50),
immatriculation VARCHAR(50)) ;

CREATE TABLE Article(
Id_article INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Nom_article VARCHAR(255),
P_U DECIMAL);

CREATE TABLE Commandes(
id_commande INT NOT NULL AUTO_INCREMENT,
id_client INT NOT NULL ,
id_livreur INT NOT NULL,
id_vehicule INT NOT NULL,
PRIMARY KEY(id_commande, id_client, id_livreur, id_vehicule),
FOREIGN KEY(id_client) REFERENCES Clients(id_client),
FOREIGN KEY(id_livreur) REFERENCES Livreurs(id_livreur),
FOREIGN KEY(id_vehicule) REFERENCES Vehicules(id_vehicule));

CREATE TABLE Contiennent(
id_commande INT NOT NULL ,
id_article INT NOT NULL,
Quantite INT,
PRIMARY KEY(id_article, id_commande),
FOREIGN KEY(id_commande) REFERENCES Commandes(id_Commande),
FOREIGN KEY(id_article) REFERENCES Article(id_article));

INSERT INTO Vehicules(modele, marque, immatriculation) VALUES("Scooter", "Beta", "AE-255-EA");
INSERT INTO Vehicules(modele, marque, immatriculation) VALUES("Peugeot", "C3", "AE-257-EE");
INSERT INTO Vehicules(modele, marque, immatriculation) VALUES("Peugeot", "C1", "AE-155-AA");

INSERT INTO Clients(Nom, prenom, civilite, email, telephone, Adresse, cp, ville, date_de_naissance) VALUES("Client1","Client1","monsieur","test@test.com","+33 7 11 22 33 44", "12 rue test","62200", "boulogne sur test", "1900-01-01");
INSERT INTO Clients(Nom, prenom, civilite, email, telephone, Adresse, cp, ville, date_de_naissance) VALUES("Client2","Client2","monsieur","test@test.com","+33 7 11 22 33 44", "12 rue test","62200", "boulogne sur test", "1900-01-01");
INSERT INTO Clients(Nom, prenom, civilite, email, telephone, Adresse, cp, ville, date_de_naissance) VALUES("Client3","Client3","monsieur","test@test.com","+33 7 11 22 33 44", "12 rue test","62200", "boulogne sur test", "1900-01-01");

INSERT INTO Livreurs(Nom, prenom, civilite, email, telephone, Adresse, cp, ville, date_de_naissance) VALUES("Livreur1","Livreur1","monsieur","test@test.com","+33 7 11 22 33 44", "12 rue test","62200", "boulogne sur test", "1900-01-01");
INSERT INTO Livreurs(Nom, prenom, civilite, email, telephone, Adresse, cp, ville, date_de_naissance) VALUES("Livreur2","Livreur2","monsieur","test@test.com","+33 7 11 22 33 44", "12 rue test","62200", "boulogne sur test", "1900-01-01");
INSERT INTO Livreurs(Nom, prenom, civilite, email, telephone, Adresse, cp, ville, date_de_naissance) VALUES("Livreur3","Livreur3","monsieur","test@test.com","+33 7 11 22 33 44", "12 rue test","62200", "boulogne sur test", "1900-01-01");

INSERT INTO Article(nom_article, P_U) VALUES("Pizza 4 Fromages", "10");
INSERT INTO Article(nom_article, P_U) VALUES("Pizza Margaretta", "13.5");
INSERT INTO Article(nom_article, P_U) VALUES("Pizza Welsh", "12");

INSERT INTO Commandes(id_client, id_livreur, id_vehicule) VALUES(1,2,1);
INSERT INTO Commandes(id_client, id_livreur, id_vehicule) VALUES(2,3,2);
INSERT INTO Commandes(id_client, id_livreur, id_vehicule) VALUES(3,1,1);

INSERT INTO Contiennent(id_commande, id_article, Quantite) VALUES(1,2,15);
INSERT INTO Contiennent(id_commande, id_article, Quantite) VALUES(2,3,18);
INSERT INTO Contiennent(id_commande, id_article, Quantite) VALUES(3,1,10);

