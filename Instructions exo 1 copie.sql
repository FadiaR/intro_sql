.mode column
.header on
--#######################TABLEAU_USER####################
--1:1
CREATE TABLE `user` (
`id_user` INTEGER PRIMARY KEY AUTOINCREMENT,
`name` TEXT
);


--######################TABLEAU_ARTICLE#######################
--1:N
CREATE TABLE `article` (
`id_article` INTEGER PRIMARY KEY AUTOINCREMENT,
`article` TEXT,
`id_user` INTEGER,
FOREIGN KEY (id_user) REFERENCES user(id_user)
);
--########################TABLEAU_CATEGORY##############
--1:N
CREATE TABLE `category` (
`id_category` INTEGER PRIMARY KEY AUTOINCREMENT,
`categorie` TEXT,
`id_article` INTEGER,
FOREIGN KEY (id_article) REFERENCES article(id_article)
);
--#######################TABLEAU_TAG####################
--1:N
CREATE TABLE `tag` (
`id_tag` INTEGER PRIMARY KEY AUTOINCREMENT,
`tags` TEXT,
`id_category` INTEGER,
FOREIGN KEY (id_category) REFERENCES category(id_category)
);

--#####


INSERT INTO user (name) VALUES ('Fadia');
INSERT INTO user (name) VALUES ('kamus');
INSERT INTO user (name) VALUES ('tibo');
INSERT INTO user (name) VALUES ('badr');
INSERT INTO user (name) VALUES ('ani');

INSERT INTO article (article,id_user) VALUES ('robe',1);
INSERT INTO article (article,id_user) VALUES ('short',1);
INSERT INTO article (article,id_user) VALUES ('planche surf',4);
INSERT INTO article (article,id_user) VALUES ('totebag',4);
INSERT INTO article (article,id_user) VALUES ('claquettes',4);

INSERT INTO category (categorie) VALUES ('été');
INSERT INTO category (categorie) VALUES ('été');
INSERT INTO category (categorie) VALUES ('plage');
INSERT INTO category (categorie) VALUES ('marais');
INSERT INTO category (categorie) VALUES ('ville');

INSERT INTO tag (tags) VALUES ('fleurs');
INSERT INTO tag (tags) VALUES ('bleu');
INSERT INTO tag (tags) VALUES ('vacances');
INSERT INTO tag (tags) VALUES ('hypster');
INSERT INTO tag (tags) VALUES ('casual');

SELECT * FROM article
JOIN user ON user.id_user = article.id_user
WHERE user.name = "badr";
