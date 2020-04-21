

use StackOverflow
go

create table Categories(
CategoryID int primary key identity(1,1),
CategoryName nvarchar(max))
go

create table Users(
UserID int primary key identity(1,1),
Email nvarchar(max),
PasswordHash nvarchar(max),
Name nvarchar(max),
Mobile nvarchar(max),
IsAdmin bit default(0))
go


Create table Questions(
QuestionID int primary key identity(1,1),
QuestionName nvarchar(max),
QuestionDateAndTime datetime,
UserID int references Users(UserID) ,
CategoryID int references Categories(CategoryID) ,
VotesCount int,
AnswersCount int,
ViewsCount int)
go

create table Answers(
AnswerID int primary key identity(1,1),
AnswerText nvarchar(max),
AnswerDateAndTime datetime,
UserID int references Users(UserID),
QuestionID int references Questions(QuestionID) ,
VotesCount int)
go

create table Votes(
VoteID int primary key identity(1,1),
UserID int references Users(UserID),
AnswerID int references Answers(AnswerID) ,
VoteValue int)
go

insert into Users values('admin@gmail.com', '240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9',
'Admin', '0000000000', 1)
go
-- password:  admin123
insert into Users values('test@gmail.com',	'cc03e747a6afbbcbf8be7668acfebee5',	'Test',	'0000000000',	0)



 
 Insert into Categories Values('HTML')
 
 Insert into Categories Values('CSS')
 
 Insert into Categories Values('JavaScript')

 Insert into Questions Values('How to display icon in browser title bar?',	'2020-04-19 10:03:00.000',	2,	1,	0,	0,	0)
Insert into Questions Values('How to set background image in CSS?',	'2020-04-19 10:03:00.000',	2	,2	,0	,0	,0)

