CREATE DATABASE IF NOT EXISTS CSRS1;
USE csrs1;
CREATE TABLE cliente;

SELECT * FROM CSRS1.cliente;

CREATE TABLE Endereco(
id_endereco INT AUTO_INCREMENT PRIMARY KEY,
Endereco VARCHAR(150) NOT NULL,
Complemento VARCHAR(100),
Bairro VARCHAR(100) NOT NULL,
Cidade VARCHAR(100) NOT NULL,
UF CHAR(2) NOT NULL DEFAULT 'PE',
CEP VARCHAR(10) NOT NULL DEFAULT '53.000-000');

INSERT INTO Endereco(Endereco, Complemento, Bairro, Cidade, UF, CEP)
VALUES(
'Rua Franco Alameda, 25'						, 'Sitio do Picapau', 'Motriz'						,'Recife'					, 'PE', '52.071-520'),
('6ª Travessa Beijamim, 1123'					, ' '				, 'Fragoso'						,'Jaboatão dos Guararapes'	, 'PE', '53.402-016'),
('Rua Real 790'									, ' '				, 'Jardim São Paulo'			,'Paulista'					, 'PE', '50.910-090'),
('Rua Aurelina Dias do Nascimento 125'			, 'Ladeira do ceu'	, 'COHAB Massangano'			, 'Olinda'					, 'PE', '56.310-500'),
('Travessa Severino Rodrigues de Vasconcelos 523','Apt 1450 bloco d' , 'Bairro Novo do Carmelo'		, 'Camaragibe'				, 'PE', '54.762-341'),
('Rua Sessenta Seis, 85'						, 'Jardim de Lins'	, 'Jardim Atlântico'			, 'Olinda'					, 'PE', '53.000.000'),
('Av. Tiradentes, 1290'							, ' '				, ' Rio Doce'					, 'Olinda'					, 'PE', '53.000.000'),
('Av 21 de Abril, 123'							, 'Centro'			, 'Casa Amarela'				, 'Recife'					, 'PE', '52.245-450'),
('Av 17 de Agosto, 3058'						, 'Centro'		, 'Casa Forte'						, 'Recife'					, 'PE', '52.071-680'),
('Rua Manoel Joaquim de Almeida 1906'			, ' Casa de Baixo'	, 'Iputinga'					, 'Recife'					, 'PE', '50.670-370');


CREATE TABLE Cliente(								
id_Cliente INT AUTO_INCREMENT PRIMARY KEY,
Cod_Cliente INT,
Status_Cliente ENUM('Ativo','Inativo'),
Nome_Cliente VARCHAR(255) NOT NULL,
Apelido_Cliente VARCHAR(50),
Celular VARCHAR(14) NOT NULL,
Whatsapp VARCHAR(14),
Data_Nasc VARCHAR(10),
Estado_Civil VARCHAR(45),
Nome_Mae VARCHAR(255),
Nome_Pai VARCHAR(255),
Obs VARCHAR (255),
CPF_Cliente VARCHAR(14),
RG_Cliente VARCHAR(14),
Cartao_Sus varchar(20),
Titulo_Eleitoral VARCHAR(20),
Secao_Eleitoral VARCHAR(5),
Zona_Eleitoral VARCHAR(5),
Data_Cadastro VARCHAR(10),
id_endereco INT,
FOREIGN KEY (id_endereco) REFERENCES Endereco(id_endereco)
);

INSERT INTO Cliente(Cod_cliente, Status_Cliente, Nome_Cliente, Apelido_Cliente, Celular, Whatsapp, Data_Nasc, Estado_Civil, Nome_Mae, Nome_Pai, Obs, CPF_Cliente,
RG_Cliente, Cartao_Sus, Titulo_Eleitoral, Secao_Eleitoral, Zona_Eleitoral, Data_Cadastro, id_endereco) 
 VALUES(
 '1', 'Ativo', 'Rubinho Cruz', 'Binho', '081.9633-5654','081.9633-3354', '1975-12-25', 'Casado', 'Maria dos Ajos', 'PAOLO RIBEIRO SILVA', 'Pendente de documentação', '223.675.134-25', '45.623.109-7', '543.424.559-86', '235.282.262.769', '254', '010', '2023-05-18', '1'),
('2','Ativo'  ,'Thiago Xavier de Carrara'    ,'thi'    ,'081.9364-5247','081.99295-6141', '2012-04-25', 'Casado'	, 'Rute Valéria Espinoza de Mendonça'	,'Camilo Ayrton Burgos Filho','Autorizado'	, '186241966-39', '34.424.453-2', '76313048237', '066157580876', '190', '010', '2023-04-21', '2'),
('3','Inativo' ,'Jenny Sara Benites de Faro' ,'Ny'     ,'081.92481-6638','081.92396-4361','2011-03-01', 'Solteira', 'Flaviana Corona de Grego'			,'Benjamin Leo Bonilha Neto'	, '','151367805-17', '27.370.729-2', '92515566448', '545065830868', '255', '010', '2023-02-12', '3'),
('4','Ativo','Alisson Correia Sobrinho'   ,'PA'     ,'081.93375-8532','081.93816-5438', '2005-04-13', 'Casado'	, 'Ana Luzinete Casanova Ramires'		,'Alan Plínio Neves Sobrinho'	,'', '387307906-20', '13.010.222-2', '77284275120', '217386480825', '183', '010', '2023-06-25', '4'),
('5','Inativo' , 'Paulo Esteves da Rocha'    ,'Branco' ,'081.92611-4665','081.93441-9374', '1980-06-21', 'Viuvo'	, 'Tábata Taís Galindo'					,'Noel Max de Escobar Neto'		,'', '380858943-43', '12.775.472-6', '25073114795', '662687330876', '190', '010', '2023-06-10', '5'),
('6','Ativo', 'Hugo Junior de Ferminiano' ,'JR'     ,'081.93297-1965','081.93591-6512', '1990-10-15', 'Casado'	, 'Samanta Dominato de Magalhães'		,'Rodrigo Marinho de Alvarenga'	,'', '826438322-05', '11.607.755-4', '23790261815', '516817850809', '255', '010', '2023-08-21', '6'),
('7','Inativo' , 'Mariana Assunção de Corona','Mari'   ,'081.93159-0653','081.93413-8975', '2012-11-05', 'Solteira', 'Mayra Mirian Batista Gil'				,'Rodrigo Jonathas de Faro'		,'', '567237872-26', '26.743.592-7', '42426223090', '135216000817', '183', '010', '2023-08-01', '7'),
('8','Ativo', 'Olímpia Benites Cordeiro'  ,'Oli'    ,'081.92606-0422','081.93668-1153', '2018-09-08', 'Viuva'	, 'Ivete Galvão de Ortiz'				,'Estevão Silvair Mendonça Filho','','234156704-57', '25.688.356-7', '81873647506', '483883173006', '190', '010', '2023-11-18', '8'),
('9','Ativo'   , 'Eduardo Joaquim Bittencourt','Bit'   ,'081.92353-7816','081.93255-0133', '2000-10-13', 'Casado'	, 'Charlene Lozano'						,'Luigi Raul Madeira Filho'		,'', '305671305-68', '40.365.066-5', '54342455986', '985282262473', '255', '010', '2023-05-10', '9'),
('10','Inativo', 'Edilene Mirian Barreto Godói','Gordo','081.92795-8849','081.92713-4836', '1975-01-13', 'Solteira', 'Giovana Sabrina Lacerda'				,'Chico Bonilha de Uchoa'		,'', '177847535-35', '19.098.199-4', '75735961896', '134187000884', '183', '010', '2023-03-17', '10'),
('11', 'Ativo', 'Lois West', 'Cost', '081.1653-5004'   ,'081.99633-3354', '1980-12-08', 'Casado', 'Maria dos Ajos', 'PAOLO RIBEIRO SILVA', '223.675.134-25', '45.623.109-7', '543.424.559-86','', '235.282.262.769', '254', '010', '2023-05-18', '1');


CREATE TABLE Usuario(
id_usuario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Nome_Usuario VARCHAR(45),
Senha_Usuario VARCHAR(45)
); 
INSERT INTO usuario(id_usuario, Nome_Usuario, Senha_Usuario)
VALUES('1'	, 'Kelly'	, '12345rs'	),
	   ('2'	,'Rubinho'	, 'zyz'		),
       ('3'	, 'Pedro'	, '2009-03-17');
