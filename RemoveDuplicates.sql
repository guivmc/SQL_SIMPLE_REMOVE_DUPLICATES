/****** Script for SelectTopNRows command from SSMS  ******/

DELETE FROM *Table Name* WHERE id NOT IN 
(
SELECT MAX(id) AS MaxRecordID FROM  *Table Name*
        GROUP BY *Duplicated attributes*
)
