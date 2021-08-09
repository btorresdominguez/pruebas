
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 08/05/2021 21:06:53
-- Generated from EDMX file: C:\Users\1129531779\Documents\bpm\BPM.Dal\DBModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Transacciones];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_AddCQs_Certificado]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AddCQs] DROP CONSTRAINT [FK_AddCQs_Certificado];
GO
IF OBJECT_ID(N'[dbo].[FK_AddCQs_Chanel]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AddCQs] DROP CONSTRAINT [FK_AddCQs_Chanel];
GO
IF OBJECT_ID(N'[dbo].[FK_AddCQs_City]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AddCQs] DROP CONSTRAINT [FK_AddCQs_City];
GO
IF OBJECT_ID(N'[dbo].[FK_AddCQs_Company]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AddCQs] DROP CONSTRAINT [FK_AddCQs_Company];
GO
IF OBJECT_ID(N'[dbo].[FK_AddCQs_Contacto]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AddCQs] DROP CONSTRAINT [FK_AddCQs_Contacto];
GO
IF OBJECT_ID(N'[dbo].[FK_AddCQs_Contesta]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AddCQs] DROP CONSTRAINT [FK_AddCQs_Contesta];
GO
IF OBJECT_ID(N'[dbo].[FK_AddCQs_Event]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AddCQs] DROP CONSTRAINT [FK_AddCQs_Event];
GO
IF OBJECT_ID(N'[dbo].[FK_AddCQs_Justified]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AddCQs] DROP CONSTRAINT [FK_AddCQs_Justified];
GO
IF OBJECT_ID(N'[dbo].[FK_AddCQs_Letter]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AddCQs] DROP CONSTRAINT [FK_AddCQs_Letter];
GO
IF OBJECT_ID(N'[dbo].[FK_AddCQs_Notificacion]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AddCQs] DROP CONSTRAINT [FK_AddCQs_Notificacion];
GO
IF OBJECT_ID(N'[dbo].[FK_AddCQs_OriginQC]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AddCQs] DROP CONSTRAINT [FK_AddCQs_OriginQC];
GO
IF OBJECT_ID(N'[dbo].[FK_AddCQs_PQRS]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AddCQs] DROP CONSTRAINT [FK_AddCQs_PQRS];
GO
IF OBJECT_ID(N'[dbo].[FK_AddCQs_Provincia]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AddCQs] DROP CONSTRAINT [FK_AddCQs_Provincia];
GO
IF OBJECT_ID(N'[dbo].[FK_AddCQs_Resultado]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AddCQs] DROP CONSTRAINT [FK_AddCQs_Resultado];
GO
IF OBJECT_ID(N'[dbo].[FK_AddCQs_SMS]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AddCQs] DROP CONSTRAINT [FK_AddCQs_SMS];
GO
IF OBJECT_ID(N'[dbo].[FK_AddCQs_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AddCQs] DROP CONSTRAINT [FK_AddCQs_User];
GO
IF OBJECT_ID(N'[dbo].[FK_Base_Service]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Base] DROP CONSTRAINT [FK_Base_Service];
GO
IF OBJECT_ID(N'[latters].[FK_City_exception]', 'F') IS NOT NULL
    ALTER TABLE [latters].[Exceptions] DROP CONSTRAINT [FK_City_exception];
GO
IF OBJECT_ID(N'[latters].[FK_Company_exception]', 'F') IS NOT NULL
    ALTER TABLE [latters].[Exceptions] DROP CONSTRAINT [FK_Company_exception];
GO
IF OBJECT_ID(N'[dbo].[FK_EscalationManual_C4C]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EscalationManual] DROP CONSTRAINT [FK_EscalationManual_C4C];
GO
IF OBJECT_ID(N'[dbo].[FK_EscalationManual_Organization]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EscalationManual] DROP CONSTRAINT [FK_EscalationManual_Organization];
GO
IF OBJECT_ID(N'[dbo].[FK_EscalationManual_PQR]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EscalationManual] DROP CONSTRAINT [FK_EscalationManual_PQR];
GO
IF OBJECT_ID(N'[dbo].[FK_EscalationManual_Process]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EscalationManual] DROP CONSTRAINT [FK_EscalationManual_Process];
GO
IF OBJECT_ID(N'[latters].[FK_Exceptions_Template]', 'F') IS NOT NULL
    ALTER TABLE [latters].[Exceptions] DROP CONSTRAINT [FK_Exceptions_Template];
GO
IF OBJECT_ID(N'[dbo].[FK_Filter_Escalation_Field_Escalation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Filter_Escalation] DROP CONSTRAINT [FK_Filter_Escalation_Field_Escalation];
GO
IF OBJECT_ID(N'[dbo].[FK_Filter_Field]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Filter] DROP CONSTRAINT [FK_Filter_Field];
GO
IF OBJECT_ID(N'[dbo].[FK_Matrix_Escalation_C4C]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Matrix_Escalation] DROP CONSTRAINT [FK_Matrix_Escalation_C4C];
GO
IF OBJECT_ID(N'[dbo].[FK_Matrix_Escalation_Company]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Matrix_Escalation] DROP CONSTRAINT [FK_Matrix_Escalation_Company];
GO
IF OBJECT_ID(N'[dbo].[FK_Matrix_Escalation_Organizativa]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Matrix_Escalation] DROP CONSTRAINT [FK_Matrix_Escalation_Organizativa];
GO
IF OBJECT_ID(N'[dbo].[FK_Matrix_Escalation_Process]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Matrix_Escalation] DROP CONSTRAINT [FK_Matrix_Escalation_Process];
GO
IF OBJECT_ID(N'[dbo].[FK_Matrix_Radication_Event]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Matrix_Radication] DROP CONSTRAINT [FK_Matrix_Radication_Event];
GO
IF OBJECT_ID(N'[dbo].[FK_Matrix_Radication_Market]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Matrix_Radication] DROP CONSTRAINT [FK_Matrix_Radication_Market];
GO
IF OBJECT_ID(N'[dbo].[FK_Matrix_Radication_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Matrix_Radication] DROP CONSTRAINT [FK_Matrix_Radication_User];
GO
IF OBJECT_ID(N'[latters].[FK_Paragraph_Cause]', 'F') IS NOT NULL
    ALTER TABLE [latters].[Paragraph] DROP CONSTRAINT [FK_Paragraph_Cause];
GO
IF OBJECT_ID(N'[latters].[FK_Paragraph_TypeParagraph]', 'F') IS NOT NULL
    ALTER TABLE [latters].[Paragraph] DROP CONSTRAINT [FK_Paragraph_TypeParagraph];
GO
IF OBJECT_ID(N'[dbo].[FK_PQR_Latters_TypeLatter]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PQR_Latters] DROP CONSTRAINT [FK_PQR_Latters_TypeLatter];
GO
IF OBJECT_ID(N'[BPMModelStoreContainer].[FK_Role_Operation_Operation]', 'F') IS NOT NULL
    ALTER TABLE [BPMModelStoreContainer].[Role_Operation] DROP CONSTRAINT [FK_Role_Operation_Operation];
GO
IF OBJECT_ID(N'[BPMModelStoreContainer].[FK_Role_Operation_Role]', 'F') IS NOT NULL
    ALTER TABLE [BPMModelStoreContainer].[Role_Operation] DROP CONSTRAINT [FK_Role_Operation_Role];
GO
IF OBJECT_ID(N'[dbo].[FK_Skill_Client]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Skill] DROP CONSTRAINT [FK_Skill_Client];
GO
IF OBJECT_ID(N'[BPMModelStoreContainer].[FK_Skill_User_User]', 'F') IS NOT NULL
    ALTER TABLE [BPMModelStoreContainer].[Skill_User] DROP CONSTRAINT [FK_Skill_User_User];
GO
IF OBJECT_ID(N'[latters].[FK_Template_TypeNotification_Template]', 'F') IS NOT NULL
    ALTER TABLE [latters].[Template_TypeNotification] DROP CONSTRAINT [FK_Template_TypeNotification_Template];
GO
IF OBJECT_ID(N'[latters].[FK_Template_TypeNotification_TypeLatter]', 'F') IS NOT NULL
    ALTER TABLE [latters].[Template_TypeNotification] DROP CONSTRAINT [FK_Template_TypeNotification_TypeLatter];
GO
IF OBJECT_ID(N'[latters].[FK_Template_TypeNotification_TypeNotification]', 'F') IS NOT NULL
    ALTER TABLE [latters].[Template_TypeNotification] DROP CONSTRAINT [FK_Template_TypeNotification_TypeNotification];
GO
IF OBJECT_ID(N'[latters].[FK_Template_TypeTemplate]', 'F') IS NOT NULL
    ALTER TABLE [latters].[Template] DROP CONSTRAINT [FK_Template_TypeTemplate];
GO
IF OBJECT_ID(N'[dbo].[FK_User_Client]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[User] DROP CONSTRAINT [FK_User_Client];
GO
IF OBJECT_ID(N'[dbo].[FK_User_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[User] DROP CONSTRAINT [FK_User_User];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Action]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Action];
GO
IF OBJECT_ID(N'[dbo].[AddCQs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AddCQs];
GO
IF OBJECT_ID(N'[dbo].[Base]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Base];
GO
IF OBJECT_ID(N'[dbo].[Cause]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Cause];
GO
IF OBJECT_ID(N'[dbo].[Certificado]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Certificado];
GO
IF OBJECT_ID(N'[dbo].[Chanel]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Chanel];
GO
IF OBJECT_ID(N'[dbo].[City]', 'U') IS NOT NULL
    DROP TABLE [dbo].[City];
GO
IF OBJECT_ID(N'[dbo].[Client]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Client];
GO
IF OBJECT_ID(N'[dbo].[Company]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Company];
GO
IF OBJECT_ID(N'[dbo].[Condition]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Condition];
GO
IF OBJECT_ID(N'[dbo].[Contacto]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Contacto];
GO
IF OBJECT_ID(N'[dbo].[Contesta]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Contesta];
GO
IF OBJECT_ID(N'[dbo].[Escalation]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Escalation];
GO
IF OBJECT_ID(N'[dbo].[EscalationC4C]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EscalationC4C];
GO
IF OBJECT_ID(N'[dbo].[EscalationCompany]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EscalationCompany];
GO
IF OBJECT_ID(N'[dbo].[EscalationManual]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EscalationManual];
GO
IF OBJECT_ID(N'[dbo].[EscalationOrganizativa]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EscalationOrganizativa];
GO
IF OBJECT_ID(N'[dbo].[EscalationProcess]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EscalationProcess];
GO
IF OBJECT_ID(N'[dbo].[Event]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Event];
GO
IF OBJECT_ID(N'[dbo].[Event_Radication]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Event_Radication];
GO
IF OBJECT_ID(N'[dbo].[Field]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Field];
GO
IF OBJECT_ID(N'[dbo].[Field_Escalation]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Field_Escalation];
GO
IF OBJECT_ID(N'[dbo].[Filter]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Filter];
GO
IF OBJECT_ID(N'[dbo].[Filter_Escalation]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Filter_Escalation];
GO
IF OBJECT_ID(N'[dbo].[Justified]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Justified];
GO
IF OBJECT_ID(N'[dbo].[LetterCQ]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LetterCQ];
GO
IF OBJECT_ID(N'[dbo].[Login_Log]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Login_Log];
GO
IF OBJECT_ID(N'[dbo].[Market]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Market];
GO
IF OBJECT_ID(N'[dbo].[Matrix_Escalation]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Matrix_Escalation];
GO
IF OBJECT_ID(N'[dbo].[Matrix_Radication]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Matrix_Radication];
GO
IF OBJECT_ID(N'[dbo].[Module]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Module];
GO
IF OBJECT_ID(N'[dbo].[Notificacion]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Notificacion];
GO
IF OBJECT_ID(N'[dbo].[Operation]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Operation];
GO
IF OBJECT_ID(N'[dbo].[OriginQC]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OriginQC];
GO
IF OBJECT_ID(N'[dbo].[PQR]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PQR];
GO
IF OBJECT_ID(N'[dbo].[PQR_Latters]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PQR_Latters];
GO
IF OBJECT_ID(N'[dbo].[PQR_Log]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PQR_Log];
GO
IF OBJECT_ID(N'[dbo].[PQR_State]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PQR_State];
GO
IF OBJECT_ID(N'[dbo].[PqrsCQ]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PqrsCQ];
GO
IF OBJECT_ID(N'[dbo].[ProvinciaCQ]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProvinciaCQ];
GO
IF OBJECT_ID(N'[dbo].[Result]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Result];
GO
IF OBJECT_ID(N'[dbo].[Resultado]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Resultado];
GO
IF OBJECT_ID(N'[dbo].[Role]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Role];
GO
IF OBJECT_ID(N'[dbo].[SendEmail]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SendEmail];
GO
IF OBJECT_ID(N'[dbo].[Service]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Service];
GO
IF OBJECT_ID(N'[dbo].[Skill]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Skill];
GO
IF OBJECT_ID(N'[dbo].[SMS]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SMS];
GO
IF OBJECT_ID(N'[dbo].[State]', 'U') IS NOT NULL
    DROP TABLE [dbo].[State];
GO
IF OBJECT_ID(N'[dbo].[User]', 'U') IS NOT NULL
    DROP TABLE [dbo].[User];
GO
IF OBJECT_ID(N'[dbo].[Written]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Written];
GO
IF OBJECT_ID(N'[dbo].[Writting_State]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Writting_State];
GO
IF OBJECT_ID(N'[ftp].[Ftps]', 'U') IS NOT NULL
    DROP TABLE [ftp].[Ftps];
GO
IF OBJECT_ID(N'[ftp].[Lots]', 'U') IS NOT NULL
    DROP TABLE [ftp].[Lots];
GO
IF OBJECT_ID(N'[latters].[Exceptions]', 'U') IS NOT NULL
    DROP TABLE [latters].[Exceptions];
GO
IF OBJECT_ID(N'[latters].[Paragraph]', 'U') IS NOT NULL
    DROP TABLE [latters].[Paragraph];
GO
IF OBJECT_ID(N'[latters].[PQR_Paragraph]', 'U') IS NOT NULL
    DROP TABLE [latters].[PQR_Paragraph];
GO
IF OBJECT_ID(N'[latters].[Template]', 'U') IS NOT NULL
    DROP TABLE [latters].[Template];
GO
IF OBJECT_ID(N'[latters].[Template_TypeNotification]', 'U') IS NOT NULL
    DROP TABLE [latters].[Template_TypeNotification];
GO
IF OBJECT_ID(N'[latters].[Tokens]', 'U') IS NOT NULL
    DROP TABLE [latters].[Tokens];
GO
IF OBJECT_ID(N'[latters].[TypeLatter]', 'U') IS NOT NULL
    DROP TABLE [latters].[TypeLatter];
GO
IF OBJECT_ID(N'[latters].[TypeNotification]', 'U') IS NOT NULL
    DROP TABLE [latters].[TypeNotification];
GO
IF OBJECT_ID(N'[latters].[TypeParagraph]', 'U') IS NOT NULL
    DROP TABLE [latters].[TypeParagraph];
GO
IF OBJECT_ID(N'[latters].[TypeTemplate]', 'U') IS NOT NULL
    DROP TABLE [latters].[TypeTemplate];
GO
IF OBJECT_ID(N'[BPMModelStoreContainer].[Role_Operation]', 'U') IS NOT NULL
    DROP TABLE [BPMModelStoreContainer].[Role_Operation];
GO
IF OBJECT_ID(N'[BPMModelStoreContainer].[Skill_User]', 'U') IS NOT NULL
    DROP TABLE [BPMModelStoreContainer].[Skill_User];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Action'
CREATE TABLE [dbo].[Action] (
    [IdAction] int IDENTITY(1,1) NOT NULL,
    [Action1] varchar(20)  NULL,
    [State] bit  NULL
);
GO

-- Creating table 'Base'
CREATE TABLE [dbo].[Base] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(50)  NULL,
    [Description] varchar(50)  NULL,
    [IdService] int  NULL,
    [Old] bit  NULL,
    [IdSkill] int  NULL,
    [State] bit  NULL
);
GO

-- Creating table 'Cause'
CREATE TABLE [dbo].[Cause] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Code] varchar(20)  NOT NULL,
    [Description] varchar(200)  NULL,
    [Matter] varchar(500)  NULL,
    [State] bit  NULL
);
GO

-- Creating table 'Client'
CREATE TABLE [dbo].[Client] (
    [IdClient] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(50)  NOT NULL,
    [State] bit  NOT NULL
);
GO

-- Creating table 'Company'
CREATE TABLE [dbo].[Company] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Identifier] varchar(200)  NULL,
    [Description] varchar(200)  NULL,
    [Division] varchar(20)  NULL,
    [Phone] varchar(200)  NULL,
    [State] bit  NULL
);
GO

-- Creating table 'Condition'
CREATE TABLE [dbo].[Condition] (
    [IdCondition] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(50)  NULL,
    [Condition1] varchar(50)  NULL,
    [State] bit  NULL
);
GO

-- Creating table 'Filter'
CREATE TABLE [dbo].[Filter] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Field] int  NULL,
    [Value] varchar(200)  NULL,
    [Action] varchar(200)  NULL,
    [IdBase] int  NOT NULL,
    [Condition] varchar(200)  NULL,
    [TypeFilter] int  NULL
);
GO

-- Creating table 'Login_Log'
CREATE TABLE [dbo].[Login_Log] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Description] varchar(200)  NOT NULL,
    [IdNumber] varchar(50)  NOT NULL,
    [Date] datetime  NULL,
    [Status] int  NOT NULL
);
GO

-- Creating table 'Operation'
CREATE TABLE [dbo].[Operation] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(50)  NOT NULL,
    [State] bit  NOT NULL,
    [IdModule] int  NOT NULL
);
GO

-- Creating table 'PQR_Latters'
CREATE TABLE [dbo].[PQR_Latters] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Id_PQR] int  NOT NULL,
    [Id_typeLatter] int  NOT NULL,
    [Id_DocumentCloud] varchar(50)  NOT NULL
);
GO

-- Creating table 'PQR_Log'
CREATE TABLE [dbo].[PQR_Log] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [IdPQR] int  NULL,
    [IdUser] int  NULL,
    [EventDate] datetime  NULL,
    [EventDescription] varchar(1000)  NULL
);
GO

-- Creating table 'PQR_State'
CREATE TABLE [dbo].[PQR_State] (
    [IdState] int IDENTITY(1,1) NOT NULL,
    [State] varchar(50)  NULL,
    [Description] nvarchar(250)  NULL
);
GO

-- Creating table 'Role'
CREATE TABLE [dbo].[Role] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(100)  NOT NULL,
    [Description] varchar(200)  NOT NULL,
    [State] bit  NOT NULL
);
GO

-- Creating table 'Service'
CREATE TABLE [dbo].[Service] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(50)  NULL,
    [State] bit  NULL
);
GO

-- Creating table 'Skill'
CREATE TABLE [dbo].[Skill] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(100)  NOT NULL,
    [State] bit  NOT NULL,
    [IdClient] int  NOT NULL
);
GO

-- Creating table 'State'
CREATE TABLE [dbo].[State] (
    [IdState] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(50)  NULL,
    [Description] varchar(200)  NULL
);
GO

-- Creating table 'User'
CREATE TABLE [dbo].[User] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Names] varchar(200)  NOT NULL,
    [Surnames] varchar(200)  NOT NULL,
    [IdNumber] varchar(50)  NOT NULL,
    [Password] varchar(100)  NOT NULL,
    [CreationDate] datetime  NOT NULL,
    [IdRole] int  NOT NULL,
    [IdClient] int  NOT NULL,
    [State] bit  NOT NULL,
    [Salt] varchar(32)  NULL,
    [Epx] varchar(50)  NULL
);
GO

-- Creating table 'Written'
CREATE TABLE [dbo].[Written] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Observation] varchar(100)  NULL,
    [State] bit  NULL
);
GO

-- Creating table 'Writting_State'
CREATE TABLE [dbo].[Writting_State] (
    [IdWritting] int  NOT NULL,
    [State] varchar(50)  NULL
);
GO

-- Creating table 'Exceptions'
CREATE TABLE [dbo].[Exceptions] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Id_Template] int  NOT NULL,
    [Id_Cause] int  NULL,
    [Id_Skill] int  NULL,
    [Id_City] int  NULL,
    [Id_Company] int  NULL
);
GO

-- Creating table 'Paragraph'
CREATE TABLE [dbo].[Paragraph] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Id_Cause] int  NOT NULL,
    [Id_TypeParagraph] int  NOT NULL,
    [Description] varchar(100)  NOT NULL,
    [paragraphContent] varchar(max)  NOT NULL
);
GO

-- Creating table 'PQR_Paragraph'
CREATE TABLE [dbo].[PQR_Paragraph] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [IdPQR] int  NULL,
    [Id_Paragraph] int  NULL
);
GO

-- Creating table 'Template'
CREATE TABLE [dbo].[Template] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(100)  NOT NULL,
    [Description] varchar(100)  NOT NULL,
    [Id_TypeTemplate] int  NOT NULL,
    [Id_Company] int  NULL
);
GO

-- Creating table 'Template_TypeNotification'
CREATE TABLE [dbo].[Template_TypeNotification] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Id_Template] int  NOT NULL,
    [Id_TypeNotification] int  NOT NULL,
    [Id_typeLatter] int  NOT NULL,
    [Id_DocumentCloud] varchar(50)  NOT NULL
);
GO

-- Creating table 'Tokens'
CREATE TABLE [dbo].[Tokens] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Token] varchar(50)  NOT NULL,
    [Formule] varchar(500)  NULL,
    [Status] bit  NOT NULL
);
GO

-- Creating table 'TypeLatter'
CREATE TABLE [dbo].[TypeLatter] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(50)  NOT NULL,
    [Status] bit  NOT NULL
);
GO

-- Creating table 'TypeNotification'
CREATE TABLE [dbo].[TypeNotification] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(50)  NOT NULL,
    [Status] bit  NOT NULL
);
GO

-- Creating table 'TypeParagraph'
CREATE TABLE [dbo].[TypeParagraph] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(100)  NOT NULL,
    [Status] bit  NOT NULL
);
GO

-- Creating table 'TypeTemplate'
CREATE TABLE [dbo].[TypeTemplate] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(50)  NOT NULL,
    [Status] bit  NOT NULL
);
GO

-- Creating table 'Ftps'
CREATE TABLE [dbo].[Ftps] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(100)  NULL,
    [Host] varchar(100)  NULL,
    [Port] varchar(100)  NULL,
    [Login] varchar(100)  NULL,
    [Password] varchar(100)  NULL,
    [State] bit  NULL
);
GO

-- Creating table 'Lots'
CREATE TABLE [dbo].[Lots] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [DateInit] datetime  NULL,
    [DateEnd] datetime  NULL,
    [IdFtp] int  NULL,
    [Date] datetime  NULL,
    [State] bit  NULL
);
GO

-- Creating table 'Module'
CREATE TABLE [dbo].[Module] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(50)  NOT NULL,
    [Description] varchar(200)  NOT NULL,
    [State] bit  NOT NULL,
    [Controller] varchar(100)  NULL,
    [Action] varchar(100)  NULL,
    [Parent] int  NULL
);
GO

-- Creating table 'Justified'
CREATE TABLE [dbo].[Justified] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Clave] varchar(10)  NULL,
    [Valor] varchar(50)  NULL
);
GO

-- Creating table 'OriginQCs'
CREATE TABLE [dbo].[OriginQCs] (
    [IdOrigin] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(200)  NULL
);
GO

-- Creating table 'Resultadoes'
CREATE TABLE [dbo].[Resultadoes] (
    [IdResultado] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(200)  NULL
);
GO

-- Creating table 'Certificadoes'
CREATE TABLE [dbo].[Certificadoes] (
    [IdCertificado] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(200)  NULL
);
GO

-- Creating table 'Contactoes'
CREATE TABLE [dbo].[Contactoes] (
    [IdContacto] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(200)  NULL
);
GO

-- Creating table 'Contestas'
CREATE TABLE [dbo].[Contestas] (
    [IdContesta] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(200)  NULL
);
GO

-- Creating table 'Notificacions'
CREATE TABLE [dbo].[Notificacions] (
    [IdNotificacion] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(200)  NULL
);
GO

-- Creating table 'SMS'
CREATE TABLE [dbo].[SMS] (
    [IdSMS] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(200)  NULL
);
GO

-- Creating table 'PqrsCQs'
CREATE TABLE [dbo].[PqrsCQs] (
    [IdPQRS] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(200)  NULL
);
GO

-- Creating table 'ProvinciaCQs'
CREATE TABLE [dbo].[ProvinciaCQs] (
    [IdProvincia] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(200)  NULL
);
GO

-- Creating table 'Chanels'
CREATE TABLE [dbo].[Chanels] (
    [IdChanel] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(200)  NULL
);
GO

-- Creating table 'Events'
CREATE TABLE [dbo].[Events] (
    [IdEvent] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(200)  NULL
);
GO

-- Creating table 'LetterCQs'
CREATE TABLE [dbo].[LetterCQs] (
    [IdLetter] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(200)  NULL
);
GO

-- Creating table 'AddCQs'
CREATE TABLE [dbo].[AddCQs] (
    [Idcq] int IDENTITY(1,1) NOT NULL,
    [NotificationMethod] varchar(50)  NULL,
    [Typing] varchar(50)  NULL,
    [ManagementMail] varchar(200)  NULL,
    [AffairMail] varchar(200)  NULL,
    [EmailAccount] varchar(200)  NULL,
    [IdOrigin] int  NULL,
    [GeneratingUnit] varchar(200)  NULL,
    [Policy] varchar(200)  NULL,
    [Delegation] varchar(200)  NULL,
    [ManagementTelephone] varchar(200)  NULL,
    [Id] int  NULL,
    [Activity] varchar(200)  NULL,
    [Cause] varchar(200)  NULL,
    [Observations] varchar(max)  NULL,
    [ClientName] varchar(200)  NULL,
    [DNI] varchar(200)  NULL,
    [IdCity] int  NULL,
    [ManagementAddress] varchar(200)  NULL,
    [Reference] varchar(200)  NULL,
    [IdCompany] int  NULL,
    [Administrative_Action] varchar(200)  NULL,
    [ManagementQueue] varchar(200)  NULL,
    [TailCase] varchar(200)  NULL,
    [Ticket] varchar(200)  NULL,
    [Process] varchar(200)  NULL,
    [Reassigned] varchar(200)  NULL,
    [IdResultado] int  NULL,
    [CustomeRequest] varchar(200)  NULL,
    [IdContacto] int  NULL,
    [IdSMS] int  NULL,
    [NotificationTelephone] varchar(200)  NULL,
    [IdContesta] int  NULL,
    [IdCertificado] int  NULL,
    [IdNoticacion] int  NULL,
    [Weight] int  NULL,
    [DateEmail] datetime  NULL,
    [ManagementDate] datetime  NULL,
    [ClaimDate] datetime  NULL,
    [IdUser] int  NULL,
    [PQRS] int  NULL,
    [EmailRS] varchar(200)  NULL,
    [Market] varchar(200)  NULL,
    [Province] int  NULL,
    [Chanel] int  NULL,
    [Event] int  NULL,
    [Letter] int  NULL
);
GO

-- Creating table 'Event_Radication'
CREATE TABLE [dbo].[Event_Radication] (
    [IdEvent] int IDENTITY(1,1) NOT NULL,
    [Code] varchar(20)  NOT NULL,
    [Description] varchar(200)  NULL,
    [State] bit  NULL
);
GO

-- Creating table 'Markets'
CREATE TABLE [dbo].[Markets] (
    [IdMarket] int IDENTITY(1,1) NOT NULL,
    [Code] varchar(20)  NOT NULL,
    [Description] varchar(200)  NULL,
    [State] bit  NULL
);
GO

-- Creating table 'Matrix_Radication'
CREATE TABLE [dbo].[Matrix_Radication] (
    [IdMatrix] int IDENTITY(1,1) NOT NULL,
    [IdMarket] int  NULL,
    [IdActivity] int  NULL,
    [IdEvent] int  NULL,
    [Cause] varchar(200)  NULL,
    [Result] varchar(200)  NULL,
    [IdResult] int  NULL,
    [IdUser] int  NULL,
    [State] bit  NULL
);
GO

-- Creating table 'City'
CREATE TABLE [dbo].[City] (
    [IdCity] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(200)  NULL,
    [State] bit  NULL
);
GO

-- Creating table 'Result'
CREATE TABLE [dbo].[Result] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Clave] varchar(10)  NULL,
    [Valor] varchar(500)  NULL
);
GO

-- Creating table 'Field'
CREATE TABLE [dbo].[Field] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(100)  NULL,
    [Value] varchar(100)  NULL,
    [State] bit  NULL
);
GO

-- Creating table 'Filter_Escalation'
CREATE TABLE [dbo].[Filter_Escalation] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Field] int  NULL,
    [Value] varchar(200)  NULL,
    [Action] varchar(200)  NULL,
    [IdEscalation] int  NOT NULL,
    [Condition] varchar(200)  NULL,
    [TypeFilter] int  NULL
);
GO

-- Creating table 'Field_Escalation'
CREATE TABLE [dbo].[Field_Escalation] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(100)  NULL,
    [Value] varchar(100)  NULL,
    [State] bit  NULL
);
GO

-- Creating table 'EscalationCompany'
CREATE TABLE [dbo].[EscalationCompany] (
    [IdCompany] int IDENTITY(1,1) NOT NULL,
    [Code] varchar(20)  NOT NULL,
    [Description] varchar(200)  NULL,
    [State] bit  NULL
);
GO

-- Creating table 'EscalationOrganizativa'
CREATE TABLE [dbo].[EscalationOrganizativa] (
    [IdAorganization] int IDENTITY(1,1) NOT NULL,
    [Code] varchar(20)  NOT NULL,
    [Description] varchar(200)  NULL,
    [State] bit  NULL
);
GO

-- Creating table 'EscalationProcess'
CREATE TABLE [dbo].[EscalationProcess] (
    [IdProcess] int IDENTITY(1,1) NOT NULL,
    [Code] varchar(20)  NOT NULL,
    [Description] varchar(200)  NULL,
    [State] bit  NULL
);
GO

-- Creating table 'Escalation'
CREATE TABLE [dbo].[Escalation] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(50)  NULL,
    [State] bit  NULL,
    [Orden] varchar(50)  NULL
);
GO

-- Creating table 'SendEmail'
CREATE TABLE [dbo].[SendEmail] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Affair] varchar(200)  NULL,
    [Contents] varchar(200)  NULL,
    [Image] varchar(max)  NULL,
    [Path] varchar(50)  NULL,
    [State] bit  NULL
);
GO

-- Creating table 'Matrix_Escalation'
CREATE TABLE [dbo].[Matrix_Escalation] (
    [IdMatrix] int IDENTITY(1,1) NOT NULL,
    [IdAorganization] int  NULL,
    [IdCompany] int  NULL,
    [IdProcess] int  NULL,
    [IdC4C] int  NULL,
    [Cause] varchar(200)  NULL,
    [Names] varchar(200)  NULL,
    [Email] varchar(200)  NULL,
    [Jefe1] varchar(200)  NULL,
    [Email2] varchar(200)  NULL,
    [Jefe2] varchar(200)  NULL,
    [Email3] varchar(200)  NULL,
    [Jefe3] varchar(200)  NULL,
    [Email4] varchar(200)  NULL,
    [IdUser] int  NULL,
    [State] bit  NULL
);
GO

-- Creating table 'EscalationC4C'
CREATE TABLE [dbo].[EscalationC4C] (
    [IdC4C] int IDENTITY(1,1) NOT NULL,
    [Code] varchar(20)  NOT NULL,
    [Description] varchar(200)  NULL,
    [State] bit  NULL
);
GO

-- Creating table 'EscalationManual'
CREATE TABLE [dbo].[EscalationManual] (
    [IdManual] int IDENTITY(1,1) NOT NULL,
    [Names] varchar(200)  NULL,
    [Email] varchar(200)  NULL,
    [ObservationsAnalista] varchar(200)  NULL,
    [StateEscalations] varchar(200)  NULL,
    [Contents] varchar(200)  NULL,
    [IdAorganization] int  NULL,
    [IdProcess] int  NULL,
    [IdC4C] int  NULL,
    [IdPQR] int  NULL,
    [IdUser] int  NULL,
    [DateEmail] datetime  NULL
);
GO

-- Creating table 'PQR'
CREATE TABLE [dbo].[PQR] (
    [IdPQR] int IDENTITY(1,1) NOT NULL,
    [Division] varchar(2000)  NULL,
    [Company] varchar(2000)  NULL,
    [Policy] varchar(2000)  NULL,
    [NameCC] varchar(2000)  NULL,
    [TelephoneBP] varchar(2000)  NULL,
    [MobileBP] varchar(2000)  NULL,
    [EmailBP] varchar(2000)  NULL,
    [Province] varchar(2000)  NULL,
    [ManagementCity] varchar(2000)  NULL,
    [AddressBP] varchar(2000)  NULL,
    [ClientName] varchar(2000)  NULL,
    [MunicipalityContact] varchar(2000)  NULL,
    [AddressContact] varchar(2000)  NULL,
    [TelephoneContact] varchar(2000)  NULL,
    [MobileContact] varchar(2000)  NULL,
    [EmailContact] varchar(2000)  NULL,
    [ManagementMail] varchar(2000)  NULL,
    [Reference] varchar(2000)  NULL,
    [Origin] varchar(2000)  NULL,
    [FilingSpecial] varchar(2000)  NULL,
    [TypeMatrix] varchar(2000)  NULL,
    [Event] varchar(2000)  NULL,
    [ActivityDescription] varchar(2000)  NULL,
    [CauseCode] varchar(2000)  NULL,
    [CauseDescription] varchar(2000)  NULL,
    [FilingDate] varchar(2000)  NULL,
    [PostingUser] varchar(2000)  NULL,
    [GeneratingUnit] varchar(2000)  NULL,
    [States] varchar(2000)  NULL,
    [AuthorizesEmail] varchar(2000)  NULL,
    [CurrentDeliveryUnit] varchar(2000)  NULL,
    [CreationDate] datetime  NULL,
    [FinalizedDate] varchar(2000)  NULL,
    [UserFinal] varchar(2000)  NULL,
    [FinalDeliveryUnit] varchar(2000)  NULL,
    [Result] varchar(2000)  NULL,
    [ClosingReason] varchar(2000)  NULL,
    [FinalDay] int  NULL,
    [ManagementDays] int  NULL,
    [ModificationDate] datetime  NULL,
    [Observaciones] varchar(max)  NULL,
    [Dialing] varchar(2000)  NULL,
    [CreationDialingDate] varchar(2000)  NULL,
    [EndDialingDate] varchar(2000)  NULL,
    [DayLa] int  NULL,
    [Address] varchar(2000)  NULL,
    [Activity] varchar(2000)  NULL,
    [Observations] varchar(max)  NULL,
    [IdBase] int  NULL,
    [Written] int  NULL,
    [ManagementDate] datetime  NULL,
    [DataCaptureDate] datetime  NULL,
    [PrintingDate] datetime  NULL,
    [ScanDate] datetime  NULL,
    [IdUser] int  NULL,
    [IdSkill] int  NULL,
    [State] int  NULL,
    [NotificationMethod] varchar(2000)  NULL,
    [LetterPath] varchar(2000)  NULL,
    [Petente] varchar(2000)  NULL,
    [ManagementAddress] varchar(2000)  NULL,
    [ManagementNeighborhood] varchar(2000)  NULL,
    [LetterReference] varchar(2000)  NULL,
    [ManagementContent] varchar(2000)  NULL,
    [ManagementObservations] varchar(max)  NULL,
    [ManagementWeight] varchar(2000)  NULL,
    [ManagementTelephone] varchar(2000)  NULL,
    [PropertyAddress] varchar(2000)  NULL,
    [Justified] varchar(2000)  NULL,
    [DeliveryUnit] varchar(2000)  NULL,
    [StatePQR] int  NULL,
    [ResultMatrix] varchar(2000)  NULL,
    [ObservationsEscalations] varchar(2000)  NULL,
    [IdEscalamiento] int  NULL
);
GO

-- Creating table 'Role_Operation'
CREATE TABLE [dbo].[Role_Operation] (
    [Operation_Id] int  NOT NULL,
    [Role_Id] int  NOT NULL
);
GO

-- Creating table 'Skill_User'
CREATE TABLE [dbo].[Skill_User] (
    [Skill_Id] int  NOT NULL,
    [User_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [IdAction] in table 'Action'
ALTER TABLE [dbo].[Action]
ADD CONSTRAINT [PK_Action]
    PRIMARY KEY CLUSTERED ([IdAction] ASC);
GO

-- Creating primary key on [Id] in table 'Base'
ALTER TABLE [dbo].[Base]
ADD CONSTRAINT [PK_Base]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Cause'
ALTER TABLE [dbo].[Cause]
ADD CONSTRAINT [PK_Cause]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [IdClient] in table 'Client'
ALTER TABLE [dbo].[Client]
ADD CONSTRAINT [PK_Client]
    PRIMARY KEY CLUSTERED ([IdClient] ASC);
GO

-- Creating primary key on [Id] in table 'Company'
ALTER TABLE [dbo].[Company]
ADD CONSTRAINT [PK_Company]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [IdCondition] in table 'Condition'
ALTER TABLE [dbo].[Condition]
ADD CONSTRAINT [PK_Condition]
    PRIMARY KEY CLUSTERED ([IdCondition] ASC);
GO

-- Creating primary key on [Id] in table 'Filter'
ALTER TABLE [dbo].[Filter]
ADD CONSTRAINT [PK_Filter]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Login_Log'
ALTER TABLE [dbo].[Login_Log]
ADD CONSTRAINT [PK_Login_Log]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Operation'
ALTER TABLE [dbo].[Operation]
ADD CONSTRAINT [PK_Operation]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PQR_Latters'
ALTER TABLE [dbo].[PQR_Latters]
ADD CONSTRAINT [PK_PQR_Latters]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PQR_Log'
ALTER TABLE [dbo].[PQR_Log]
ADD CONSTRAINT [PK_PQR_Log]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [IdState] in table 'PQR_State'
ALTER TABLE [dbo].[PQR_State]
ADD CONSTRAINT [PK_PQR_State]
    PRIMARY KEY CLUSTERED ([IdState] ASC);
GO

-- Creating primary key on [Id] in table 'Role'
ALTER TABLE [dbo].[Role]
ADD CONSTRAINT [PK_Role]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Service'
ALTER TABLE [dbo].[Service]
ADD CONSTRAINT [PK_Service]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Skill'
ALTER TABLE [dbo].[Skill]
ADD CONSTRAINT [PK_Skill]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [IdState] in table 'State'
ALTER TABLE [dbo].[State]
ADD CONSTRAINT [PK_State]
    PRIMARY KEY CLUSTERED ([IdState] ASC);
GO

-- Creating primary key on [Id] in table 'User'
ALTER TABLE [dbo].[User]
ADD CONSTRAINT [PK_User]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Written'
ALTER TABLE [dbo].[Written]
ADD CONSTRAINT [PK_Written]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [IdWritting] in table 'Writting_State'
ALTER TABLE [dbo].[Writting_State]
ADD CONSTRAINT [PK_Writting_State]
    PRIMARY KEY CLUSTERED ([IdWritting] ASC);
GO

-- Creating primary key on [Id] in table 'Exceptions'
ALTER TABLE [dbo].[Exceptions]
ADD CONSTRAINT [PK_Exceptions]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Paragraph'
ALTER TABLE [dbo].[Paragraph]
ADD CONSTRAINT [PK_Paragraph]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PQR_Paragraph'
ALTER TABLE [dbo].[PQR_Paragraph]
ADD CONSTRAINT [PK_PQR_Paragraph]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Template'
ALTER TABLE [dbo].[Template]
ADD CONSTRAINT [PK_Template]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Template_TypeNotification'
ALTER TABLE [dbo].[Template_TypeNotification]
ADD CONSTRAINT [PK_Template_TypeNotification]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Tokens'
ALTER TABLE [dbo].[Tokens]
ADD CONSTRAINT [PK_Tokens]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TypeLatter'
ALTER TABLE [dbo].[TypeLatter]
ADD CONSTRAINT [PK_TypeLatter]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TypeNotification'
ALTER TABLE [dbo].[TypeNotification]
ADD CONSTRAINT [PK_TypeNotification]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TypeParagraph'
ALTER TABLE [dbo].[TypeParagraph]
ADD CONSTRAINT [PK_TypeParagraph]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TypeTemplate'
ALTER TABLE [dbo].[TypeTemplate]
ADD CONSTRAINT [PK_TypeTemplate]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Ftps'
ALTER TABLE [dbo].[Ftps]
ADD CONSTRAINT [PK_Ftps]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Lots'
ALTER TABLE [dbo].[Lots]
ADD CONSTRAINT [PK_Lots]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Module'
ALTER TABLE [dbo].[Module]
ADD CONSTRAINT [PK_Module]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Justified'
ALTER TABLE [dbo].[Justified]
ADD CONSTRAINT [PK_Justified]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [IdOrigin] in table 'OriginQCs'
ALTER TABLE [dbo].[OriginQCs]
ADD CONSTRAINT [PK_OriginQCs]
    PRIMARY KEY CLUSTERED ([IdOrigin] ASC);
GO

-- Creating primary key on [IdResultado] in table 'Resultadoes'
ALTER TABLE [dbo].[Resultadoes]
ADD CONSTRAINT [PK_Resultadoes]
    PRIMARY KEY CLUSTERED ([IdResultado] ASC);
GO

-- Creating primary key on [IdCertificado] in table 'Certificadoes'
ALTER TABLE [dbo].[Certificadoes]
ADD CONSTRAINT [PK_Certificadoes]
    PRIMARY KEY CLUSTERED ([IdCertificado] ASC);
GO

-- Creating primary key on [IdContacto] in table 'Contactoes'
ALTER TABLE [dbo].[Contactoes]
ADD CONSTRAINT [PK_Contactoes]
    PRIMARY KEY CLUSTERED ([IdContacto] ASC);
GO

-- Creating primary key on [IdContesta] in table 'Contestas'
ALTER TABLE [dbo].[Contestas]
ADD CONSTRAINT [PK_Contestas]
    PRIMARY KEY CLUSTERED ([IdContesta] ASC);
GO

-- Creating primary key on [IdNotificacion] in table 'Notificacions'
ALTER TABLE [dbo].[Notificacions]
ADD CONSTRAINT [PK_Notificacions]
    PRIMARY KEY CLUSTERED ([IdNotificacion] ASC);
GO

-- Creating primary key on [IdSMS] in table 'SMS'
ALTER TABLE [dbo].[SMS]
ADD CONSTRAINT [PK_SMS]
    PRIMARY KEY CLUSTERED ([IdSMS] ASC);
GO

-- Creating primary key on [IdPQRS] in table 'PqrsCQs'
ALTER TABLE [dbo].[PqrsCQs]
ADD CONSTRAINT [PK_PqrsCQs]
    PRIMARY KEY CLUSTERED ([IdPQRS] ASC);
GO

-- Creating primary key on [IdProvincia] in table 'ProvinciaCQs'
ALTER TABLE [dbo].[ProvinciaCQs]
ADD CONSTRAINT [PK_ProvinciaCQs]
    PRIMARY KEY CLUSTERED ([IdProvincia] ASC);
GO

-- Creating primary key on [IdChanel] in table 'Chanels'
ALTER TABLE [dbo].[Chanels]
ADD CONSTRAINT [PK_Chanels]
    PRIMARY KEY CLUSTERED ([IdChanel] ASC);
GO

-- Creating primary key on [IdEvent] in table 'Events'
ALTER TABLE [dbo].[Events]
ADD CONSTRAINT [PK_Events]
    PRIMARY KEY CLUSTERED ([IdEvent] ASC);
GO

-- Creating primary key on [IdLetter] in table 'LetterCQs'
ALTER TABLE [dbo].[LetterCQs]
ADD CONSTRAINT [PK_LetterCQs]
    PRIMARY KEY CLUSTERED ([IdLetter] ASC);
GO

-- Creating primary key on [Idcq] in table 'AddCQs'
ALTER TABLE [dbo].[AddCQs]
ADD CONSTRAINT [PK_AddCQs]
    PRIMARY KEY CLUSTERED ([Idcq] ASC);
GO

-- Creating primary key on [IdEvent] in table 'Event_Radication'
ALTER TABLE [dbo].[Event_Radication]
ADD CONSTRAINT [PK_Event_Radication]
    PRIMARY KEY CLUSTERED ([IdEvent] ASC);
GO

-- Creating primary key on [IdMarket] in table 'Markets'
ALTER TABLE [dbo].[Markets]
ADD CONSTRAINT [PK_Markets]
    PRIMARY KEY CLUSTERED ([IdMarket] ASC);
GO

-- Creating primary key on [IdMatrix] in table 'Matrix_Radication'
ALTER TABLE [dbo].[Matrix_Radication]
ADD CONSTRAINT [PK_Matrix_Radication]
    PRIMARY KEY CLUSTERED ([IdMatrix] ASC);
GO

-- Creating primary key on [IdCity] in table 'City'
ALTER TABLE [dbo].[City]
ADD CONSTRAINT [PK_City]
    PRIMARY KEY CLUSTERED ([IdCity] ASC);
GO

-- Creating primary key on [Id] in table 'Result'
ALTER TABLE [dbo].[Result]
ADD CONSTRAINT [PK_Result]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Field'
ALTER TABLE [dbo].[Field]
ADD CONSTRAINT [PK_Field]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Filter_Escalation'
ALTER TABLE [dbo].[Filter_Escalation]
ADD CONSTRAINT [PK_Filter_Escalation]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Field_Escalation'
ALTER TABLE [dbo].[Field_Escalation]
ADD CONSTRAINT [PK_Field_Escalation]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [IdCompany] in table 'EscalationCompany'
ALTER TABLE [dbo].[EscalationCompany]
ADD CONSTRAINT [PK_EscalationCompany]
    PRIMARY KEY CLUSTERED ([IdCompany] ASC);
GO

-- Creating primary key on [IdAorganization] in table 'EscalationOrganizativa'
ALTER TABLE [dbo].[EscalationOrganizativa]
ADD CONSTRAINT [PK_EscalationOrganizativa]
    PRIMARY KEY CLUSTERED ([IdAorganization] ASC);
GO

-- Creating primary key on [IdProcess] in table 'EscalationProcess'
ALTER TABLE [dbo].[EscalationProcess]
ADD CONSTRAINT [PK_EscalationProcess]
    PRIMARY KEY CLUSTERED ([IdProcess] ASC);
GO

-- Creating primary key on [Id] in table 'Escalation'
ALTER TABLE [dbo].[Escalation]
ADD CONSTRAINT [PK_Escalation]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SendEmail'
ALTER TABLE [dbo].[SendEmail]
ADD CONSTRAINT [PK_SendEmail]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [IdMatrix] in table 'Matrix_Escalation'
ALTER TABLE [dbo].[Matrix_Escalation]
ADD CONSTRAINT [PK_Matrix_Escalation]
    PRIMARY KEY CLUSTERED ([IdMatrix] ASC);
GO

-- Creating primary key on [IdC4C] in table 'EscalationC4C'
ALTER TABLE [dbo].[EscalationC4C]
ADD CONSTRAINT [PK_EscalationC4C]
    PRIMARY KEY CLUSTERED ([IdC4C] ASC);
GO

-- Creating primary key on [IdManual] in table 'EscalationManual'
ALTER TABLE [dbo].[EscalationManual]
ADD CONSTRAINT [PK_EscalationManual]
    PRIMARY KEY CLUSTERED ([IdManual] ASC);
GO

-- Creating primary key on [IdPQR] in table 'PQR'
ALTER TABLE [dbo].[PQR]
ADD CONSTRAINT [PK_PQR]
    PRIMARY KEY CLUSTERED ([IdPQR] ASC);
GO

-- Creating primary key on [Operation_Id], [Role_Id] in table 'Role_Operation'
ALTER TABLE [dbo].[Role_Operation]
ADD CONSTRAINT [PK_Role_Operation]
    PRIMARY KEY CLUSTERED ([Operation_Id], [Role_Id] ASC);
GO

-- Creating primary key on [Skill_Id], [User_Id] in table 'Skill_User'
ALTER TABLE [dbo].[Skill_User]
ADD CONSTRAINT [PK_Skill_User]
    PRIMARY KEY CLUSTERED ([Skill_Id], [User_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [IdService] in table 'Base'
ALTER TABLE [dbo].[Base]
ADD CONSTRAINT [FK_Base_Service]
    FOREIGN KEY ([IdService])
    REFERENCES [dbo].[Service]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Base_Service'
CREATE INDEX [IX_FK_Base_Service]
ON [dbo].[Base]
    ([IdService]);
GO

-- Creating foreign key on [IdSkill] in table 'Base'
ALTER TABLE [dbo].[Base]
ADD CONSTRAINT [FK_Base_Skill]
    FOREIGN KEY ([IdSkill])
    REFERENCES [dbo].[Skill]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Base_Skill'
CREATE INDEX [IX_FK_Base_Skill]
ON [dbo].[Base]
    ([IdSkill]);
GO

-- Creating foreign key on [IdBase] in table 'Filter'
ALTER TABLE [dbo].[Filter]
ADD CONSTRAINT [FK_Filter_Base]
    FOREIGN KEY ([IdBase])
    REFERENCES [dbo].[Base]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Filter_Base'
CREATE INDEX [IX_FK_Filter_Base]
ON [dbo].[Filter]
    ([IdBase]);
GO

-- Creating foreign key on [Id_Cause] in table 'Paragraph'
ALTER TABLE [dbo].[Paragraph]
ADD CONSTRAINT [FK_Paragraph_Cause]
    FOREIGN KEY ([Id_Cause])
    REFERENCES [dbo].[Cause]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Paragraph_Cause'
CREATE INDEX [IX_FK_Paragraph_Cause]
ON [dbo].[Paragraph]
    ([Id_Cause]);
GO

-- Creating foreign key on [IdClient] in table 'Skill'
ALTER TABLE [dbo].[Skill]
ADD CONSTRAINT [FK_Skill_Client]
    FOREIGN KEY ([IdClient])
    REFERENCES [dbo].[Client]
        ([IdClient])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Skill_Client'
CREATE INDEX [IX_FK_Skill_Client]
ON [dbo].[Skill]
    ([IdClient]);
GO

-- Creating foreign key on [IdClient] in table 'User'
ALTER TABLE [dbo].[User]
ADD CONSTRAINT [FK_User_Client]
    FOREIGN KEY ([IdClient])
    REFERENCES [dbo].[Client]
        ([IdClient])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_User_Client'
CREATE INDEX [IX_FK_User_Client]
ON [dbo].[User]
    ([IdClient]);
GO

-- Creating foreign key on [Id_Company] in table 'Exceptions'
ALTER TABLE [dbo].[Exceptions]
ADD CONSTRAINT [FK_Company_exception]
    FOREIGN KEY ([Id_Company])
    REFERENCES [dbo].[Company]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Company_exception'
CREATE INDEX [IX_FK_Company_exception]
ON [dbo].[Exceptions]
    ([Id_Company]);
GO

-- Creating foreign key on [Id_typeLatter] in table 'PQR_Latters'
ALTER TABLE [dbo].[PQR_Latters]
ADD CONSTRAINT [FK_PQR_Latters_TypeLatter]
    FOREIGN KEY ([Id_typeLatter])
    REFERENCES [dbo].[TypeLatter]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PQR_Latters_TypeLatter'
CREATE INDEX [IX_FK_PQR_Latters_TypeLatter]
ON [dbo].[PQR_Latters]
    ([Id_typeLatter]);
GO

-- Creating foreign key on [IdRole] in table 'User'
ALTER TABLE [dbo].[User]
ADD CONSTRAINT [FK_User_User]
    FOREIGN KEY ([IdRole])
    REFERENCES [dbo].[Role]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_User_User'
CREATE INDEX [IX_FK_User_User]
ON [dbo].[User]
    ([IdRole]);
GO

-- Creating foreign key on [Id_Template] in table 'Exceptions'
ALTER TABLE [dbo].[Exceptions]
ADD CONSTRAINT [FK_Exceptions_Template]
    FOREIGN KEY ([Id_Template])
    REFERENCES [dbo].[Template]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Exceptions_Template'
CREATE INDEX [IX_FK_Exceptions_Template]
ON [dbo].[Exceptions]
    ([Id_Template]);
GO

-- Creating foreign key on [Id_TypeParagraph] in table 'Paragraph'
ALTER TABLE [dbo].[Paragraph]
ADD CONSTRAINT [FK_Paragraph_TypeParagraph]
    FOREIGN KEY ([Id_TypeParagraph])
    REFERENCES [dbo].[TypeParagraph]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Paragraph_TypeParagraph'
CREATE INDEX [IX_FK_Paragraph_TypeParagraph]
ON [dbo].[Paragraph]
    ([Id_TypeParagraph]);
GO

-- Creating foreign key on [Id_Template] in table 'Template_TypeNotification'
ALTER TABLE [dbo].[Template_TypeNotification]
ADD CONSTRAINT [FK_Template_TypeNotification_Template]
    FOREIGN KEY ([Id_Template])
    REFERENCES [dbo].[Template]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Template_TypeNotification_Template'
CREATE INDEX [IX_FK_Template_TypeNotification_Template]
ON [dbo].[Template_TypeNotification]
    ([Id_Template]);
GO

-- Creating foreign key on [Id_TypeTemplate] in table 'Template'
ALTER TABLE [dbo].[Template]
ADD CONSTRAINT [FK_Template_TypeTemplate]
    FOREIGN KEY ([Id_TypeTemplate])
    REFERENCES [dbo].[TypeTemplate]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Template_TypeTemplate'
CREATE INDEX [IX_FK_Template_TypeTemplate]
ON [dbo].[Template]
    ([Id_TypeTemplate]);
GO

-- Creating foreign key on [Id_typeLatter] in table 'Template_TypeNotification'
ALTER TABLE [dbo].[Template_TypeNotification]
ADD CONSTRAINT [FK_Template_TypeNotification_TypeLatter]
    FOREIGN KEY ([Id_typeLatter])
    REFERENCES [dbo].[TypeLatter]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Template_TypeNotification_TypeLatter'
CREATE INDEX [IX_FK_Template_TypeNotification_TypeLatter]
ON [dbo].[Template_TypeNotification]
    ([Id_typeLatter]);
GO

-- Creating foreign key on [Id_TypeNotification] in table 'Template_TypeNotification'
ALTER TABLE [dbo].[Template_TypeNotification]
ADD CONSTRAINT [FK_Template_TypeNotification_TypeNotification]
    FOREIGN KEY ([Id_TypeNotification])
    REFERENCES [dbo].[TypeNotification]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Template_TypeNotification_TypeNotification'
CREATE INDEX [IX_FK_Template_TypeNotification_TypeNotification]
ON [dbo].[Template_TypeNotification]
    ([Id_TypeNotification]);
GO

-- Creating foreign key on [Operation_Id] in table 'Role_Operation'
ALTER TABLE [dbo].[Role_Operation]
ADD CONSTRAINT [FK_Role_Operation_Operation]
    FOREIGN KEY ([Operation_Id])
    REFERENCES [dbo].[Operation]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Role_Id] in table 'Role_Operation'
ALTER TABLE [dbo].[Role_Operation]
ADD CONSTRAINT [FK_Role_Operation_Role]
    FOREIGN KEY ([Role_Id])
    REFERENCES [dbo].[Role]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Role_Operation_Role'
CREATE INDEX [IX_FK_Role_Operation_Role]
ON [dbo].[Role_Operation]
    ([Role_Id]);
GO

-- Creating foreign key on [Skill_Id] in table 'Skill_User'
ALTER TABLE [dbo].[Skill_User]
ADD CONSTRAINT [FK_Skill_User_Skill]
    FOREIGN KEY ([Skill_Id])
    REFERENCES [dbo].[Skill]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [User_Id] in table 'Skill_User'
ALTER TABLE [dbo].[Skill_User]
ADD CONSTRAINT [FK_Skill_User_User]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[User]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Skill_User_User'
CREATE INDEX [IX_FK_Skill_User_User]
ON [dbo].[Skill_User]
    ([User_Id]);
GO

-- Creating foreign key on [IdCertificado] in table 'AddCQs'
ALTER TABLE [dbo].[AddCQs]
ADD CONSTRAINT [FK_AddCQs_Certificado]
    FOREIGN KEY ([IdCertificado])
    REFERENCES [dbo].[Certificadoes]
        ([IdCertificado])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AddCQs_Certificado'
CREATE INDEX [IX_FK_AddCQs_Certificado]
ON [dbo].[AddCQs]
    ([IdCertificado]);
GO

-- Creating foreign key on [Chanel] in table 'AddCQs'
ALTER TABLE [dbo].[AddCQs]
ADD CONSTRAINT [FK_AddCQs_Chanel]
    FOREIGN KEY ([Chanel])
    REFERENCES [dbo].[Chanels]
        ([IdChanel])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AddCQs_Chanel'
CREATE INDEX [IX_FK_AddCQs_Chanel]
ON [dbo].[AddCQs]
    ([Chanel]);
GO

-- Creating foreign key on [IdCompany] in table 'AddCQs'
ALTER TABLE [dbo].[AddCQs]
ADD CONSTRAINT [FK_AddCQs_Company]
    FOREIGN KEY ([IdCompany])
    REFERENCES [dbo].[Company]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AddCQs_Company'
CREATE INDEX [IX_FK_AddCQs_Company]
ON [dbo].[AddCQs]
    ([IdCompany]);
GO

-- Creating foreign key on [IdContacto] in table 'AddCQs'
ALTER TABLE [dbo].[AddCQs]
ADD CONSTRAINT [FK_AddCQs_Contacto]
    FOREIGN KEY ([IdContacto])
    REFERENCES [dbo].[Contactoes]
        ([IdContacto])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AddCQs_Contacto'
CREATE INDEX [IX_FK_AddCQs_Contacto]
ON [dbo].[AddCQs]
    ([IdContacto]);
GO

-- Creating foreign key on [IdContesta] in table 'AddCQs'
ALTER TABLE [dbo].[AddCQs]
ADD CONSTRAINT [FK_AddCQs_Contesta]
    FOREIGN KEY ([IdContesta])
    REFERENCES [dbo].[Contestas]
        ([IdContesta])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AddCQs_Contesta'
CREATE INDEX [IX_FK_AddCQs_Contesta]
ON [dbo].[AddCQs]
    ([IdContesta]);
GO

-- Creating foreign key on [Event] in table 'AddCQs'
ALTER TABLE [dbo].[AddCQs]
ADD CONSTRAINT [FK_AddCQs_Event]
    FOREIGN KEY ([Event])
    REFERENCES [dbo].[Events]
        ([IdEvent])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AddCQs_Event'
CREATE INDEX [IX_FK_AddCQs_Event]
ON [dbo].[AddCQs]
    ([Event]);
GO

-- Creating foreign key on [Id] in table 'AddCQs'
ALTER TABLE [dbo].[AddCQs]
ADD CONSTRAINT [FK_AddCQs_Justified]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Justified]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AddCQs_Justified'
CREATE INDEX [IX_FK_AddCQs_Justified]
ON [dbo].[AddCQs]
    ([Id]);
GO

-- Creating foreign key on [Letter] in table 'AddCQs'
ALTER TABLE [dbo].[AddCQs]
ADD CONSTRAINT [FK_AddCQs_Letter]
    FOREIGN KEY ([Letter])
    REFERENCES [dbo].[LetterCQs]
        ([IdLetter])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AddCQs_Letter'
CREATE INDEX [IX_FK_AddCQs_Letter]
ON [dbo].[AddCQs]
    ([Letter]);
GO

-- Creating foreign key on [IdNoticacion] in table 'AddCQs'
ALTER TABLE [dbo].[AddCQs]
ADD CONSTRAINT [FK_AddCQs_Notificacion]
    FOREIGN KEY ([IdNoticacion])
    REFERENCES [dbo].[Notificacions]
        ([IdNotificacion])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AddCQs_Notificacion'
CREATE INDEX [IX_FK_AddCQs_Notificacion]
ON [dbo].[AddCQs]
    ([IdNoticacion]);
GO

-- Creating foreign key on [IdOrigin] in table 'AddCQs'
ALTER TABLE [dbo].[AddCQs]
ADD CONSTRAINT [FK_AddCQs_OriginQC]
    FOREIGN KEY ([IdOrigin])
    REFERENCES [dbo].[OriginQCs]
        ([IdOrigin])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AddCQs_OriginQC'
CREATE INDEX [IX_FK_AddCQs_OriginQC]
ON [dbo].[AddCQs]
    ([IdOrigin]);
GO

-- Creating foreign key on [PQRS] in table 'AddCQs'
ALTER TABLE [dbo].[AddCQs]
ADD CONSTRAINT [FK_AddCQs_PQRS]
    FOREIGN KEY ([PQRS])
    REFERENCES [dbo].[PqrsCQs]
        ([IdPQRS])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AddCQs_PQRS'
CREATE INDEX [IX_FK_AddCQs_PQRS]
ON [dbo].[AddCQs]
    ([PQRS]);
GO

-- Creating foreign key on [Province] in table 'AddCQs'
ALTER TABLE [dbo].[AddCQs]
ADD CONSTRAINT [FK_AddCQs_Provincia]
    FOREIGN KEY ([Province])
    REFERENCES [dbo].[ProvinciaCQs]
        ([IdProvincia])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AddCQs_Provincia'
CREATE INDEX [IX_FK_AddCQs_Provincia]
ON [dbo].[AddCQs]
    ([Province]);
GO

-- Creating foreign key on [IdResultado] in table 'AddCQs'
ALTER TABLE [dbo].[AddCQs]
ADD CONSTRAINT [FK_AddCQs_Resultado]
    FOREIGN KEY ([IdResultado])
    REFERENCES [dbo].[Resultadoes]
        ([IdResultado])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AddCQs_Resultado'
CREATE INDEX [IX_FK_AddCQs_Resultado]
ON [dbo].[AddCQs]
    ([IdResultado]);
GO

-- Creating foreign key on [IdSMS] in table 'AddCQs'
ALTER TABLE [dbo].[AddCQs]
ADD CONSTRAINT [FK_AddCQs_SMS]
    FOREIGN KEY ([IdSMS])
    REFERENCES [dbo].[SMS]
        ([IdSMS])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AddCQs_SMS'
CREATE INDEX [IX_FK_AddCQs_SMS]
ON [dbo].[AddCQs]
    ([IdSMS]);
GO

-- Creating foreign key on [IdUser] in table 'AddCQs'
ALTER TABLE [dbo].[AddCQs]
ADD CONSTRAINT [FK_AddCQs_User]
    FOREIGN KEY ([IdUser])
    REFERENCES [dbo].[User]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AddCQs_User'
CREATE INDEX [IX_FK_AddCQs_User]
ON [dbo].[AddCQs]
    ([IdUser]);
GO

-- Creating foreign key on [IdEvent] in table 'Matrix_Radication'
ALTER TABLE [dbo].[Matrix_Radication]
ADD CONSTRAINT [FK_Matrix_Radication_Event]
    FOREIGN KEY ([IdEvent])
    REFERENCES [dbo].[Event_Radication]
        ([IdEvent])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Matrix_Radication_Event'
CREATE INDEX [IX_FK_Matrix_Radication_Event]
ON [dbo].[Matrix_Radication]
    ([IdEvent]);
GO

-- Creating foreign key on [IdMarket] in table 'Matrix_Radication'
ALTER TABLE [dbo].[Matrix_Radication]
ADD CONSTRAINT [FK_Matrix_Radication_Market]
    FOREIGN KEY ([IdMarket])
    REFERENCES [dbo].[Markets]
        ([IdMarket])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Matrix_Radication_Market'
CREATE INDEX [IX_FK_Matrix_Radication_Market]
ON [dbo].[Matrix_Radication]
    ([IdMarket]);
GO

-- Creating foreign key on [IdUser] in table 'Matrix_Radication'
ALTER TABLE [dbo].[Matrix_Radication]
ADD CONSTRAINT [FK_Matrix_Radication_User]
    FOREIGN KEY ([IdUser])
    REFERENCES [dbo].[User]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Matrix_Radication_User'
CREATE INDEX [IX_FK_Matrix_Radication_User]
ON [dbo].[Matrix_Radication]
    ([IdUser]);
GO

-- Creating foreign key on [IdCity] in table 'AddCQs'
ALTER TABLE [dbo].[AddCQs]
ADD CONSTRAINT [FK_AddCQs_City]
    FOREIGN KEY ([IdCity])
    REFERENCES [dbo].[City]
        ([IdCity])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AddCQs_City'
CREATE INDEX [IX_FK_AddCQs_City]
ON [dbo].[AddCQs]
    ([IdCity]);
GO

-- Creating foreign key on [Id_City] in table 'Exceptions'
ALTER TABLE [dbo].[Exceptions]
ADD CONSTRAINT [FK_City_exception]
    FOREIGN KEY ([Id_City])
    REFERENCES [dbo].[City]
        ([IdCity])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_City_exception'
CREATE INDEX [IX_FK_City_exception]
ON [dbo].[Exceptions]
    ([Id_City]);
GO

-- Creating foreign key on [IdResult] in table 'Matrix_Radication'
ALTER TABLE [dbo].[Matrix_Radication]
ADD CONSTRAINT [FK_Matrix_Radication_Result]
    FOREIGN KEY ([IdResult])
    REFERENCES [dbo].[Result]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Matrix_Radication_Result'
CREATE INDEX [IX_FK_Matrix_Radication_Result]
ON [dbo].[Matrix_Radication]
    ([IdResult]);
GO

-- Creating foreign key on [Field] in table 'Filter'
ALTER TABLE [dbo].[Filter]
ADD CONSTRAINT [FK_Filter_Field]
    FOREIGN KEY ([Field])
    REFERENCES [dbo].[Field]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Filter_Field'
CREATE INDEX [IX_FK_Filter_Field]
ON [dbo].[Filter]
    ([Field]);
GO

-- Creating foreign key on [Field] in table 'Filter_Escalation'
ALTER TABLE [dbo].[Filter_Escalation]
ADD CONSTRAINT [FK_Filter_Escalation_Field_Escalation]
    FOREIGN KEY ([Field])
    REFERENCES [dbo].[Field_Escalation]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Filter_Escalation_Field_Escalation'
CREATE INDEX [IX_FK_Filter_Escalation_Field_Escalation]
ON [dbo].[Filter_Escalation]
    ([Field]);
GO

-- Creating foreign key on [IdCompany] in table 'Matrix_Escalation'
ALTER TABLE [dbo].[Matrix_Escalation]
ADD CONSTRAINT [FK_Matrix_Escalation_Company]
    FOREIGN KEY ([IdCompany])
    REFERENCES [dbo].[EscalationCompany]
        ([IdCompany])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Matrix_Escalation_Company'
CREATE INDEX [IX_FK_Matrix_Escalation_Company]
ON [dbo].[Matrix_Escalation]
    ([IdCompany]);
GO

-- Creating foreign key on [IdAorganization] in table 'Matrix_Escalation'
ALTER TABLE [dbo].[Matrix_Escalation]
ADD CONSTRAINT [FK_Matrix_Escalation_Organizativa]
    FOREIGN KEY ([IdAorganization])
    REFERENCES [dbo].[EscalationOrganizativa]
        ([IdAorganization])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Matrix_Escalation_Organizativa'
CREATE INDEX [IX_FK_Matrix_Escalation_Organizativa]
ON [dbo].[Matrix_Escalation]
    ([IdAorganization]);
GO

-- Creating foreign key on [IdProcess] in table 'Matrix_Escalation'
ALTER TABLE [dbo].[Matrix_Escalation]
ADD CONSTRAINT [FK_Matrix_Escalation_Process]
    FOREIGN KEY ([IdProcess])
    REFERENCES [dbo].[EscalationProcess]
        ([IdProcess])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Matrix_Escalation_Process'
CREATE INDEX [IX_FK_Matrix_Escalation_Process]
ON [dbo].[Matrix_Escalation]
    ([IdProcess]);
GO

-- Creating foreign key on [IdC4C] in table 'Matrix_Escalation'
ALTER TABLE [dbo].[Matrix_Escalation]
ADD CONSTRAINT [FK_Matrix_Escalation_C4C]
    FOREIGN KEY ([IdC4C])
    REFERENCES [dbo].[EscalationC4C]
        ([IdC4C])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Matrix_Escalation_C4C'
CREATE INDEX [IX_FK_Matrix_Escalation_C4C]
ON [dbo].[Matrix_Escalation]
    ([IdC4C]);
GO

-- Creating foreign key on [IdC4C] in table 'EscalationManual'
ALTER TABLE [dbo].[EscalationManual]
ADD CONSTRAINT [FK_EscalationManual_C4C]
    FOREIGN KEY ([IdC4C])
    REFERENCES [dbo].[EscalationC4C]
        ([IdC4C])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EscalationManual_C4C'
CREATE INDEX [IX_FK_EscalationManual_C4C]
ON [dbo].[EscalationManual]
    ([IdC4C]);
GO

-- Creating foreign key on [IdAorganization] in table 'EscalationManual'
ALTER TABLE [dbo].[EscalationManual]
ADD CONSTRAINT [FK_EscalationManual_Organization]
    FOREIGN KEY ([IdAorganization])
    REFERENCES [dbo].[EscalationOrganizativa]
        ([IdAorganization])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EscalationManual_Organization'
CREATE INDEX [IX_FK_EscalationManual_Organization]
ON [dbo].[EscalationManual]
    ([IdAorganization]);
GO

-- Creating foreign key on [IdProcess] in table 'EscalationManual'
ALTER TABLE [dbo].[EscalationManual]
ADD CONSTRAINT [FK_EscalationManual_Process]
    FOREIGN KEY ([IdProcess])
    REFERENCES [dbo].[EscalationProcess]
        ([IdProcess])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EscalationManual_Process'
CREATE INDEX [IX_FK_EscalationManual_Process]
ON [dbo].[EscalationManual]
    ([IdProcess]);
GO

-- Creating foreign key on [IdPQR] in table 'EscalationManual'
ALTER TABLE [dbo].[EscalationManual]
ADD CONSTRAINT [FK_EscalationManual_PQR]
    FOREIGN KEY ([IdPQR])
    REFERENCES [dbo].[PQR]
        ([IdPQR])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EscalationManual_PQR'
CREATE INDEX [IX_FK_EscalationManual_PQR]
ON [dbo].[EscalationManual]
    ([IdPQR]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------