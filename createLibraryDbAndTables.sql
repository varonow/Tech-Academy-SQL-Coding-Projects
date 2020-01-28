/* WARNING: Drop Database if exists */
DROP DATABASE IF EXISTS db_library;

/* Create Database */
CREATE DATABASE db_library;

/*  Build Tables */
CREATE TABLE Publisher (
    PublisherName VARCHAR(50) PRIMARY KEY NOT NULL,
    Address VARCHAR(80) NOT NULL,
    Phone VARCHAR(50) NOT NULL
);

CREATE TABLE Books (
    BookID INT PRIMARY KEY NOT NULL IDENTITY(1,1),
    Title VARCHAR(80) NOT NULL,
    PublisherName VARCHAR(50) NOT NULL CONSTRAINT fk_publisher_name FOREIGN KEY REFERENCES Publisher(PublisherName) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Book_Authors  (
    BookID INT NOT NULL CONSTRAINT fk_books_author FOREIGN KEY REFERENCES Books(BookID) ON UPDATE CASCADE ON DELETE CASCADE,
    AuthorName VARCHAR(80) NOT NULL
);

ALTER TABLE Book_Authors
ADD CONSTRAINT UC_bookauthors_bookid_authorname UNIQUE(BookID, AuthorName);

CREATE TABLE Library_Branch (
    BranchID INT PRIMARY KEY NOT NULL IDENTITY(1,1),
    BranchName VARCHAR(50) NOT NULL,
    Address VARCHAR(80) NOT NULL
);

CREATE TABLE Book_Copies  (
    BookID INT NOT NULL CONSTRAINT fk_books_copies FOREIGN KEY REFERENCES Books(BookID) ON UPDATE CASCADE ON DELETE CASCADE,
    BranchID INT NOT NULL CONSTRAINT fk_branch_copies FOREIGN KEY REFERENCES Library_Branch(BranchID) ON UPDATE CASCADE ON DELETE CASCADE,
    Number_Of_Copies INT NOT NULL
);

ALTER TABLE Book_Copies
ADD CONSTRAINT UC_bookcopies_bookid_branchid UNIQUE(BookID, BranchID);

CREATE TABLE Borrower (
    CardNo INT PRIMARY KEY NOT NULL IDENTITY(1000,1),
    Name VARCHAR(80) NOT NULL,
    Address VARCHAR(80) NOT NULL,
    Phone VARCHAR(50) NOT NULL
);


/* There is logic missing in this  schema, no way to know if a book has been returned, 
-  so all I can think of is a 4 column unique constraint to not have a duplicate record
-  but still allow someone to take a book out more than once (but only once a day)
 */

CREATE TABLE Book_Loans  (
    BookID INT NOT NULL CONSTRAINT fk_books_loans FOREIGN KEY REFERENCES Books(BookID) ON UPDATE CASCADE ON DELETE CASCADE,
    BranchID INT NOT NULL CONSTRAINT fk_branch_loans FOREIGN KEY REFERENCES Library_Branch(BranchID) ON UPDATE CASCADE ON DELETE CASCADE,
    CardNo INT NOT NULL CONSTRAINT fk_borrower_loans FOREIGN KEY REFERENCES Borrower(CardNo) ON UPDATE CASCADE ON DELETE CASCADE,
    DateOut DATE NOT NULL,
    DateDue DATE NOT NULL
);

ALTER TABLE Book_Loans
ADD CONSTRAINT UC_loans_bookid_branchid_cardno_dateout UNIQUE(BookID, BranchID, CardNo, DateOut);

