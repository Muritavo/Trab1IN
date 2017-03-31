CREATE TABLE DIM_TEMPO(
	[PK_Data] [datetime] NOT NULL,
	[Data_Nome] [nvarchar](50) NULL,
	[Ano] [datetime] NULL,
	[Ano_Nome] [nvarchar](50) NULL,
	[Semestre] [datetime] NULL,
	[Semestre_Nome] [nvarchar](50) NULL,
	[Trimestre] [datetime] NULL,
	[Trimestre_Nome] [nvarchar](50) NULL,
	[Mês] [datetime] NULL,
	[Mês_Nome] [nvarchar](50) NULL,
	[Semana] [datetime] NULL,
	[Semana_Nome] [nvarchar](50) NULL,
	[Dia_Do_Ano] [int] NULL,
	[Dia_Do_Ano_Nome] [nvarchar](50) NULL,
	[Dia_Do_Semestre] [int] NULL,
	[Dia_Do_Semestre_Nome] [nvarchar](50) NULL,
	[Dia_Do_Trimestre] [int] NULL,
	[Dia_Do_Trimestre_Nome] [nvarchar](50) NULL,
	[Dia_Do_Mês] [int] NULL,
	[Dia_Do_Mês_Nome] [nvarchar](50) NULL,
	[Dia_Da_Semana] [int] NULL,
	[Dia_Da_Semana_Nome] [nvarchar](50) NULL,
	[Semana_Do_Ano] [int] NULL,
	[Semana_Do_Ano_Nome] [nvarchar](50) NULL,
	[Mês_Do_Ano] [int] NULL,
	[Mês_Do_Ano_Nome] [nvarchar](50) NULL,
	[Mês_Do_Semestre] [int] NULL,
	[Mês_Do_Semestre_Nome] [nvarchar](50) NULL,
	[Mês_Do_Trimestre] [int] NULL,
	[Mês_Do_Trimestre_Nome] [nvarchar](50) NULL,
	[Trimestre_Do_Ano] [int] NULL,
	[Trimestre_Do_Ano_Nome] [nvarchar](50) NULL,
	[Trimestre_Do_Semestre] [int] NULL,
	[Trimestre_Do_Semestre_Nome] [nvarchar](50) NULL,
	[Semestre_Do_Ano] [int] NULL,
	[Semestre_Do_Ano_Nome] [nvarchar](50) NULL,
CONSTRAINT [PK_DimTempo] PRIMARY KEY CLUSTERED ([PK_Data] ASC));

CREATE TABLE DIM_UNIDADE_ORCAMENTARIA ();


CREATE TABLE DIM_EMPENHO(
	TIPO_EMPENHO numeric (2) NOT NULL,
	DESCRICAO_EMPENHO varchar (50) NOT NULL,
	NUMERO_EMPENHO numeric (5) NOT NULL,
	VALOR_EMPENHADO numeric (14, 2) NOT NULL,
	VALOR_EMPENHADO_DOLAR numeric (31,17) NOT NULL,
	VALOR_EMPENHADO_IGP numeric (38, 11) NOT NULL,
	VALOR_EMPENHADO_IPCA numeric (38, 11) NOT NULL
);

CREATE TABLE DIM_PROC_CONTRATACAO();

CREATE TABLE DIM_VINCULO_ORCAMENTO();

CREATE TABLE DIM_PESSOA();

CREATE TABLE DIM_ORGAO();

CREATE TABLE FATO_DATAPOA(
	DATA_PROJETO datetime references DIM_TEMPO,
	VALOR_LIQUIDADO numeric (14, 2) NULL, 
	VALOR_ PAGO _DOLAR numeric (31,17) NULL, 
	VALOR_LIQUIDADO_DOLAR numeric (31,17) NULL,
	VALOR_ LIQUIDADO _IGP numeric (38, 11) NOT NULL,
	VALOR_ LIQUIDADO _IPCA numeric (38, 11) NOT NULL
);

insert into DIM_TEMPO 
select * from [DATAPOA].[dbo].[DIM_TEMPO];

