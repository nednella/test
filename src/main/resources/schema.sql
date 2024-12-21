CREATE TABLE
    IF NOT EXISTS "user" (
        id         UUID DEFAULT gen_random_uuid() PRIMARY KEY,
        email      VARCHAR(255) UNIQUE NOT NULL CHECK (email = LOWER(email)),
        username   VARCHAR(15) UNIQUE NOT NULL CHECK (username ~ '^([a-zA-Z0-9._-]){3,15}$'),
        password   VARCHAR(255) NOT NULL,
        created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
        deleted_at TIMESTAMPTZ DEFAULT NULL
    );

CREATE UNIQUE INDEX 
    IF NOT EXISTS idx_user_email
        ON "user"(email);

CREATE UNIQUE INDEX 
    IF NOT EXISTS idx_user_username
        ON "user"(Lower(username)); 