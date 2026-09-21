CREATE TABLE Championship (
Id_Championship SERIAL PRIMARY KEY,
Name VARCHAR(120) NOT NULL UNIQUE,
Year_Champhionship INTEGER NOT NULL,
Start_Date DATE NOT NULL,
End_Date DATE NOT NULL
)

CREATE TABLE Team(
Id_Team SERIAL PRIMARY KEY,
Name VARCHAR(60) NOT NULL UNIQUE,
City VARCHAR(100) NOT NULL,
State VARCHAR(60) NOT NULL,
Foundation_Year INT NOT NULL
)

CREATE TABLE Championship_Team (
Id_Championship_Team SERIAL PRIMARY KEY,
Id_Championship INT NOT NULL,
FOREIGN KEY (Id_Championship)
REFERENCES Championship(Id_Championship),
Id_Team INT NOT NULL,
FOREIGN KEY (Id_Team)
REFERENCES Team(Id_Team)
)

CREATE TABLE Player (
Id_Player SERIAL PRIMARY KEY,
Name VARCHAR(120) NOT NULL,
Birth_Date DATE NOT NULL,
Position CHAR(2) NOT NULL,
Shirt_Number CHAR(2),
Id_Team INT NOT NULL,
FOREIGN KEY(Id_Team)
REFERENCES Team(Id_Team)
)

CREATE TABLE SoccerMatch (
Id_SoccerMatch SERIAL PRIMARY KEY,
Match_DateTime TIMESTAMP NOT NULL,
Goals_Number_HT INT NOT NULL,
Goals_Number_VT INT NOT NULL,
Id_Championship INT NOT NULL,
FOREIGN KEY (Id_Championship)
REFERENCES Championship(Id_Championship),
Id_Stadium INT NOT NULL,
FOREIGN KEY (Id_Stadium)
REFERENCES Stadium(Id_Stadium)
)

CREATE TABLE Team_SoccerMatch (
Id_Team_SoccerMatch SERIAL PRIMARY KEY,
Id_Team INT NOT NULL,
FOREIGN KEY (Id_Team)
REFERENCES Team(Id_Team),
Id_SoccerMatch INT NOT NULL,
FOREIGN KEY (Id_SoccerMatch)
REFERENCES SoccerMatch(Id_SoccerMatch)
)

CREATE TABLE Stadium (
Id_Stadium SERIAL PRIMARY KEY,
Name VARCHAR(120) NOT NULL,
City VARCHAR(120) NOT NULL,
Capacity INT NOT NULL
)
