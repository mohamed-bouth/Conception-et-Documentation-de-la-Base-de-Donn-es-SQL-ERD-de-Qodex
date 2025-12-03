# Qodex — README

## Présentation

Ce dépôt contient la conception et l'implémentation SQL de la base de données **Qodex**, une plateforme de gestion de hackathons / quiz. Le but : fournir un schéma relationnel clair, des scripts SQL exécutables, et des requêtes demandées (CRUD + analyses). Ce README est basé sur le brief fourni et explique le contenu du dépôt.

## Structure du dépôt

```
README.md
sql/
  ├─ schema.sql        -- création des tables et contraintes
  ├─sql fichier      -- inserts d'exemple et  toutes les requêtes demandées (1..23 + bonus)
erd/                  -- fichiers ERD (images ou .drawio)
presentation/         -- slides + notes pour la présentation de 10 minutes
```

## Création de la base de données

```sql
CREATE DATABASE IF NOT EXISTS qodex CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE qodex;
```

## Tables principales

* `utilisateurs` : id_utilisateur, nom, email (unique), motdepasse, role (enseignant/etudiant)
* `categories` : id_categorie, nom_categorie
* `quiz` : id_quiz, titre_quiz, description, id_categorie, id_enseignant, duree_minutes, date_creation
* `questions` : id_question, texte_question, reponse_correcte, points, id_quiz
* `resultats` : id_resultat, score, date_passage, id_etudiant, id_quiz

## Relations clés

* Un enseignant crée plusieurs quiz.
* Un quiz appartient à une catégorie.
* Un quiz contient plusieurs questions.
* Un étudiant passe plusieurs quiz et obtient des résultats.

## Recommandations

* **Sécurité** : stocker les mots de passe hachés (bcrypt/argon2).
* **Indexation** : quiz(id_categorie), quiz(id_enseignant), resultats(id_quiz,id_etudiant), resultats(score)
* **Contraintes** : UNIQUE sur email, FOREIGN KEY avec ON UPDATE/DELETE approprié.
* **Performance** : tests de charge, optimisation des requêtes SELECT, JOIN et WHERE.
* **Maintenance** : versionner les scripts SQL, ajouter journaux d'audit.

## Requêtes SQL

Toutes les requêtes (1 à 23) et les bonus (meilleur score, nombre d'étudiants par quiz, date_creation) sont dans `sql/queries.sql`. Les scripts d'insertion d'exemple sont dans `sql/inserts.sql`.

## ERD

Le diagramme entité-relation est dans le dossier `erd/` (format PNG ou Draw.io). Il montre toutes les tables, leurs clés primaires et étrangères, et les relations cardinalités.

## Présentation (10 min)

* 0:00–0:30 : Introduction et usage de la BDD.
* 0:30–3:30 : Diagramme ERD.
* 3:30–6:00 : Explication du schéma SQL.
* 6:00–9:00 : Démonstration des requêtes SQL (ex: insertion quiz, affichage meilleurs scores).
* 9:00–10:00 : Conclusion et perspectives (scalabilité, audit, recherche full-text).

## Livrables GitHub

* `README.md`
* `sql fichier`
* Diagramme ERD dans `erd/`

*Fait par* : mohamed bouthhandoust— Conception base Qodex.
