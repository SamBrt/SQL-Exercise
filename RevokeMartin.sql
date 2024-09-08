-- Revoke Martin's update permission on the Books table
REVOKE UPDATE ON TABLE Books FROM martin;

-- Ensure Martin still has select (view) permission
GRANT SELECT ON TABLE Books TO martin;
