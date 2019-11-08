# Project
database met bestaande klantenlijst om gericht te kunnen communiceren

4 verschillende klantengroepen:

eigen eindklanten
eindklanten eigendom van zwembadbouwers
eindklanten van groothandel, herstelling warmtepompen
prospecten
soort communicatie:

eigen eindklanten: krijgen alle info
einklanten van zwembadbouwers, krijgen gerichte communicatie
eindklanten van groothandel, geen communicatie
prospecten: marketing
communicatie email:

opening/sluiting
opstart/afsluit
nieuwe items/verkoop/marketing (Communicatie Post)
prospecten

Uitschrijven van het project
Lijst van alle data dat ik nodig heb 
Vervolgens selecteren in welke tabel je de data steekt

	1 Tabel - Lijsten met klanten:
		1 Klantid,
		2 Klant of prospect (TabelKlantOfProspect)
		3 Aanspreking (hangt af van TabelSoortAanspreking (1,2,3,4)) 
		4 Naam
		5 Adres
			Straat
			Nr
			Poscode
			Gemeente
		6 Emailadres
		7 Actief (ja/nee) 
			(indieen neen geen communicatie: 3 TabelSoortCommunicatie)
		8 Welke soort Klant 
			Indien Klant (2) & Indien Actief (7) anders (9) Prospect
				(TabelSoortKlant: 1,2,3,4,5) 1 resultaat mogelijk
		9 Welke Prospect 
			Indien Prospect (2) dan (TabelSoortProspect(2,3,4))
		10 Welke soort communicatie (TabelSoortCommunicatie:1,2,3,4,5,6,7,8)
		11 Welk communicatiemiddel (TabelCummunicatieMiddel: 1,2,3)
			Indien Adres (5) ingevuld dan 2 (TabelCummunicatieMiddel) Indien Emailadres
			(7) ingevuld is dan 1 (TabelCummunicatieMiddel); Indien Adres (5) ingevuld 
			& Indien Emailadres (7) ingevuld is dan = 1 (TabelCummunicatieMiddel) Prioritair

		
	TabelKlantOfProspect:
		1 Klant
		2 Prospect

	TabelSoortAanspreking:
		IdAanspreking
		1 Beste klant
		2 "Naam Zwembadbouwer"
		3 "Naam Groothandel"
		4 Beste
		
	TabelSoortKlant:
		IdKlantsoort
		1Eigen Klanten ZBE;
		2Klanten ZBE van zwembadbouwer:
		3Klanten ZBE van Groothandel
		4Proffesionele klanten: Zwembadbouwers ZBB
		5Proffesionele klanten: Groothandel ZBG 

	TabelSoortProspect:
		IdSoortProspect
		1 Prospect Zwembadbeigenaar ZBE
		2 Prospect ZWembadbouwervZBB
		3 Prospect Zwembadgroothandel ZBG (Herstelling warmtepompen)
		
	TabelSoortCommunicatie:
		IdCommunicatiesoort
		1 klant krijgt alle relevante info
		2 Klant krijgt door zwembadbouwer gefilterde communcatie (klant blijft eigendom van de zwembadbouwer)
		3 Klant mag geen communicatie krijgen (wegens doorverwezen door Groothandel, voor herstelling)
		4 Proffesionele klant: Zwembadbouwer, Krijgt specifieke communicatie 
		5 Proffesionele klant: Groothandel, Krijgt specifieke communicatie
		6 ZBE Prospect krijgt Marketing 
		7 ZBB prospect krijgt Marketing 
		8 ZBG Prospect krijgt Marketing


	TabelCummunicatieMiddel
		IdCummunicatieMiddel
		1 Email - Mailing
		2 Post - Mailing
		3 Bussen - Folders

	TabelCommunicatieBoodschappen:
		IdCommunicatieboodschap
		1 opening/afsluit Zwembadseizoen 
			ja(Indien Klant,actief,)
			Nee
		2 Verlofregelingen ()
		3 Klant Marketing/nieuwe producten/interessante aanbiedingen,speciale aanbiedingen
		4 niewsbrieven

