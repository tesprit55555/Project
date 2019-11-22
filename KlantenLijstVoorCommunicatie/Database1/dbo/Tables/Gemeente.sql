CREATE TABLE [dbo].[Gemeente] (
    [IdGemeente] INT        IDENTITY (1, 1) NOT NULL,
    [Gemeente]   NCHAR (10) NULL,
    [Postcode]   INT        NULL,
    PRIMARY KEY CLUSTERED ([IdGemeente] ASC)
);

