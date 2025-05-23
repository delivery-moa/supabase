-- User Table Default Values
ALTER TABLE "user"
ALTER COLUMN user_rating SET DEFAULT 50;
ALTER TABLE "user"
ALTER COLUMN cash SET DEFAULT 0;
ALTER TABLE "user"
ALTER COLUMN created_at SET DEFAULT now();
