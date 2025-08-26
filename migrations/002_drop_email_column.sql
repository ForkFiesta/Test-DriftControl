-- Migration: Drop email column from users table
-- Created: 2025-08-26
-- WARNING: This is a destructive change that will permanently delete data

-- Drop the index first
DROP INDEX IF EXISTS idx_users_email;

-- Drop the email column
ALTER TABLE users DROP COLUMN email;

-- Note: This change is irreversible and will cause data loss
-- Any applications relying on the email field will break