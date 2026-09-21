## **VERSÃO EM PORTUGUÊS**

## **1 - INTRODUÇÃO**
 Projeto baseado na análise um de requisitos, identificação das entidades e relacionamentos, construção do Modelo Entidade-Relacionamento (MER) e, posteriormente, implementação do banco de dados utilizando PostgreSQL.

## **2 - IDENTIFICAÇÃO**
 
**Nome do Aluno:** Raimundo José de Sousa Neto

**Disciplina:** Introdução à Banco de Dados

**Professor:** Anderson Soares

## **3 - TECNOLOGIAS UTILIZADAS**
    SQL, PostgreeSQL, BRModeloWeb, DBeaver, Git, Github

## **3 - DESCRIÇÃO DO CENÁRIO**

Uma empresa deseja desenvolver um sistema para gerenciar campeonatos de futebol.

O sistema deverá permitir o cadastro de diferentes campeonatos. Cada campeonato possui um nome, ano, data de início e data de término.

Um campeonato é formado por vários times, e um mesmo time pode participar de diferentes campeonatos ao longo dos anos. Para cada participação de um time em um campeonato, o sistema deverá registrar a data de inscrição.

Cada time possui um nome, cidade, estado e ano de fundação.

Os times possuem vários jogadores. Um jogador pertence a apenas um time por vez. Para cada jogador devem ser armazenados seu nome, data de nascimento, posição e número da camisa.

Durante um campeonato, os times disputam várias partidas. Cada partida pertence a um campeonato e envolve dois times: o time mandante e o time visitante.

Para cada partida devem ser armazenadas a data, o horário, o estádio, a quantidade de gols do time mandante e a quantidade de gols do time visitante.

Um estádio pode receber várias partidas. Para cada estádio devem ser armazenados o nome, a cidade e a capacidade.

***OBS: Cenário Hipotético***

## **4 - ANÁLISE DE TEXTO**

### **4.1 - Entidades e Atributos:**

1. **Campeonato:** nome, ano, data de início, data de término
2. **Time:** nome, cidade, estado, ano de fundação
3. **Jogadores:** nome, data de nascimento, posição, número da camisa 
4. **Partidas** data, horário, estádio, qtd gols time mandante, qtd gols time visitante
5. **Estádio:** nome, cidade, capacidade

### **4.2 - Cardinalidades:**
1. **Campeonato ---> Time : (1:N) /---/ Time ---> Campeonato (1:N)**
2. **Time ---> Jogadores : (1:N) /---/ Jogadores ---> Time (1:1)** 
3. **Time ---> Partidas : (1:N) /---/ Partidas ---> Time (1:N)**
4. **Campeonato ---> Partidas : (1:N) /---/ Partidas ---> Campeonato (1:1)**
5. **Estádio ---> Partidas : (1:N) /---/ Partidas ---> Estádio (1:1)**

## **5 - MODELO CONCEITUAL**

![Conceptual Model](/Models/Conceptual%20Model(PT).png)

## **6 - MODELO LÓGICO**

![Logic Model](/Models/Logic%20Model(PT).png)

## **7 - EVIDÊNCIAS**

![Evidence - 1](/Evidence/Evidence%20-%201.png)
![Evidence - 2](/Evidence/Evidence%20-%202.png)
![Evidence - 3](/Evidence/Evidence%20-%203.png)

---
## **ENGLISH VERSION**

## **1 - INTRODUCTION**
 Project based on requirements analysis, identification of entities and relationships, construction of the Entity-Relationship Model (ERM), and subsequent implementation of the database using PostgreSQL.

## **2 - IDENTIFICATION**
 
**Student Name:** Raimundo José de Sousa Neto

**College Discipline:** Introdução à Banco de Dados

**Teacher:** Anderson Soares

## **3 - USED TECHNOLOGIES**
    SQL, PostgreeSQL, BRModeloWeb, DBeaver, Git, Github

## **3 - SCENERY DESCRIPTION**

A company wants to develop a system to manage football championships.

The system should allow the registration of different championships. Each championship has a name, year, start date, and end date.

A championship consists of several teams, and the same team can participate in different championships over the years. For each team's participation in a championship, the system must record the registration date.

Each team has a name, city, state, and founding year.

Teams have several players. A player belongs to only one team at a time. For each player, the system must store their name, date of birth, position, and jersey number.

During a championship, teams play several matches. Each match belongs to a championship and involves two teams: the home team and the away team.

For each match, the system must store the date, time, stadium, number of goals scored by the home team, and number of goals scored by the away team.

A stadium can host several matches. For each stadium, the system must store its name, city, and capacity.

***Note: Hipotetical Scenery***

## **4 - TEXT ANALYSIS**

### **4.1 - Entities and Attributes:**

1. **Championship:** name, year, start date, end date
2. **Team:** name, city, state, founding year
3. **Player:** name, date of birth, position, jersey number
4. **Match:** date, time, stadium, home team goals, away team goals
5. **Stadium:** name, city, capacity

### **4.2 - Cardinalities:**
1. **Championship → Team: (1) /---/ Team → Championship: (1)**
2. **Team → Player: (1) /---/ Player → Team: (1:1)**
3. **Team → Match: (1) /---/ Match → Team: (1)**
4. **Championship → Match: (1) /---/ Match → Championship: (1:1)**
5. **Stadium → Match: (1) /---/ Match → Stadium: (1:1)**

## **5 - CONCEPTUAL MODEL**

![Conceptual Model](/Models/Conceptual%20Model(EN).png)

## **6 - LOGIC MODEL**

![Logic Model](/Models/Logic%20Model(EN).png)

## **7 - EVIDENCES**

![Evidence - 1](/Evidence/Evidence%20-%201.png)
![Evidence - 2](/Evidence/Evidence%20-%202.png)
![Evidence - 3](/Evidence/Evidence%20-%203.png)
