BEGIN; -- Start the transaction

DELETE FROM Books
WHERE BookID = 101;

COMMIT; -- Save the changes permanently
