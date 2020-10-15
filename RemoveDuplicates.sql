/****** Script for SelectTopNRows command from SSMS  ******/

DELETE FROM [HRSD].[dbo].[Db232Approvers] WHERE id NOT IN 
(
SELECT MAX(id) AS MaxRecordID FROM  [HRSD].[dbo].[Db232Approvers]
        GROUP BY DTEGroup, Community, RPL, Leads
)