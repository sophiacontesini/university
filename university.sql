--Criando as tabelas
CREATE TABLE Alunos (
    ID INT PRIMARY KEY,
    NumeroMatricula VARCHAR(50) UNIQUE,
    Nome VARCHAR(100),
    Email VARCHAR(100),
    ValorMensalidade DECIMAL(10,2)
);

CREATE TABLE Turmas (
    ID INT PRIMARY KEY,
    NumeroTurma VARCHAR(50) UNIQUE,
    IDAluno INT,
    IDProfessor INT, 
    CodigoDisciplina VARCHAR(50),
    NomeDisciplina VARCHAR(100),
    Horario VARCHAR(50),
    Semestre VARCHAR(50),
    Capacidade INT, -- opcional
    FOREIGN KEY (IDAluno) REFERENCES Alunos(ID),
    FOREIGN KEY (IDProfessor) REFERENCES Professores(ID)
);

CREATE TABLE Professores (
    ID INT PRIMARY KEY,
    NumeroMatricula VARCHAR(50) UNIQUE,
    Nome VARCHAR(100),
    Email VARCHAR(100),
    Salario DECIMAL(10,2),
    Formacao VARCHAR(100)
);

CREATE TABLE Funcionarios (
    ID INT PRIMARY KEY,
    NumeroMatricula VARCHAR(50) UNIQUE,
    Nome VARCHAR(100),
    Email VARCHAR(100),
    Salario DECIMAL(10,2),
    Funcao VARCHAR(100)
);

CREATE TABLE UnidadesAcademicas (
    ID INT PRIMARY KEY,
    CodigoUnidade VARCHAR(50) UNIQUE,
    NomeUnidade VARCHAR(100)
);

CREATE TABLE Contratados (
    ID INT PRIMARY KEY,
    Tipo VARCHAR(20), -- Professor ou Funcionario
    IDContratado INT,
    IDUnidadeAcademica INT,
    DataInicioUnidade DATE,
    FOREIGN KEY (IDContratado) REFERENCES Professores(ID),
    FOREIGN KEY (IDContratado) REFERENCES Funcionarios(ID),
    FOREIGN KEY (IDUnidadeAcademica) REFERENCES UnidadesAcademicas(ID)
);

CREATE TABLE Dependentes (
    ID INT PRIMARY KEY,
    IDContratado INT,
    Nome VARCHAR(100),
    Parentesco VARCHAR(50),
    FOREIGN KEY (IDContratado) REFERENCES Contratados(ID)
);

-- Inserindo dados nas tabelas 

INSERT INTO Alunos (ID, NumeroMatricula, Nome, Email, ValorMensalidade) 
VALUES 
(1, '2023001', 'João Pedro Souza', 'joao.souza@email.com', 1500.00),
(2, '2023002', 'Maria Paula Santos', 'maria.santos@email.com', 1600.00),
(3, '2023003', 'Carlos Oliveira', 'carlos.oliveira@email.com', 1550.00),
(4, '2023004', 'Ana Julia Matos', 'ana.matos@email.com', 1700.00),
(5, '2023005', 'Pedro Henrique Almeida', 'pedro.almeida@email.com', 1450.00);

INSERT INTO Turmas (ID, NumeroTurma, IDAluno, IDProfessor, CodigoDisciplina, NomeDisciplina, Horario, Semestre, Capacidade) 
VALUES 
(1, 'TURMA001', 1, 1, 'MAT101', 'Matemática Básica', 'Segunda-feira 08:00-10:00', '2024/1', 30),
(2, 'TURMA002', 2, 2, 'ENG201', 'Introdução à Engenharia', 'Terça-feira 14:00-16:00', '2024/1', 25),
(3, 'TURMA003', 3, 3, 'ADM301', 'Administração de Empresas', 'Quarta-feira 10:00-12:00', '2024/1', 35),
(4, 'TURMA004', 4, 4, 'MED401', 'Anatomia Humana', 'Quinta-feira 08:00-10:00', '2024/1', 30),
(5, 'TURMA005', 5, 5, 'ART501', 'História da Arte', 'Sexta-feira 16:00-18:00', '2024/1', 20);

INSERT INTO Professores (ID, NumeroMatricula, Nome, Email, Salario, Formacao) 
VALUES 
(1, 'PROF001', 'Eduardo Oliveira', 'eduardo.oliveira@email.com', 3500.00, 'Mestrado em Matemática'),
(2, 'PROF002', 'Joana Costa', 'joana.costa@email.com', 3800.00, 'Mestrado em Engenharia'),
(3, 'PROF003', 'Marcos Leão', 'marcos.leao@email.com', 3200.00, 'Doutorado em Administração'),
(4, 'PROF004', 'Luciana Vieira', 'luciana.vieira@email.com', 3700.00, 'Doutorado em Medicina'),
(5, 'PROF005', 'Pedro Henrique Almeida', 'pedro.henrique@email.com', 3000.00, 'Mestrado em Artes');

INSERT INTO Funcionarios (ID, NumeroMatricula, Nome, Email, Salario, Funcao) 
VALUES 
(1, 'FUNC001', 'Márcia Oliveira', 'marcia.oliveira@email.com', 2500.00, 'Secretária'),
(2, 'FUNC002', 'Ricardo Santos', 'ricardo.santos@email.com', 2800.00, 'Contador'),
(3, 'FUNC003', 'Paula Silva', 'paula.silva@email.com', 2600.00, 'Recepcionista'),
(4, 'FUNC004', 'Fernando Costa', 'fernando.costa@email.com', 2700.00, 'Analista de TI'),
(5, 'FUNC005', 'Camila Almeida', 'camila.almeida@email.com', 2400.00, 'Assistente Administrativo');


INSERT INTO UnidadesAcademicas (ID, CodigoUnidade, NomeUnidade) 
VALUES 
(1, 'UNID001', 'Departamento de Matemática'),
(2, 'UNID002', 'Departamento de Engenharia'),
(3, 'UNID003', 'Departamento de Administração'),
(4, 'UNID004', 'Departamento de Medicina'),
(5, 'UNID005', 'Departamento de Artes');

INSERT INTO Contratados (ID, Tipo, IDContratado, IDUnidadeAcademica, DataInicioUnidade) 
VALUES 
(1, 'Professor', 1, 1, '2020-01-15'),
(2, 'Professor', 2, 2, '2019-02-20'),
(3, 'Professor', 3, 3, '2015-03-25'),
(4, 'Professor', 4, 4, '2007-04-30'),
(5, 'Professor', 5, 5, '2002-05-15');

INSERT INTO Dependentes (ID, IDContratado, Nome, Parentesco) 
VALUES 
(1, 1, 'Ana Julia', 'Filha'),
(2, 1, 'José Eduardo Silva', 'Filho'),
(3, 2, 'Lara Santos', 'Filha'),
(4, 3, 'Paulo Oliveira Jr.', 'Filho'),
(5, 4, 'Gabriela Costa', 'Filha');


--buscando pelos dados inseridos

select * from alunos;
select * from professores;
select * from turmas;
select * from funcionarios;
select * from unidadesacademicas;
select * from contratados;
select * from dependentes;

--add coluna notas para os alunos
ALTER TABLE Alunos
ADD COLUMN Notas DECIMAL(5,2);

--insere as notas
update Alunos set notas = 8.5 where id = 1;
update Alunos set notas = 9.0 where id = 2; 
update Alunos set notas = 7.5 where id = 3;
update Alunos set notas= 6.0 where id = 4; 
update Alunos set notas = 8.0 where id = 5;

--projeto bonus add 0.5 nota para todos os alunos
update Alunos
set notas = notas + 0.5;

--buscando dados de tabelas diferentes com o inner join
SELECT Alunos.Nome, Turmas.NumeroTurma, Turmas.NomeDisciplina, Turmas.Semestre, Alunos.Notas
FROM Alunos
INNER JOIN Turmas ON Alunos.ID = Turmas.IDAluno
WHERE Turmas.NumeroTurma = 'TURMA002';

--buscando os dados de alunos e a respectiva turma com o left join
SELECT Alunos.Nome, Turmas.NumeroTurma, Turmas.NomeDisciplina, Turmas.Semestre, Alunos.Notas
FROM Alunos
LEFT JOIN Turmas ON Alunos.ID = Turmas.IDAluno;


