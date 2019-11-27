CREATE TABLE [dbo].[Status] (
    [StatusId] INT           IDENTITY (1, 1) NOT NULL,
    [Status]   NVARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([StatusId] ASC)
);

