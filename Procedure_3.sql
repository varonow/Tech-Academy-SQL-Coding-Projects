/* 3 Retrieve the names of all borrowers who do not have any books checked out. */
/* Example: EXEC libGetInactiveBorrowers */

CREATE PROCEDURE dbo.libGetInactiveBorrowers

AS    
    SELECT b.Name
        FROM Borrower b
        LEFT JOIN Book_Loans bl
            ON bl.CardNo = b.CardNo
        WHERE bl.CardNo IS NULL
GO

