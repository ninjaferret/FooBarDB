CREATE TABLE [dbo].[ToDoListItem]
(
[ToDoListId] [int] NOT NULL,
[Name] [nvarchar] (100) COLLATE Latin1_General_CI_AS NOT NULL,
[Description] [nvarchar] (max) COLLATE Latin1_General_CI_AS NULL,
[CompletedOn] [datetime2] NULL,
[CreatedOn] [datetime2] NOT NULL,
[TimeStamp] [timestamp] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ToDoListItem] ADD CONSTRAINT [FK_ToDoListItem_ToDoList] FOREIGN KEY ([ToDoListId]) REFERENCES [dbo].[ToDoList] ([ToDoListId])
GO
