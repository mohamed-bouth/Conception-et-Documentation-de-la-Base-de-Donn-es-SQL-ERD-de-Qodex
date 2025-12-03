-- USE Qodex;
-- CREATE TABLE utilisateurs (
--     id_utilisateur INT AUTO_INCREMENT PRIMARY KEY,
--     nom VARCHAR(255) NOT NULL,
--     email VARCHAR(255) NOT NULL UNIQUE,
--     role VARCHAR(255) NOT NULL,
--     motdepasse VARCHAR(255) NOT NULL
-- );


-- CREATE TABLE categories (
--     id_categorie INT AUTO_INCREMENT PRIMARY KEY,
--     nom_categorie VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE quiz (
--     id_quiz INT AUTO_INCREMENT PRIMARY KEY,
--     titre_quiz VARCHAR(255) NOT NULL,
--     description VARCHAR(255) NOT NULL,
--     id_categorie INT NOT NULL,
--     id_enseignant INT NOT NULL,
--     duree_minutes INT NOT NULL,
--     FOREIGN KEY (id_categorie) REFERENCES categories(id_categorie),
--     FOREIGN KEY (id_enseignant) REFERENCES utilisateurs(id_utilisateur)
-- );

-- CREATE TABLE questions (
--     id_question INT AUTO_INCREMENT PRIMARY KEY,
--     texte_question VARCHAR(255) NOT NULL,
--     reponse_correcte VARCHAR(255) NOT NULL,
--     points INT NOT NULL,
--     id_quiz INT NOT NULL,
--     FOREIGN KEY (id_quiz) REFERENCES quiz(id_quiz)
-- );


-- CREATE TABLE resultats (
--     id_resultat INT AUTO_INCREMENT PRIMARY KEY,
--     score DECIMAL (5,2) NOT NULL,
--     date_passage DATE,
--     id_etudiant INT NOT NULL,
--     id_quiz INT NOT NULL,
--     FOREIGN KEY (id_etudiant) REFERENCES utilisateurs(id_utilisateur),
--     FOREIGN KEY (id_quiz) REFERENCES quiz(id_quiz)
-- );


-- insert  categories (nom_categorie) 
-- value("arabic"),("english"),("french");
-- select * from categories;

-- INSERT INTO utilisateurs (nom, email, motdepasse, role) VALUES
-- ('Amine Hmidouche', 'amine.hmidouche@mail.com', 'pass123', 'enseignant'),
-- ('Sara Benali', 'sara.benali@mail.com', 'pass123', 'etudiant'),
-- ('Youssef El Fassi', 'youssef.fassi@mail.com', 'pass123', 'enseignant'),
-- ('Leila Zahra', 'leila.zahra@mail.com', 'pass123', 'etudiant'),
-- ('Mohamed Idrissi', 'mohamed.idrissi@mail.com', 'pass123', 'enseignant'),
-- ('Fatima El Khattabi', 'fatima.khattabi@mail.com', 'pass123', 'etudiant'),
-- ('Hassan Bouziane', 'hassan.bouziane@mail.com', 'pass123', 'enseignant'),
-- ('Imane Chikhi', 'imane.chikhi@mail.com', 'pass123', 'etudiant'),
-- ('Omar Lahlou', 'omar.lahlou@mail.com', 'pass123', 'enseignant'),
-- ('Nadia Bensalem', 'nadia.bensalem@mail.com', 'pass123', 'etudiant');

-- INSERT INTO quiz (titre_quiz, description, id_categorie, id_enseignant, duree_minutes)
-- VALUES ("Algèbre – Équations simples","Quiz portant sur la résolution des équations linéaires, les expressions et les variables",4,5,2);

-- insert into questions (texte_question,reponse_correcte,points,id_quiz)
-- VALUES
-- ('Quel est le résultat de 7 × 8 ?', '56', 2, 1),
-- ('Résoudre l’équation : 3x + 5 = 20', 'x = 5', 3, 1),
-- ('Quelle est la longueur de l’hypoténuse d’un triangle rectangle de côtés 3 cm et 4 cm ?', '5 cm', 2, 1),
-- ('Quelle est la dérivée de f(x) = 5x² + 3x - 7 ?', 'f''(x) = 10x + 3', 3, 1),
-- ('Convertir 0,75 en fraction simplifiée.', '3/4', 1, 1);

-- insert into resultats (score,date_passage,id_etudiant,id_quiz)
-- values(18,'2025-12-02',2,1);
-- SELECT * FROM qodex.resultats;


-- Requête 1 : Ajouter un nouveau quiz créé par un enseignant

-- INSERT INTO quiz (titre_quiz,description,id_categorie,id_enseignant,duree_minutes)
-- VALUES ('English Grammar Basics','This quiz tests students on basic English grammar: tenses, articles, prepositions, and sentence structure',2,3,30);

-- Requête 2 : Modifier la durée d'un quiz existant

-- update quiz
-- set duree_minutes = 45
-- where id_quiz = 1;

-- Requête 3 : Afficher tous les utilisateurs

-- select * from utilisateurs;

-- Requête 4 : Afficher uniquement les noms et emails des utilisateurs

-- select nom,email from utilisateurs;

-- Requête 5 : Afficher tous les quiz
-- select * from quiz;

-- Requête 6 : Afficher uniquement les titres des quiz

-- select titre_quiz from quiz;

-- Requête 7 : Afficher toutes les catégories

-- select * from categories;

-- Requête 8 : Afficher les utilisateurs qui sont enseignants

-- select * from utilisateurs
-- where role = "enseignant";

-- Requête 9 : Afficher les utilisateurs qui sont étudiants

-- select * from utilisateurs
-- where role = "etudiant";

-- Requête 10 : Afficher les quiz de durée supérieure à 30 minutes

-- select * from quiz
-- where duree_minutes > 30;

-- Requête 11 : Afficher les quiz de durée inférieure ou égale à 45 minutes

-- select * from quiz
-- where duree_minutes <= 45;

-- Requête 12 : Afficher les questions valant plus de 5 points

-- select * from questions
-- where points > 5;

-- Requête 13 : Afficher les quiz de durée entre 20 et 40 minutes

-- select * from quiz
-- where duree_minutes >= 20 and duree_minutes <= 40;

-- Requête 14 : Afficher les résultats avec un score supérieur ou égal à 60

-- select * from resultats
-- where score >= 60;

-- Requête 15 : Afficher les résultats avec un score inférieur à 50

-- select * from resultats
-- where score < 50;

-- Requête 16 : Afficher les questions valant entre 5 et 15 points

-- select * from questions
-- where points <= 15 and points >= 5;

-- Requête 17 : Afficher les quiz créés par l'enseignant avec id_enseignant = 1

-- select * from quiz
-- where id_enseignant = 1

-- Requête 18 : Afficher tous les quiz triés par durée (du plus court au plus long)

-- select * from quiz
-- order by duree_minutes asc;

-- Requête 19 : Afficher tous les résultats triés par score (du plus élevé au plus faible)

-- select * from resultats
-- order by score desc;

-- Requête 20 : Afficher les 5 meilleurs scores

-- select * from resultats
-- order by score desc limit 5;

-- Requête 21 : Afficher les questions triées par points (du plus faible au plus élevé)

-- select * from questions
-- order by points asc;

-- Requête 22 : Afficher les 3 derniers résultats (triés par date_passage décroissante)

-- select * from resultats
-- order by date_passage desc limit 3;

-- Requête 23 : Afficher le nom de chaque quiz avec sa catégorie

-- select quiz.titre_quiz , categories.nom_categorie 
-- from quiz join categories on quiz.id_categorie = categories.id_categorie;

-- bonus:
-- Ajouter une requête qui compte combien d'étudiants ont passé chaque quiz

-- select count(*) as total from resultats
-- where id_quiz = 1

-- Créer une requête qui affiche le meilleur score pour chaque quiz

-- SELECT q.titre_quiz, r.score
-- FROM quiz q
-- JOIN (
--     SELECT id_quiz, MAX(score) AS best_score
--     FROM resultats
--     GROUP BY id_quiz
-- ) AS m ON q.id_quiz = m.id_quiz
-- JOIN resultats r ON r.id_quiz = m.id_quiz AND r.score = m.best_score;
    
-- Ajouter une colonne date_creation dans la table Quiz

-- use qodex;
-- alter table quiz
-- add column date_creation date;



