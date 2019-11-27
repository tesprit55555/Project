CREATE TABLE [dbo].[Actief] (
    [ActiefId] INT IDENTITY (1, 1) NOT NULL,
    [Actief]   BIT NOT NULL,
    CONSTRAINT [PK_Actief] PRIMARY KEY CLUSTERED ([ActiefId] ASC)
);

