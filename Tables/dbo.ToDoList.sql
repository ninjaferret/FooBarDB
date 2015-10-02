CREATE TABLE [dbo].[ToDoList]
(
[ToDoListId] [int] NOT NULL IDENTITY(1, 1),
[Name] [nvarchar] (200) COLLATE Latin1_General_CI_AS NOT NULL,
[Created] [datetime2] NOT NULL CONSTRAINT [DF_ToDoList_Created] DEFAULT (sysdatetime()),
[Completed] [datetime2] NULL,
[TimeStamp] [timestamp] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ToDoList] ADD CONSTRAINT [PK_ToDoList] PRIMARY KEY CLUSTERED  ([ToDoListId]) ON [PRIMARY]
GO
