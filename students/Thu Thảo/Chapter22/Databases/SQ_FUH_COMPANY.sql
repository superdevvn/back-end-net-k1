-- FUH_COMPANY DATABASE
-- sp_Select_Insert_Update_Delete_tblWorksOn 

-- I - sp_Select_tblWorksOn
Use FUH_COMPANY
Go
Drop sp_Select_tblWorksOn
Go

Use FUH_COMPANY
Go
Create proc sp_Select_tblWorksOn 
As
Select	empSSN,proNum,workHours 
From	tblWorksOn
Go

Use FUH_COMPANY
Go
Exec sp_Select_tblWorksOn 
Go


-- II - sp_Insert_tblWorksOn
Use FUH_COMPANY
Go
Drop sp_Insert_tblWorksOn
Go

Use FUH_COMPANY
Go
Create proc sp_Insert_tblWorksOn
@empSSN decimal,
@proNum int,
@workHours int
As
Insert into tblWorksOn values (@empSSN,@proNum,@workHours)
Go

Use FUH_COMPANY
Go
Exec sp_Insert_tblWorksOn 
30121050035, 3, 20
Go

-- III - sp_Update_tblWorksOn
Use FUH_COMPANY
Go
Drop sp_Update_tblWorksOn
Go

Use FUH_COMPANY
Go
Create proc sp_Update_tblWorksOn
@empSSN decimal,
@proNum int,
@workHours int
As
Update tblWorksOn Set workHours=@workHours Where empSSN=@empSSN and proNum=@proNum
Go

Use FUH_COMPANY
Go
Exec sp_Update_tblWorksOn 
30121050035, 4, 20
Go

-- IV - sp_Delete_tblWorksOn
Use FUH_COMPANY
Go
Drop sp_Delete_tblWorksOn
Go

Use FUH_COMPANY
Go
Create proc sp_Delete_tblWorksOn
@empSSN decimal, 
@proNum int
As
Delete From tblWorksOn Where empSSN=@empSSN and proNum=@proNum
Go

Use FUH_COMPANY
Go
Exec sp_Delete_tblWorksOn 
30121050035, 3
Go