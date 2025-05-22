-- Enable RLS for user table
ALTER TABLE "user" ENABLE ROW LEVEL SECURITY;
-- Create user policy
CREATE POLICY "Select own user data"
ON "user"
FOR SELECT
USING ( true );
CREATE POLICY "Insert own user data"
ON "user"
FOR INSERT
WITH CHECK (id = auth.uid());
CREATE POLICY "Update own user data"
ON "user"
FOR UPDATE
WITH CHECK (id = auth.uid());

-- Enable RLS for chat table
ALTER TABLE "chat" ENABLE ROW LEVEL SECURITY;
-- Create chat policy
CREATE POLICY "Select chat data"
ON "chat"
FOR SELECT
USING ( true );
CREATE POLICY "Insert own user data"
ON "chat"
FOR INSERT
WITH CHECK (user_id = auth.uid());

-- Enable RLS for payment
ALTER TABLE "payment" ENABLE ROW LEVEL SECURITY;
-- Create payment policy
CREATE POLICY "Select payment data"
ON "payment"
FOR SELECT
USING ( true );
CREATE POLICY "Insert own payment data"
ON "payment"
FOR INSERT
WITH CHECK (user_id = auth.uid());
CREATE POLICY "Update own payment data"
ON "payment"
FOR UPDATE
WITH CHECK (user_id = auth.uid());


-- Enable RLS for room table
ALTER TABLE "room" ENABLE ROW LEVEL SECURITY;
-- Create room policy
CREATE POLICY "Select room data"
ON "room"
FOR SELECT
USING ( true );
CREATE POLICY "Insert own room data"
ON "room"
FOR INSERT
WITH CHECK (user_id = auth.uid());
CREATE POLICY "Update data"
ON "room"
FOR UPDATE
WITH CHECK ( true );
CREATE POLICY "Delete own room data"
ON "room"
FOR DELETE
WITH CHECK (user_id = auth.uid());

-- Enable RLS for order table
ALTER TABLE "order" ENABLE ROW LEVEL SECURITY;
-- Create order policy
CREATE POLICY "Select order data"
ON "order"
FOR SELECT
USING ( true );
CREATE POLICY "Insert own order data"
ON "order"
FOR INSERT
WITH CHECK (user_id = auth.uid());


-- Enable RLS for menu_category table
ALTER TABLE "menu_category" ENABLE ROW LEVEL SECURITY;
-- Create menu_category policy
CREATE POLICY "Select menu_category data"
ON "menu_category"
FOR SELECT
USING ( true );


-- Enable RLS for menu table
ALTER TABLE "menu" ENABLE ROW LEVEL SECURITY;
-- Create menu policy
CREATE POLICY "Select menu data"
ON "menu"
FOR SELECT
USING ( true );


-- Enable RLS for image table
ALTER TABLE "image" ENABLE ROW LEVEL SECURITY;
-- Create image policy
CREATE POLICY "Select image data"
ON "image"
FOR SELECT
USING ( true );
CREATE POLICY "Insert own image data"
ON "image"
FOR INSERT
WITH CHECK ( true );

-- Enable RLS for store table
ALTER TABLE "store" ENABLE ROW LEVEL SECURITY;
-- Create store policy
CREATE POLICY "Select store data"
ON "store"
FOR SELECT
USING ( true );
