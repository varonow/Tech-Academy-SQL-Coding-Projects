/* 5  For EACH library branch, retrieve the branch name and the total number of books loaned out from that branch. */
/*  EXAMPLE: EXEC libGetTotalLoanedByBranch */

CREATE PROCEDURE dbo.libGetTotalLoanedByBranch   
AS
    SELECT lb.BranchName, COUNT(bl.BranchID) AS TotalLoaned
        FROM Library_Branch lb
        INNER JOIN Book_Loans bl
            ON bl.BranchID= lb.BranchID
        GROUP BY lb.BranchName
GO
