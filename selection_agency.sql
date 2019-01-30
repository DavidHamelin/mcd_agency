----Ex01

--USE [agency]
--GO
--SELECT
--	[dbo].[biens_immo].[nom_bien],
--	[dbo].[types].[type],
--	[dbo].[biens_immo].[prix],
--	[dbo].[biens_immo].[code_postal]
--FROM [dbo].[biens_immo]
--LEFT JOIN [dbo].[types] ON [dbo].[types].[id_types]=[dbo].[biens_immo].[id_types]
--ORDER BY [dbo].[types].[type]
--GO

----Ex02

--USE [agency]
--GO
--SELECT
--	[dbo].[rendez_vous].[date_rdv],
--	[dbo].[creneaux_horaire].[creneau],
--	[dbo].[biens_immo].[nom_bien],
--	[dbo].[biens_immo].[code_postal],
--	[dbo].[biens_immo].[prix],
--	[dbo].[types].[type],
--	[dbo].[clients].[nom],
--	[dbo].[clients].[prenom]
--FROM [dbo].[rendez_vous]
--LEFT JOIN [dbo].[creneaux_horaire] ON [dbo].[rendez_vous].[id_creneau]=[dbo].[creneaux_horaire].[id_creneau]
--LEFT JOIN [dbo].[biens_immo] ON [dbo].[rendez_vous].[id_biens_immo]=[dbo].[biens_immo].[id_biens_immo]
--LEFT JOIN [dbo].[clients] ON [dbo].[rendez_vous].[id_clients]=[dbo].[clients].[id_clients]
--LEFT JOIN [dbo].[types] ON [dbo].[biens_immo].[id_types]=[dbo].[types].[id_types]

--ORDER BY [dbo].[rendez_vous].[date_rdv]
--GO


----Ex03 : 

--USE [agency]
--GO
--SELECT 
--	[dbo].[clients].[nom],
--	[dbo].[clients].[prenom],
--	[dbo].[types].[type],
--	[dbo].[clients].[budget]
--FROM [dbo].[clients]
--LEFT JOIN [types] ON [dbo].[types].[id_types]=[dbo].[clients].[id_types]
--WHERE [dbo].[types].[type] = 'terrain'
--GO