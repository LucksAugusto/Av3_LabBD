CREATE DATABASE Colesite
GO
USE Colesite

--TABLES
CREATE TABLE aluno( ra INT identity(1410000, 1),
	nome VARCHAR(250),
	PRIMARY KEY(ra))

CREATE TABLE faltas(ra_aluno INT,
	codigo_disciplina INT,
	data DATETIME,
	presenca INT,
	FOREIGN KEY (ra_aluno) REFERENCES aluno,
	FOREIGN KEY (codigo_disciplina) REFERENCES disciplina,
	PRIMARY KEY(ra_aluno, codigo_disciplina, data))

CREATE TABLE disciplina(codigo INT PRIMARY KEY,
	nome VARCHAR(100),
	sigla VARCHAR(4),			
	turno VARCHAR(1),				
	num_aulas INT)
	
CREATE TABLE notas(
	ra_aluno INT,
	codigo_disciplina INT,
	codigo_avaliacao INT,
	nota DECIMAL(4, 2),
	FOREIGN KEY (ra_aluno) REFERENCES aluno,
	FOREIGN KEY (codigo_disciplina) REFERENCES disciplina,
	FOREIGN KEY (codigo_avaliacao) REFERENCES avaliacao,
	PRIMARY KEY(ra_aluno, codigo_disciplina, codigo_avaliacao))

	
CREATE TABLE avaliacao(codigo INT identity(1,1) PRIMARY KEY,
	tipo VARCHAR(25))

DROP TABLE aluno
DROP TABLE avaliacao
DROP TABLE faltas
DROP TABLE disciplina
DROP TABLE notas

INSERT INTO disciplina VALUES
('4203010', 'Arquitetura e Organização de Computadores', 'AOC', 'T', 4),
('4203020', 'Arquitetura e Organização de Computadores', 'AOC', 'N', 4),
('4208010', 'Laboratório de Hardware', 'LH', 'T', 2),
('4226004', 'Banco de Dados', 'BD', 'T', 4),
('4213003', 'Sistemas Operacionais I', 'SOI', 'T', 4),
('4213013', 'Sistemas Operacionais I', 'SOI', 'N', 4),
('4233005', 'Laboratório de Banco de Dados', 'LBD', 'T', 4),
('5005220', ' Métodos Para a Produção do Conhecimento', 'MPC', 'T', 4)

INSERT INTO avaliacao VALUES
('P1'),
('P2'),
('P3'),
('T'),
('Pre Exame'),
('Exame'),
('Monografia Resumida'),
('Monografia Completa')

INSERT INTO aluno VALUES 
('Luisa Fuller'),
('Ivan Randall'),
('Darci Warren'),
('Jarrod Wicks'),
('Genaro Phillips'),
('Natasha Alcock'),
('Kelley Hancock'),
('Vanda Kavanagh'),
('Bradford Kane'),
('Ellsworth Holder'),
('Ivonne Parker'),
('Carole Wiggins'),
('Kelsi Wheeler'),
('Rose Mccormick'),
('Kanisha Scott'),
('Lois Wormald'),
('Luetta Carney'),
('Mitchel Ashley'),
('Lesa Armitage'),
('Stephine Dickson'),
('Ashly Howarth'),
('Waneta Howells'),
('Angelo Kelly'),
('Danuta Holloway'),
('Stuart Bowers'),
('Franchesca Fenwick'),
('Raul Sanderson'),
('Apryl Maguire'),
('Monika Frost'),
('Josiah Humphrey'),
('Florentino Crowe'),
('Evia Birch'),
('Sybil Jackson'),
('Candance Hutton'),
('Roberto Crawford'),
('Tuan Cartwright'),
('Nicola Hollis'),
('Violeta Stephens'),
('Lena Moss'),
('Nilda Osborne'),
('Emma Boyd'),
('Gaynell Mcnamara'),
('Meghan Lennon'),
('Camie Rankin'),
('Toya Hutchings'),
('Cindie Kidd'),
('Van Hampton'),
('Christi Sawyer'),
('Flora Watkins'),
('Jody Mckenzie')

INSERT INTO notas VALUES
 ('1410011','4226004', 1, '9.3' ),
 ('1410011','4226004', 2, '6.0' ),
 ('1410011','4226004', 4, '8.3' ),
 ('1410000','4213013', 1, '2.5' ),
 ('1410000','4213013', 2, '6.3' ),
 ('1410000','4213013', 4, '9.7' ),
 ('1410041','4213013', 1, '8.9' ),
 ('1410041','4213013', 2, '9.0' ),
 ('1410041','4213013', 4, '6.8' ),
 ('1410042','4213013', 1, '3.5' ),
 ('1410042','4213013', 2, '10.0'),
 ('1410042','4213013', 4, '0.5' ),
 ('1410027','4203020', 1, '7.9' ),
 ('1410027','4203020', 2, '4.6' ),
 ('1410027','4203020', 4, '9.5' ),
 ('1410010','4203020', 1, '4.9' ),
 ('1410010','4203020', 2, '5.8' ),
 ('1410010','4203020', 4, '6.8' )

 INSERT INTO faltas VALUES
 ('1410010', '4226004', '01/02/14', 1),
 ('1410010', '4226004', '02/02/14', 0),  
 ('1410010', '4226004', '03/02/14', 1),
 ('1410010', '4226004', '04/02/14', 0), 
 ('1410010', '4226004', '05/02/14', 0),
 ('1410010', '4226004', '06/02/14', 0),  
 ('1410010', '4226004', '07/02/14', 4),
 ('1410010', '4226004', '08/02/14', 0), 
 ('1410010', '4226004', '09/02/14', 2),
 ('1410010', '4226004', '10/02/14', 0),  
 ('1410010', '4226004', '11/02/14', 0),
 ('1410010', '4226004', '12/02/14', 0), 
 ('1410010', '4226004', '13/02/14', 0),
 ('1410010', '4226004', '14/02/14', 2),  
 ('1410010', '4226004', '15/02/14', 0),
 ('1410010', '4226004', '16/02/14', 0), 
 ('1410010', '4226004', '17/02/14', 4),
 ('1410010', '4226004', '18/02/14', 0),  
 ('1410010', '4226004', '19/02/14', 0),
 ('1410010', '4226004', '20/02/14', 0),
 ('1410027', '4213013', '01/04/14', 1),
 ('1410027', '4213013', '02/04/14', 0),  
 ('1410027', '4213013', '03/04/14', 1),
 ('1410027', '4213013', '04/04/14', 0), 
 ('1410027', '4213013', '05/04/14', 0),
 ('1410027', '4213013', '06/04/14', 0),  
 ('1410027', '4213013', '07/04/14', 4),
 ('1410027', '4213013', '08/04/14', 0), 
 ('1410027', '4213013', '09/04/14', 2),
 ('1410027', '4213013', '10/04/14', 0),  
 ('1410027', '4213013', '11/04/14', 0),
 ('1410027', '4213013', '12/04/14', 0), 
 ('1410027', '4213013', '13/04/14', 0),
 ('1410027', '4213013', '14/04/14', 2),  
 ('1410027', '4213013', '15/04/14', 0),
 ('1410027', '4213013', '16/04/14', 0), 
 ('1410027', '4213013', '17/04/14', 4),
 ('1410027', '4213013', '18/04/14', 0),  
 ('1410027', '4213013', '19/04/14', 0),
 ('1410027', '4213013', '20/04/14', 0),
 ('1410015', '4226004', '01/02/14', 1),
 ('1410015', '4226004', '02/02/14', 0),  
 ('1410015', '4226004', '03/02/14', 1),
 ('1410015', '4226004', '04/02/14', 0), 
 ('1410015', '4226004', '05/02/14', 0),
 ('1410015', '4226004', '06/02/14', 0),  
 ('1410015', '4226004', '07/02/14', 4),
 ('1410015', '4226004', '08/02/14', 0), 
 ('1410015', '4226004', '09/02/14', 2),
 ('1410015', '4226004', '10/02/14', 0),  
 ('1410015', '4226004', '11/02/14', 0),
 ('1410015', '4226004', '12/02/14', 0), 
 ('1410015', '4226004', '13/02/14', 0),
 ('1410015', '4226004', '14/02/14', 2),  
 ('1410015', '4226004', '15/02/14', 0),
 ('1410015', '4226004', '16/02/14', 0), 
 ('1410015', '4226004', '17/02/14', 4),
 ('1410015', '4226004', '18/02/14', 4),  
 ('1410015', '4226004', '19/02/14', 4),
 ('1410015', '4226004', '20/02/14', 4)

--PROCEDURES
CREATE PROCEDURE procNotas(@aluno INT, @materia INT, @tipoAvaliacao INT, @nota DECIMAL(4,2)) AS
INSERT INTO notas VALUES (@aluno, @materia, @tipoAvaliacao, @nota)

CREATE PROCEDURE procFaltas(@aluno INT, @materia INT, @dataAula DATETIME, @presenca INT) AS
INSERT INTO faltas VALUES (@aluno, @materia, @dataAula, @presenca)

--FUNCOES
CREATE FUNCTION fn_verificaFaltas(@presenca INT) RETURNS VARCHAR(4) AS BEGIN
DECLARE @retorno VARCHAR(4)
			IF(@presenca =0) BEGIN
					SET @retorno = 'PPPP'
				END
				ELSE IF(@presenca = 1) BEGIN
					SET @retorno = 'PPPF'
				END
				ELSE IF(@presenca = 2) BEGIN
					SET @retorno = 'PPFF'
				END
				ELSE IF(@presenca = 3) BEGIN
					SET @retorno = 'PFFF'
				END
				ELSE IF(@presenca = 4 ) BEGIN
					SET @retorno = 'FFFF'
				END
RETURN @retorno
END

CREATE FUNCTION fn_verificaContador(@presenca INT, @contador INT) RETURNS INT AS BEGIN
DECLARE @retorno INT
			IF(@presenca = '0') BEGIN
					SET @retorno = @contador
				END
				ELSE IF(@presenca = '1') BEGIN
					SET @retorno = @contador + 1		
				END
				ELSE IF(@presenca = '2') BEGIN
					SET @retorno = @contador + 2
				END
				ELSE IF(@presenca = '3') BEGIN
					SET @retorno = @contador + 3	
				END
				ELSE IF(@presenca = '4') BEGIN
					SET @retorno = @contador + 4
				END
RETURN @retorno
END

CREATE FUNCTION fn_VerificaSituacaoParcial(@media DECIMAL(4,2)) RETURNS VARCHAR(30) AS BEGIN
DECLARE @situacao VARCHAR(30)
 			IF(@media < 3) BEGIN
 					SET @situacao = 'Reprovado'
 			END
 			ELSE IF (@media >= 3 AND @media <6) BEGIN
 					SET @situacao = 'Exame'
 			END
 			ELSE IF (@media >= 6) BEGIN
 					SET @situacao = 'Aprovado'
 			END
		RETURN @situacao
END
--CURSORES
--Situação
CREATE FUNCTION funcfinal(@materia INT) RETURNS @tblFinal TABLE(Matricula_Aluno INT, Aluno VARCHAR(250), Avaliacao1 DECIMAL(4,2), Avaliacao2 DECIMAL(4,2), Avaliacao3 DECIMAL(4,2), MediaProvisoria DECIMAL(4,2), Exame DECIMAL(4,2),MediaFinal DECIMAL(4,2), Situacao VARCHAR(30)) as BEGIN
DECLARE @Matricula_Aluno INT 
DECLARE @Aluno VARCHAR(250)
DECLARE cursoraluno CURSOR FOR SELECT DISTINCT ra_aluno FROM notas WHERE codigo_disciplina = @materia
OPEN cursoraluno
FETCH NEXT FROM cursoraluno INTO @Matricula_Aluno
WHILE @@FETCH_STATUS=0 BEGIN
DECLARE @av1 DECIMAL(4,2)
DECLARE @av2 DECIMAL(4,2)
DECLARE @av3 DECIMAL(4,2)
DECLARE @mediaParcial DECIMAL(4,2)
DECLARE @mediaFinal DECIMAL(4,2)
DECLARE @situacao VARCHAR(30)
DECLARE @exame DECIMAL(4,2)
SET @exame = (SELECT nota FROM notas WHERE ra_aluno=@Matricula_Aluno AND codigo_disciplina=@materia AND codigo_avaliacao='6' );
SET @Aluno = (SELECT nome FROM aluno WHERE ra = @Matricula_Aluno)
 IF(@exame IS  null) BEGIN
			IF(@materia = '4203010' OR @materia = '4203020' OR @materia = '4208010' OR @materia = '4226004') BEGIN
				SET @av1 = (SELECT nota FROM notas WHERE ra_aluno=@Matricula_Aluno AND codigo_disciplina=@materia AND codigo_avaliacao='1' );
				SET @av2 = (SELECT nota FROM notas WHERE ra_aluno=@Matricula_Aluno AND codigo_disciplina=@materia AND codigo_avaliacao='2' );
				SET @av3 = (SELECT nota FROM notas WHERE ra_aluno=@Matricula_Aluno AND codigo_disciplina=@materia AND codigo_avaliacao='4' );
				SET @mediaParcial = (((@av1 * 3) + (@av2 * 5) + (@av3 * 2)) / 10 )
				SET @situacao =  dbo.fn_VerificaSituacaoParcial(@mediaParcial)
				INSERT INTO @tblFinal (Matricula_Aluno, Aluno, Avaliacao1, Avaliacao2, Avaliacao3, MediaProvisoria, Situacao) VALUES (@Matricula_Aluno, @Aluno, @av1, @av2, @av3, @mediaParcial, @situacao)
			END	
			ELSE IF(@materia = '4213003' OR @materia = '4213013') BEGIN
				SET @av1 = (SELECT nota FROM notas WHERE ra_aluno=@Matricula_Aluno AND codigo_disciplina=@materia AND codigo_avaliacao='1' );
				SET @av2 = (SELECT nota FROM notas WHERE ra_aluno=@Matricula_Aluno AND codigo_disciplina=@materia AND codigo_avaliacao='2' );
				SET @av3 = (SELECT nota FROM notas WHERE ra_aluno=@Matricula_Aluno AND codigo_disciplina=@materia AND codigo_avaliacao='4' );
				SET @mediaParcial = (((@av1 * 3.5) + (@av2 * 3.5) + (@av3 * 3)) / 10 )
				SET @situacao =  dbo.fn_VerificaSituacaoParcial(@mediaParcial)
				INSERT INTO @tblFinal (Matricula_Aluno, Aluno, Avaliacao1, Avaliacao2, Avaliacao3, MediaProvisoria, Situacao) VALUES (@Matricula_Aluno, @Aluno, @av1, @av2, @av3, @mediaParcial, @situacao)
			END	
			ELSE IF(@materia = '4233005') BEGIN
				SET @av1 = (SELECT nota FROM notas WHERE ra_aluno=@Matricula_Aluno AND codigo_disciplina=@materia AND codigo_avaliacao='1' );
				SET @av2 = (SELECT nota FROM notas WHERE ra_aluno=@Matricula_Aluno AND codigo_disciplina=@materia AND codigo_avaliacao='2' );
				SET @av3 = (SELECT nota FROM notas WHERE ra_aluno=@Matricula_Aluno AND codigo_disciplina=@materia AND codigo_avaliacao='3' );
				SET @mediaParcial = ((@av1 + @av2 + @av3 ) / 3)
				SET @situacao =  dbo.fn_VerificaSituacaoParcial(@mediaParcial)
				INSERT INTO @tblFinal (Matricula_Aluno, Aluno, Avaliacao1, Avaliacao2, Avaliacao3, MediaProvisoria, Situacao) VALUES (@Matricula_Aluno, @Aluno, @av1, @av2, @av3, @mediaParcial, @situacao)
			END
			ELSE IF(@materia ='5005220') BEGIN
				SET @av1 = (SELECT nota FROM notas WHERE ra_aluno=@Matricula_Aluno AND codigo_disciplina=@materia AND codigo_avaliacao='8' );
				SET @av2 = (SELECT nota FROM notas WHERE ra_aluno=@Matricula_Aluno AND codigo_disciplina=@materia AND codigo_avaliacao='7' );
				SET @mediaParcial = ((@av1 * 2) + (@av2 * 8 ) / 10)
				SET @situacao =  dbo.fn_VerificaSituacaoParcial(@mediaParcial)
				INSERT INTO @tblFinal (Matricula_Aluno, Aluno, Avaliacao1, Avaliacao2, MediaProvisoria, Situacao) VALUES (@Matricula_Aluno, @Aluno, @av1, @av2, @mediaParcial, @situacao)
 			END
END			
ELSE BEGIN
	SET @mediaFinal = (@mediaParcial + @exame) / 2
 				IF(@mediaFinal <6) BEGIN
 					SET @situacao = 'Reprovado'
 				END
 				ELSE BEGIN
 					SET @situacao = 'Aprovado'
 				END	
 	UPDATE @tblFinal SET MediaProvisoria=@mediaParcial, Exame=@exame, MediaFinal = @mediaFinal, Situacao = @situacao WHERE Matricula_Aluno = @Matricula_Aluno
END
DECLARE @aula CHAR(10)
	DECLARE @teste CHAR(10)
	DECLARE @falta INT
	DECLARE @contFalta INT
	DECLARE @faltaDia VARCHAR(4)
	DECLARE @totalFaltas INT
	SET @totalFaltas =0
	SET @contFalta = 1
	DECLARE cursorfaltas cursor for SELECT DISTINCT CONVERT(CHAR(10),data, 103) AS data FROM faltas WHERE codigo_disciplina = @materia
	OPEN cursorfaltas
		FETCH NEXT FROM cursorfaltas INTO @aula
		WHILE @@FETCH_STATUS=0 BEGIN 
				SET @falta = (SELECT presenca FROM faltas WHERE codigo_disciplina = @materia AND ra_aluno=@Matricula_Aluno AND CONVERT(CHAR(10),data, 103)=@aula  )
				SET @faltaDia = dbo.fn_verificaFaltas(@falta)
				SET @totalFaltas = dbo.fn_verificaContador(@falta, @totalFaltas)
				SET @contFalta = @contFalta + 1
				DECLARE @numAulas INT
				SET @numAulas = (SELECT num_aulas FROM disciplina WHERE codigo = @materia )
				IF(@numAulas = 2) BEGIN
					 IF(@contFalta >= 10) BEGIN
						SET @situacao = 'Reprovado por Faltas'
					END
				END
				ELSE BEGIN
					IF(@contFalta >= 20) BEGIN
					SET @situacao = 'Reprovado por Faltas'
					END
				END
				UPDATE @tblFinal SET Situacao = @situacao, MediaFinal=@mediaFinal WHERE Matricula_Aluno = @Matricula_Aluno
			FETCH NEXT FROM cursorfaltas INTO @aula
		END
		CLOSE cursorfaltas
		DEALLOCATE cursorfaltas	
	FETCH NEXT FROM cursoraluno INTO @Matricula_Aluno
	END
	CLOSE cursoraluno
	DEALLOCATE cursoraluno
	RETURN 
END

--Cursor Faltas
CREATE FUNCTION funcFaltas(@materia INT) RETURNS @tblFaltas  TABLE(Matricula_Aluno INT, Aluno VARCHAR(250), DATA1 VARCHAR(4), 
DATA2 VARCHAR(4), DATA3 VARCHAR(4), DATA4 VARCHAR(4), DATA5 VARCHAR(4), DATA6 VARCHAR(4),DATA7 VARCHAR(4), DATA8 VARCHAR(4), 
DATA9 VARCHAR(4), DATA10 VARCHAR(4), DATA11 VARCHAR(4), DATA12 VARCHAR(4), DATA13 VARCHAR(4), DATA14 VARCHAR(4),DATA15 VARCHAR(4),
DATA16 VARCHAR(4), DATA17 VARCHAR(4), DATA18 VARCHAR(4), DATA19 VARCHAR(4), DATA20 VARCHAR(4), totFaltas INT) as BEGIN
DECLARE @Matricula_Aluno INT 
DECLARE @Aluno VARCHAR(250)
DECLARE cursoraluno cursor for SELECT DISTINCT ra_aluno FROM faltas WHERE codigo_disciplina = @materia
OPEN cursoraluno
FETCH NEXT FROM cursoraluno INTO @Matricula_Aluno
WHILE @@FETCH_STATUS=0 BEGIN
	DECLARE @aula CHAR(10)
	DECLARE @teste CHAR(10)
	DECLARE @falta INT
	DECLARE @contFalta INT
	DECLARE @faltaDia VARCHAR(4)
	DECLARE @totalFaltas INT
	SET @totalFaltas =0
	SET @contFalta = 1
	SET @Aluno = (SELECT nome FROM aluno WHERE ra = @Matricula_Aluno)
	INSERT INTO @tblFaltas(Matricula_Aluno, Aluno) VALUES (@Matricula_Aluno, @Aluno)
	DECLARE cursorfaltas CURSOR FOR SELECT DISTINCT CONVERT(CHAR(10),data, 103) AS data FROM faltas WHERE codigo_disciplina = @materia
	OPEN cursorfaltas
		FETCH NEXT FROM cursorfaltas INTO @aula
		WHILE @@FETCH_STATUS=0 BEGIN 
				SET @falta = (SELECT presenca FROM faltas WHERE codigo_disciplina = @materia AND ra_aluno=@Matricula_Aluno AND CONVERT(CHAR(10),data, 103)=@aula  )
				SET @faltaDia = dbo.fn_verificaFaltas(@falta)
				SET @totalFaltas = dbo.fn_verificaContador(@falta, @totalFaltas)
				IF(@contFalta =1) BEGIN
					UPDATE @tblFaltas  SET DATA1 = @faltaDia, totFaltas = @totalFaltas  WHERE Matricula_Aluno=@Matricula_Aluno
				END
				ELSE IF(@contFalta =2) BEGIN
					UPDATE @tblFaltas  SET DATA2 = @faltaDia,totFaltas = @totalFaltas  WHERE Matricula_Aluno=@Matricula_Aluno
				END
				ELSE IF(@contFalta =3) BEGIN
					UPDATE @tblFaltas  SET DATA3 = @faltaDia, totFaltas = @totalFaltas  WHERE Matricula_Aluno=@Matricula_Aluno
				END
				ELSE IF(@contFalta =4) BEGIN
					UPDATE @tblFaltas  SET DATA4 = @faltaDia, totFaltas = @totalFaltas WHERE Matricula_Aluno=@Matricula_Aluno
				END
				ELSE IF(@contFalta =5) BEGIN
					UPDATE @tblFaltas  SET DATA5 = @faltaDia, totFaltas = @totalFaltas WHERE Matricula_Aluno=@Matricula_Aluno
				END
				ELSE IF(@contFalta =6) BEGIN
					UPDATE @tblFaltas  SET DATA6 = @faltaDia, totFaltas = @totalFaltas WHERE Matricula_Aluno=@Matricula_Aluno
				END
				ELSE IF(@contFalta =7) BEGIN
					UPDATE @tblFaltas  SET DATA7 = @faltaDia, totFaltas = @totalFaltas WHERE Matricula_Aluno=@Matricula_Aluno
				END
				ELSE IF(@contFalta =8) BEGIN
					UPDATE @tblFaltas  SET DATA8 = @faltaDia, totFaltas = @totalFaltas WHERE Matricula_Aluno=@Matricula_Aluno
				END
				ELSE IF(@contFalta =9) BEGIN
					UPDATE @tblFaltas  SET DATA9 = @faltaDia, totFaltas = @totalFaltas WHERE Matricula_Aluno=@Matricula_Aluno
				END
				ELSE IF(@contFalta =10) BEGIN
					UPDATE @tblFaltas  SET DATA10 = @faltaDia, totFaltas = @totalFaltas WHERE Matricula_Aluno=@Matricula_Aluno
				END
				ELSE IF(@contFalta =11) BEGIN
					UPDATE @tblFaltas  SET DATA11 = @faltaDia, totFaltas = @totalFaltas WHERE Matricula_Aluno=@Matricula_Aluno
				END
				ELSE IF(@contFalta =12) BEGIN
					UPDATE @tblFaltas  SET DATA12 = @faltaDia, totFaltas = @totalFaltas WHERE Matricula_Aluno=@Matricula_Aluno
				END
				ELSE IF(@contFalta =13) BEGIN
					UPDATE @tblFaltas  SET DATA13 = @faltaDia, totFaltas = @totalFaltas WHERE Matricula_Aluno=@Matricula_Aluno
				END
				ELSE IF(@contFalta = 14) BEGIN
					UPDATE @tblFaltas  SET DATA14 = @faltaDia, totFaltas = @totalFaltas WHERE Matricula_Aluno=@Matricula_Aluno
				END
				ELSE IF(@contFalta =15) BEGIN
					UPDATE @tblFaltas  SET DATA15 = @faltaDia, totFaltas = @totalFaltas WHERE Matricula_Aluno=@Matricula_Aluno
				END
				ELSE IF(@contFalta =16) BEGIN
					UPDATE @tblFaltas  SET DATA16 = @faltaDia, totFaltas = @totalFaltas WHERE Matricula_Aluno=@Matricula_Aluno
				END
				ELSE IF(@contFalta =17) BEGIN
					UPDATE @tblFaltas  SET DATA17 = @faltaDia, totFaltas = @totalFaltas WHERE Matricula_Aluno=@Matricula_Aluno
				END
				ELSE IF(@contFalta =18) BEGIN
					UPDATE @tblFaltas  SET DATA18 = @faltaDia, totFaltas = @totalFaltas WHERE Matricula_Aluno=@Matricula_Aluno
				END
				ELSE IF(@contFalta = 19) BEGIN
					UPDATE @tblFaltas  SET DATA19 = @faltaDia, totFaltas = @totalFaltas WHERE Matricula_Aluno=@Matricula_Aluno
				END
				ELSE IF(@contFalta =20) BEGIN
					UPDATE @tblFaltas  SET DATA20 = @faltaDia, totFaltas = @totalFaltas WHERE Matricula_Aluno=@Matricula_Aluno
				END
				SET @contFalta = @contFalta + 1
			FETCH NEXT FROM cursorfaltas INTO @aula
		END
		CLOSE cursorfaltas
		DEALLOCATE cursorfaltas	
		FETCH NEXT FROM cursoraluno INTO @Matricula_Aluno
		END
		CLOSE cursoraluno
		DEALLOCATE cursoraluno	
	RETURN
END	

--TEST
SELECT * FROM aluno
SELECT * FROM avaliacao
SELECT * FROM faltas
SELECT * FROM disciplina
SELECT * FROM notas

SELECT * FROM dbo.funcfinal(4203010)
SELECT * FROM dbo.funcfinal(4208010)
SELECT * FROM dbo.funcfinal(4213003)
SELECT * FROM dbo.funcfinal(4233005)
SELECT * FROM dbo.funcfinal(5005220)
SELECT * FROM dbo.funcfinal(4213013)--Data
SELECT * FROM dbo.funcfinal(4226004)--Data
SELECT * FROM dbo.funcfinal(4203020)--Data

SELECT * FROM dbo.funcFaltas(4203010)
SELECT * FROM dbo.funcFaltas(4208010)
SELECT * FROM dbo.funcFaltas(4213003)
SELECT * FROM dbo.funcFaltas(4233005)
SELECT * FROM dbo.funcFaltas(4203020)
SELECT * FROM dbo.funcFaltas(5005220)
SELECT * FROM dbo.funcFaltas(4213013)--Data
SELECT * FROM dbo.funcFaltas(4226004)--Data