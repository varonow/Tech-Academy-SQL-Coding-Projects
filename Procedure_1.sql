/*  How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"?  */

CREATE PROCEDURE dbo.libGetTotalByTitleBranch
    @Title VARCHAR(80) = 'The Lost Tribe',
    @BranchName VARCHAR(50) = 'Sharpstown'
AS
    SELECT bc.Number_Of_Copies AS 'Total Copies'
    FROM Book_Copies bc
         INNER JOIN Books b
             ON b.BookID = bc.BookID
         INNER JOIN Library_Branch lb
             ON lb.BranchID = bc.BranchID
    WHERE b.Title = @Title
    AND lb.BranchName = @BranchName  
GO

--EXEC libGetTotalByTitleBranch @Title='Doctor Sleep', @BranchName = 'Central'