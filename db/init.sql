-- Hosting panel users table
CREATE TABLE IF NOT EXISTS users (
    id            SERIAL PRIMARY KEY,
    username      VARCHAR(50)  UNIQUE NOT NULL,
    email         VARCHAR(100) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    created_at    TIMESTAMP DEFAULT NOW()
);

-- Optional: seed a test user (password: "testpass" — hash this properly in production)
-- INSERT INTO users (username, email, password_hash) VALUES
--     ('testuser', 'test@example.com', 'hashed_password_here');
