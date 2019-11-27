CREATE TABLE [dbo].[Communicatie] (
    [CommunicatieId]    INT           IDENTITY (1, 1) NOT NULL,
    [SoortCommunicatie] NVARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([CommunicatieId] ASC)
);

