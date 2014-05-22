# Users schema

# --- !Ups

CREATE TABLE question (
    id bigint(10) NOT NULL AUTO_INCREMENT,
    question varchar(255) NOT NULL,
    yes_value int,
    no_value int,
    answer boolean,
    PRIMARY KEY (id)
);

CREATE TABLE usr (
    id bigint(10) NOT NULL AUTO_INCREMENT,
    nick varchar(255) NOT NULL,
    answers varchar(50),
    PRIMARY KEY (id)
);

insert into question (id, question, yes_value, no_value) values
(1, 'Vinner Brasil åpningskampen mot Kroatia?', 1, 2),
(2, 'Scorer Mandzukic på hodet mot Brasil?', 4, 1),
(3, 'Stiller Brasil med minst tre spillere med ulikt fargede sko?', 3, 1),
(4, 'Scorer Carlos Vela kampens, og Mexicos første mål mot Kamerun?', 2, 1),
(5, 'Blir der mer enn 12 cornere i oppgjøret mellom Spania og Nederland?', 2, 1),
(6, 'Vinner Chile med minst 2 mål mot Australia?', 2, 1),
(7, 'Scorer Joel Campbell for Costa Rica mot Uruguay?', 4, 1),
(8, 'Vinner Italia 1-0 mot England?', 2, 1),
(9, 'Scorer England på dødball mot Italia?', 3, 1),
(10, 'Brenner Gervinho en 100%-sjanse mot Japan?', 3, 1),
(11, 'Blir Ribery byttet ut i løpet av kampen mot Honduras?', 1, 2),
(12, 'Scorer både Messi og Aguero mål mot Bosnia?', 3, 1),
(13, 'Scorer Iran mål i løpet av VM?', 1, 2),
(14, 'Scorer Ronaldo på firspark mot Tyskland?', 2, 1),
(15, 'Vinner Belgia med 3 eller flere mål mot Algerie?', 2, 1),
(16, 'Blir det minst 4 mål i kampen mellom Brasil og Mexico?', 2, 1),
(17, 'Scorer Heungmin for Sør-Korea mot Russland?', 4, 1),
(18, 'Blir det hattrick på Van Persie mot Australia?', 4, 1),
(19, 'Blir det mer enn 2 gule kort i kampen mellom Spania og Chile?', 1, 1),
(20, 'Får vi se utagerende feiring av et kamerunsk mål mot Kroatia?', 2, 1)
;

insert into usr (nick, answers) values
('mads', '0111100001101010100')
;

# --- !Downs

DROP TABLE question;
DROP TABLE usr;