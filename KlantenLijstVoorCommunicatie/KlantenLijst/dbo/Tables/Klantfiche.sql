﻿CREATE TABLE [dbo].[Klantfiche] (
    [KlantId]      INT        IDENTITY (1, 1) NOT NULL,
    [Naam]         NCHAR (10) NOT NULL,
    [Voornaam]     NCHAR (10) NULL,
    [Adres]        INT        NULL,
    [Gemeente]     INT        NULL,
    [Actief]       INT        NOT NULL,
    [EmailAdres]   NCHAR (10) NULL,
    [Communicatie] INT        NOT NULL,
    [Aanspreking]  INT        NULL,
    [Land]         INT        NULL,
    [Telefoon]     NCHAR (10) NULL,
    [Mobiel]       NCHAR (10) NULL,
    [Email]        NCHAR (10) NULL,
    [KlantVan]     INT        NULL,
    [Status]       INT        NOT NULL,
    [Relatie]      INT        NOT NULL,
    [Datumaanmaak] DATE       NOT NULL,
    CONSTRAINT [PK_Klantfiche] PRIMARY KEY CLUSTERED ([KlantId] ASC),
    CONSTRAINT [CK_EigenKlantenLijst_Column] CHECK ([Gemeente]>(0) AND [Gemeente]<(10000)),
    CONSTRAINT [FK_Klantfiche_Aanspreking] FOREIGN KEY ([Aanspreking]) REFERENCES [dbo].[Aanspreking] ([AansprekingId]),
    CONSTRAINT [FK_Klantfiche_Actief] FOREIGN KEY ([Actief]) REFERENCES [dbo].[Actief] ([ActiefId]),
    CONSTRAINT [FK_Klantfiche_Communicatie] FOREIGN KEY ([Communicatie]) REFERENCES [dbo].[Communicatie] ([CommunicatieId]),
    CONSTRAINT [FK_Klantfiche_Gemeente] FOREIGN KEY ([Gemeente]) REFERENCES [dbo].[Gemeente] ([IdGemeente]),
    CONSTRAINT [FK_Klantfiche_KlantVan] FOREIGN KEY ([KlantVan]) REFERENCES [dbo].[KlantVan] ([NaamId]),
    CONSTRAINT [FK_Klantfiche_Land] FOREIGN KEY ([Land]) REFERENCES [dbo].[Land] ([LandId]),
    CONSTRAINT [FK_Klantfiche_Relatie] FOREIGN KEY ([Relatie]) REFERENCES [dbo].[Relatie] ([RelatieId]),
    CONSTRAINT [FK_Klantfiche_Status] FOREIGN KEY ([Status]) REFERENCES [dbo].[Status] ([StatusId])
);

