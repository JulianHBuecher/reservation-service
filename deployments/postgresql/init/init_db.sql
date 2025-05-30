-- Create the user
CREATE USER flyway WITH PASSWORD 'flyway';

-- Grant privileges on the database
GRANT CONNECT ON DATABASE reservations TO flyway;

-- Grant usage on public schema
GRANT ALL ON SCHEMA public TO flyway;

-- Grant read and write access on all tables
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO flyway;

-- Ensure future tables also have privileges
ALTER DEFAULT PRIVILEGES IN SCHEMA public
  GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO flyway;