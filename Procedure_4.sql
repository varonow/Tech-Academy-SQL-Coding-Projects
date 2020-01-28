/* 4 For each book that is loaned out from the "Sharpstown" branch
 - and whose DueDate is today, retrieve the book title, the borrower's name, 
 - and the borrower's address. */
 
 /* EXAMPLE: EXEC libGetBorrowerBookByBranchDueDate @BranchName='Branch Name'  */

CREATE PROCEDURE dbo.libGetBorrowerBookByBranchDueDate
   @BranchName VARCHAR(80) = 'Sharpstown'
AS
	DECLARE  @date date = GETDATE()

    SELECT b.Title, bw.Name, bw.Address
        FROM Book_Loans bl
        INNER JOIN Books b
            ON b.BookID = bl.BookID
        INNER JOIN Library_Branch lb
            ON lb.BranchID = bl.BranchID
        INNER JOIN Borrower bw
            ON bw.CardNo = bl.CardNo
        WHERE bl.DateDue = @date
        AND lb.BranchName= @BranchName
GO

