use testXML;
go

CREATE TABLE Zemlja(
	ID int IDENTITY(1,1) NOT NULL,
	Ime varchar(max) NULL,
	Domen [varchar](30) NULL,
	CCA2 varchar(10) NULL,
	CCN3 varchar(10) NULL,
	CCA3 varchar(10) NULL,
	CIOC varchar(10) NULL,
	Nezavisno varchar(50) NULL,
	Status varchar(30) NULL,
	Valuta varchar(30) NULL,
	PozivniBroj varchar(50) NULL,
	GlavniGrad varchar(50) NULL,
	AltSpelling varchar(max) NULL,
	Region varchar(50) NULL,
	PodRegion varchar(50) NULL,
	Jezici varchar(max) NULL,
	Prevodi varchar(max) NULL,
	LatLng varchar(30) NULL,
	NazivStanovnika  varchar(50) NULL,
	Landlocked varchar(50) NULL,
	GranicneDrzave varchar(max) NULL,
	Podrucje varchar(50) NULL,
	Zastava varchar(50) NULL
)
