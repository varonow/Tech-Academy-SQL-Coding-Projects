/*  7 For each book authored by "Stephen King", retrieve the title and the number of copies owned by the library branch whose name is "Central".  */
/*  EXAMPLE: EXEC libGetAmtOwnedBookBYAuthorBranch @AuthorName = 'Author Name', @BranchName = 'Branch Name' */

CREATE PROCEDURE dbo.libGetAmtOwnedBookBYAuthorBranch
    @AuthorName VARCHAR(80) = 'Stephen King',
    @BranchName VARCHAR(50) = 'Central'
AS
    SELECT b.Title, bc.Number_Of_Copies
        FROM Books b
        INNER JOIN Book_Authors ba
            ON ba.BookID = b.BookID
        INNER JOIN Book_Copies bc
            ON bc.BookID = b.BookID
        INNER JOIN Library_Branch lb
            ON lb.BranchID = bc.BranchID
        WHERE ba.AuthorName = @AuthorName
            AND lb.BranchName = @BranchName
GO

