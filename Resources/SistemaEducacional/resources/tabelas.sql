CREATE DATABASE sistema_educacional
GO
USE sistema_educacional

CREATE
--DROP
TABLE aluno(
	ra INT UNIQUE IDENTITY(1000000, 1),
	nome VARCHAR(100),
	PRIMARY KEY(ra)
)

CREATE
--DROP
TABLE avaliacao(
	codigo INT UNIQUE IDENTITY,
	tipo VARCHAR(2)				-- [P1, P2, P3, T]
	PRIMARY KEY(codigo)
)

CREATE
--DROP
TABLE disciplina(
	codigo INT UNIQUE IDENTITY,
	nome VARCHAR(100),
	sigla VARCHAR(3),			-- [AOC, LH, BD, SO1, LBD, MPC]
	turno CHAR(1),				-- [M, V, N]
	num_aulas INT					-- [2, 4]
	PRIMARY KEY(codigo)
)

CREATE
--DROP
TABLE notas(
	ra_aluno INT,
	codigo_disciplina INT,
	codigo_avaliacao INT,
	nota DECIMAL(2, 1),
	FOREIGN KEY (ra_aluno) REFERENCES aluno (ra),
	FOREIGN KEY (codigo_disciplina) REFERENCES disciplina (codigo),
	FOREIGN KEY (codigo_avaliacao) REFERENCES avaliacao (codigo),
	PRIMARY KEY(ra_aluno, codigo_disciplina, codigo_avaliacao)
)

CREATE
--DROP
TABLE faltas(
	ra_aluno INT,
	codigo_disciplina INT,
	data DATE,
	presenca CHAR(4),
	FOREIGN KEY (ra_aluno) REFERENCES aluno (ra),
	FOREIGN KEY (codigo_disciplina) REFERENCES disciplina (codigo),
	PRIMARY KEY(ra_aluno, codigo_disciplina, data)
)


SELECT * FROM disciplina