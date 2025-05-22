-- Enable RLS for user table
ALTER TABLE "user" ENABLE ROW LEVEL SECURITY;
-- Create user policy
CREATE POLICY "Select own user data"
ON "user"
FOR SELECT
USING (id = auth.uid());
CREATE POLICY "Insert own user data"
ON "user"
FOR INSERT
WITH CHECK (id = auth.uid());
CREATE POLICY "Update own user data"
ON "user"
FOR UPDATE
USING (id = auth.uid());
