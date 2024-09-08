-- First, create a role for Martin if it doesn't already exist
CREATE ROLE martin WITH LOGIN PASSWORD 'your_password_here';

-- Grant Martin the necessary permissions
GRANT SELECT, INSERT, UPDATE ON TABLE Books TO martin;

-- Ensure Martin cannot delete any records
REVOKE DELETE ON TABLE Books FROM martin;

-- Optionally, assign Martin to a specific IP address restriction if your database supports this feature
ALTER ROLE martin SET connection_limit = 1;


--altrimenti dato che alcuni comandi non sono supportati su SQLite,
--potremmo semplicemente creare un trigger per prevenire l'eliminazione degli elementi

 CREATE TRIGGER prevent_delete_books
BEFORE DELETE ON Books
BEGIN
    SELECT RAISE(FAIL, 'DELETE operation is not allowed.');
END;