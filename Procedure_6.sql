/* 6  Retrieve the names, addresses, and the number of books checked out for all borrowers who have more than five books checked out.  */
/*  EXAMPLE: EXEC libGetBooksBorrowerGTCount @count = [INT]  */

CREATE PROCEDURE dbo.libGetBooksBorrowerGTCount
    @count INT = 5
AS
    SELECT bw.Name, bw.Address, COUNT(bw.CardNo) AS TotalBooks
        FROM Borrower bw
        INNER JOIN Book_Loans bl
            ON bw.CardNo = bl.CardNo
        GROUP BY bw.Name,  bw.Address
    HAVING COUNT(bw.CardNo) > @count
GO

