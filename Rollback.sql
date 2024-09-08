-- Start the transaction manually
BEGIN;

-- Delete the book with BookID = 103
DELETE FROM Books
WHERE BookID = 103;

-- Roll back to undo the deletion
ROLLBACK;
