INSERT INTO Publisher
    (PublisherName, Address, Phone)
    VALUES
    ('anchor', 'Hermannstal 119 k, 22119 Hamburg, Germany', '49-040-6559920'),
    ('move_books', 'P.O. Box 183 Beacon Falls, CT  USA 06403','203-709-0490'),
    ('arthur_a_levine', '557 Broadway New York, NY USA 10012', '212-343-4436'),
    ('penguin_random_house', '1745 Broadway New York, NY USA 10019', '212-782-9000'),
    ('hachette_book_group', '237 Park Avenue New York, NY USA 10017', '212-364-1100'),
    ('usborne_publishing_limited', '83-85 Saffron Hill London UK EC1n 8R', '44-020-74-30-28-00')
;

SELECT  *  FROM Publisher;

INSERT INTO Books
    (Title, PublisherName)
    VALUES
    ('Doctor Sleep', 'anchor'),
    ('The Stand', 'anchor'),
    ('Salem''s Lot', 'anchor'),
    ('The Lost Tribe', 'move_books'),
    ('The Lost Tribe: Safe Harbor', 'move_books'),
    ('Follow the River', 'move_books'),
    ('Surviving Bear Island', 'move_books'),
    ('Harry Potter And The Sorcerer''s Stone', 'arthur_a_levine'),
    ('Harry Potter and the Chamber of Secrets', 'arthur_a_levine'),
    ('Harry Potter And The Prisoner Of Azkaban', 'arthur_a_levine'),
    ('Harry Potter And The Goblet Of Fire', 'arthur_a_levine'),
    ('Spy', 'penguin_random_house'),
    ('Moral Compass', 'penguin_random_house'),
    ('Matilda', 'penguin_random_house'),
    ('The BFG', 'penguin_random_house'),
    ('Lost Roses', 'penguin_random_house'),
    ('Lilac Girls', 'penguin_random_house'),
    ('Forever Friends', 'hachette_book_group'),
    ('Friends Like Us', 'hachette_book_group'),
    ('One Long River of Song', 'hachette_book_group'),
    ('Freak the Mighty', 'usborne_publishing_limited'),
    ('Who Killed Darius Drake', 'usborne_publishing_limited'),
    ('A Place Called Perfect', 'usborne_publishing_limited'),
    ('The Trouble with Perfect', 'usborne_publishing_limited')
    ;

SELECT  *  FROM Books;

INSERT INTO Book_Authors
    (BookID, AuthorName)
    VALUES
    (1, 'Stephen King'),
    (2, 'Stephen King'),
    (3, 'Stephen King'),
    (4, 'Christine Taylor-Butler'),
    (5, 'Christine Taylor-Butler'),
    (6, 'Paul Greci'),
    (7, 'Paul Greci'),
    (8, 'J.K. Rowling'),
    (9, 'J.K. Rowling'),
    (10, 'J.K. Rowling'),
    (11, 'J.K. Rowling'),
    (12, 'Danielle Steel'),
    (13, 'Danielle Steel'),
    (14, 'Roald Dahl'),
    (15, 'Roald Dahl'),
    (16, 'Martha Hall Kelly'),
    (17, 'Martha Hall Kelly'),
    (18,  'Sarah Mackenzie'),
    (19, 'Sarah Mackenzie'),
    (20, 'Brian Doyle'),
    (21, 'Rodman Philbrick'),
    (22, 'Rodman Philbrick'),
    (23, 'Helena Duggan'),
    (24, 'Helena Duggan')
;

SELECT  *  FROM Book_Authors;

INSERT INTO Library_Branch
    (BranchName, Address)
    VALUES
    ('Sharpstown', '7660 Clarewood, Houston, TX 77036'),
    ('Central', '1604 15th Avenue, Central City, NE 68826'),
    ('Belmar', '517 Tenth Avenue, Belmar, NJ 07719'),
    ('Elberon', '168 Lincoln Avenue, Long Branch, NJ 07740')
;

SELECT * FROM Library_Branch;

INSERT INTO Book_Copies
    (BookID, BranchID, Number_Of_Copies)
    VALUES
    (3, 1, 5),
    (4, 1, 6),
    (5, 1, 6),
    (8, 1, 5),
    (10, 1, 7),
    (11, 1, 5),
    (14, 1, 7),
    (17, 1, 6),
    (20, 1, 10),
    (24, 1, 11),           
    (1, 2, 8),
    (2, 2, 5),
    (5, 2, 10),
    (9, 2, 15),
    (10, 2, 7),
    (12, 2, 9),
    (15, 2, 5),
    (18, 2, 5),   
    (22, 2, 6),
    (23, 2, 15),
    (2, 3, 8),
    (3, 3, 5),
    (4, 3, 7),
    (6, 3, 5),
    (7, 3, 9),
    (10, 3, 5),
    (13, 3, 6),
    (16, 3, 10),
    (19, 3, 5),
    (21, 3, 6),   
    (6,4, 7),
    (8,4, 5),
    (10,4, 9),
    (12,4, 8),
    (14,4, 6),
    (16,4, 5),
    (18,4, 10),
    (20,4, 9),
    (22,4, 8),
    (24,4, 7)
    ;

INSERT INTO Borrower
    (Name, Address, Phone)
    VALUES
    ('Nancy Tebele', '104 Allen Avenue Allenhurst NJ 07755', '646-932-4456'),
    ('Susie Sherman', '3712  Cedar Allenhurst, NJ 11223', '732-457-2587'),
    ('Sandra Mishoon', '412  Sydney Avenue Allenhurst, NJ 11223', '646-533-3258'),
    ('Freida Jones', '3629 Webster Street Long Branch NJ 07740', '732-345-1299'),
    ('Johnny Franco', '2892 Lee Avenue  Long Branch NJ 07740', '732-996-2211'),
    ('James Hanan', '4775 Carolyns Circle  Long Branch NJ 07740', '516-932-2235'),
    ('Rebecca Verebay', '372  Avenue W  Long Branch NJ 07740', '347-854-5753'),
    ('Mary Sultan', '372 4456 Gore Street Houston, TX 77092', '832-718-0233'),
    ('Julia Terrago', '2102 Woodrow Way Houston, TX 77006', '936-393-2910'),
    ('Christy Cook', '943 Grey Fox Farm Road Houston, TX 77002', '832-567-8666'),
    ('Paul Favor', '2066 Lynn Ogden Lane Houston, TX 77009', '832-785-4538'),
    ('David Bergman', '269 Wines Lane Houston, TX 77099', '936-652-9654'),
    ('Bob Franklin', '2175 Kyle Street Central City, NE 69341', '308-436-5603'),
    ('Jake Jackson', '4453 Bungalow Road Central City, NE 69344', '308-447-3585'),
    ('Elinore Saklo', '1226 Commerce Boulevard Central City, NE 60493', '308-766-0456')
;

SELECT * FROM Borrower;

INSERT INTO Book_Loans
    (BookID, BranchID, CardNo, DateOut, DateDue) 
    VALUES 
    (2, 3, 1000, '2019-01-23',  '2019-01-28'),    
    (3, 3, 1000, '2019-01-23',  '2019-01-28'),
    (4, 3, 1000, '2019-01-23',  '2019-01-28'),
    (10, 3, 1000, '2019-01-23',  '2019-01-28'),
    (13, 3, 1000, '2019-03-11',  '2019-03-16'),
    (16, 3, 1000, '2019-03-11',  '2019-03-16'),
    (21, 3, 1002, '2019-04-23',  '2019-04-28'),
    (19, 3, 1002, '2019-05-13',  '2019-05-18'),
    (16, 3, 1002, '2019-05-13',  '2019-05-18'),
    (13, 3, 1002, '2019-05-13',  '2019-05-18'),
    (10, 3, 1002, '2019-05-13',  '2019-05-18'),
    (24, 4, 1005, '2019-12-12',  '2019-12-17'), 
    (22, 4, 1005, '2020-01-22',  '2020-01-27'),
    (20, 4, 1005, '2020-01-22',  '2020-01-27'),
    (10, 4, 1005, '2020-01-23',  '2020-01-28'),
    (12, 4, 1005, '2020-01-24',  '2020-01-29'),
    (14, 4, 1005, '2020-01-25',  '2020-01-30'),
    (6, 4, 1004, '2019-12-12',  '2019-12-17'),
    (8, 4, 1004, '2020-01-22',  '2020-01-27'),
    (10, 4, 1004, '2020-01-22',  '2020-01-27'),
    (12, 4, 1004, '2020-01-23',  '2020-01-28'),
    (14, 4, 1004, '2020-01-24',  '2020-01-29'), 
    (8, 4, 1003, '2019-12-12',  '2019-12-17'),
    (22, 4, 1003, '2020-01-22',  '2020-01-27'),
    (20, 4, 1006, '2020-01-22',  '2020-01-27'),
    (10, 4, 1006, '2020-01-23',  '2020-01-28'),
    (12, 4, 1006, '2020-01-24',  '2020-01-29'),
    (3, 1, 1009, '2019-12-12',  '2019-12-17'),
    (10, 1, 1009, '2020-01-22',  '2020-01-27'),
    (8, 1, 1009, '2020-01-22',  '2020-01-27'),
    (5, 1, 1009, '2020-01-23',  '2020-01-28'),
    (4, 1, 1009, '2020-01-24',  '2020-01-29'),
    (11, 1, 1009, '2020-01-25',  '2020-01-30'),
    (14, 1, 1011, '2020-01-23',  '2020-01-28'),
    (20, 1, 1011, '2020-01-24',  '2020-01-29'),
    (3, 1, 1007, '2020-01-22',  '2020-01-27'),
    (5, 1, 1007, '2020-01-23',  '2020-01-28'),
    (10, 1, 1007, '2020-01-24',  '2020-01-29'),
    (11, 1, 1007, '2020-01-25',  '2020-01-30'),
    (1, 2, 1014, '2019-12-12',  '2019-12-17'),
    (5, 2, 1014, '2019-12-12',  '2019-12-17'),
    (9, 2, 1014, '2019-12-12',  '2019-12-17'),
    (10, 2, 1012, '2020-01-22',  '2020-01-27'),
    (12, 2, 1012, '2020-01-23',  '2020-01-28'),
    (15, 2, 1012, '2020-01-24',  '2020-01-29'),
    (9, 2, 1013, '2019-12-15',  '2019-12-20'),
    (10, 2, 1013, '2020-01-22',  '2020-01-27'),
    (12, 2, 1013, '2020-01-22',  '2020-01-27'),
    (15, 2, 1013, '2020-01-23',  '2020-01-28'),
    (18, 2, 1013, '2020-01-24',  '2020-01-29')   
;








