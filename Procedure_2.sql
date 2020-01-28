/* 2. How many copies of the book titled "The Lost Tribe" are owned by each library branch? */
/* Example: Exec libGetTotaforAllBranchByTitle @Title = 'Book Title' */

CREATE PROCEDURE dbo.libGetTotaforAllBranchByTitle
    @Title VARCHAR(80) = 'The Lost Tribe'
AS    
    SELECT lb.BranchName,  IsNULL(bc.Number_Of_Copies,0) AS 'Number of Copies'
    FROM Library_Branch lb
        LEFT JOIN ( 
            Book_Copies bc 
                JOIN Books b
                ON b.BookID = bc.BookID 
                AND b.Title= @Title
             )
        ON bc.BranchID = lb.BranchID
GO

