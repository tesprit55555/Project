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
		9 Uitgeschreven (GDPR)


	TabelCummunicatieMiddel
		IdCummunicatieMiddel
		1 Email - Mailing
		2 Post - Mailing
		(3 Bussen - Folders)

	TabelCommunicatieBoodschappen:
		IdCommunicatieboodschap
		1 opening/afsluit Zwembadseizoen 
			ja(Indien =Klant,actief=ja,communicatiesoort=1of2)
				//Extra info Nee(Indien=prospect, niet actieve klant, 
				communicatiesoort 3,4,5,6,7,8,9)
		2 Verlofregelingen 
			ja(indien = klant, actief=ja, communicatiesoort 1,2,4,5)
				//Extra info Nee(Indien = prospect, actief = nee, 
				communicatiesoort = 3,6,7,8,9)
		3 Klant Marketing/nieuwe producten/interessante aanbiedingen,speciale aanbiedingen
			ja(indien klant of prospect, klant is actief= ja, communicatiesoort = 1,6,7,8)
				//Extra info Nee(Indien = klant actief = nee, 
				communicatiesoort = 2,3,4,9)
		4 nieuwsbrieven
			ja(indien klant, klant is actief= ja & nee, communicatiesoort = 1,6,7,8)
				//Extra info Nee(Indien = klant, 
				communicatiesoort = 2,3,4,9)
		5 Geen 
			(als is communciatiesoort = 9)


			rollen uitschrijven: welke 3 gebruikers van de database
			- rollen zbb, zbe, zbg? BO

			a) verkoper die zijn verkoopstrategie kan targetten  (in regio, op soort klant), op wie geen klanten meer aanbrengt:
			1 de verkoopsafdeling wil een nieuwe dienst/product promotten en contacteert de zwembadbouwers en zwembadeigenaars vvia email en sms/whatsapp.
			2 de verkoopsafdeling wil een nieuwe klanten warm maken en contacteert de prospecten via telefoon en email indien deze niet beschikbaar via post.


		- marketing kan gericht targetten (met communicatie), gericht op regio, op klantenbestand, of welke werken er kunnen worden doorgegeven

			- boekhouding/eigenaar kan commissie worden berekend aan de hand van het aantal aangebrachte klanten( afhankelijk van het aantal aangebrachte klante, hoeveelheid commisie die wordt toegekend)



			stories uitschrijven: 10 stories wat doen die gebruikers, wat halen ze uit de database met welk doel
			- rol : storie:
			

			- op het einde van het jaar wordt door de boekhouding gekeken hoeveel zbe er door de zbb worden in portefeuille 
			gegeven, zo kan de boekhouding onderzoeken in welke graad van commissie de zbb staat
			- de eigenaar wil zien hoeveel nieuwe klanten er werden aangebracht door de zbb
			-bij de afsluit/opstart dient er door de marketing een mailing worden verzonden 
			(deze mogen niet bij klanten terechtkomen van zbg, enkel bij eigen klanten, klanten van zbb, en niet bij prospecten)
			- de planning (4E rol) moet de bestaande klanten kunnen verwittigen om de opstart/afsluit te kunnen inplannen, dit 
			wordt gericht aan actieve, eigen klanten en klanten in portefeuille gegeven door andere zbb
			- we laten weten aan alle klanten dat we ook service geven op hun wp (verschillende merken)
			-prijsverhoging wordt doorgevoerd (alle actieve klanten moeten worden geinformeerd) niet prospecten
			-eigen klanten krijgen de kans om de nieuwste waterbehandeling aankopen met een korting
			-de Zbe eigenaars van de verschillende zbb krijgen info dat opnieuw het komende jaar wij de service en onderhoud bij hen wordt verzorgt in naam van de zbb
			-Zbb mogen weten dat we een nieuw pakket hebben samengesteld voor hun klanten
			-het wordt warmer we willen de zbg laten weten dat we terug klaar zijn voor de herstelling van warmtepompen
			- prijsverhoging herstelling warmtepompen moet worden doorgegeven aan de groothandels