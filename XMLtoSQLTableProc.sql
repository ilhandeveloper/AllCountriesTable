use testXML;
go
declare @pomXML xml = --(copy here the xml file) 

declare @ptrDoc int;
exec sp_xml_preparedocument @ptrDoc output, @pomXML;



--insert from xml
insert into Zemlja select
		Ime, Domen, CCA2, CCN3, CCA3, CIOC,Nezavisno, Status, Valuta, PozivniBroj, GlavniGrad, AltSpelling, Region, PodRegion, Jezici, Prevodi, LatLng, NazivStanovnika, Landlocked, GranicneDrzave, Podrucje, Zastava
		from openxml(@ptrDoc, 'countries/country')
		with (
			Ime varchar(max) './@name',
			Domen varchar(30) './@tld',
			cca2 varchar(10) './@cca2',
			ccn3 varchar(10) './@ccn3',
			cca3 varchar(10) './@cca3',
			cioc varchar(10) './@cioc',
			Nezavisno int './@independent',
			status varchar(30) './@status',
			Valuta varchar(30) './@currency',
			PozivniBroj int './@callingCode',
			GlavniGrad varchar(50) './@capital',
			AltSpelling varchar(max) './altSpellings',
			Region varchar(50) './@region',
			Podregion varchar(50) './@subregion',
			Jezici varchar(max) '/@languages',
			Prevodi varchar(max) './@translations',
			latlng varchar(30) './@latlng',
			NazivStanovnika varchar(50) './@demonym',
			landlocked int './@landlocked',
			GranicneDrzave varchar(max) './@borders',
			Podrucje varchar(50) './@area',
			Zastava varchar(50) './@flag')

			exec sp_xml_removedocument @ptrDoc;




			--test
			--select *from zemlja 


		
	