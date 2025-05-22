-- USER TABLE
ALTER TABLE "user" ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Select own user data" ON "user";
CREATE POLICY "Select own user data"
ON "user"
FOR SELECT
USING (true);

DROP POLICY IF EXISTS "Insert own user data" ON "user";
CREATE POLICY "Insert own user data"
ON "user"
FOR INSERT
WITH CHECK (id = auth.uid());

DROP POLICY IF EXISTS "Update own user data" ON "user";
CREATE POLICY "Update own user data"
ON "user"
FOR UPDATE
USING (id = auth.uid())
WITH CHECK (id = auth.uid());

-- CHAT TABLE
ALTER TABLE "chat" ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Select chat data" ON "chat";
CREATE POLICY "Select chat data"
ON "chat"
FOR SELECT
USING (true);

DROP POLICY IF EXISTS "Insert own user data" ON "chat";
CREATE POLICY "Insert own user data"
ON "chat"
FOR INSERT
WITH CHECK (user_id = auth.uid());

-- PAYMENT TABLE
ALTER TABLE "payment" ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Select payment data" ON "payment";
CREATE POLICY "Select payment data"
ON "payment"
FOR SELECT
USING (true);

DROP POLICY IF EXISTS "Insert own payment data" ON "payment";
CREATE POLICY "Insert own payment data"
ON "payment"
FOR INSERT
WITH CHECK (user_id = auth.uid());

DROP POLICY IF EXISTS "Update own payment data" ON "payment";
CREATE POLICY "Update own payment data"
ON "payment"
FOR UPDATE
USING (user_id = auth.uid())
WITH CHECK (user_id = auth.uid());

-- ROOM TABLE
ALTER TABLE "room" ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Select room data" ON "room";
CREATE POLICY "Select room d[<73;75;22M[<73;75;22Mata"
ON "room"
FOR SELECT
USING (true);

DROP POLICY IF EXISTS "Insert own room data" ON "room";
CREATE POLICY "Insert own room data"
ON "room"
FOR INSERT
WITH CHECK (leader_id = auth.uid());

DROP POLICY IF EXISTS "Delete own room data" ON "room";
CREATE POLICY "Delete own room data"
ON "room"
FOR DELETE
USING (leader_id = auth.uid());

-- ORDER TABLE
ALTER TABLE "order" ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Select order data" ON "order";
CREATE POLICY "Select order data"
ON "order"
FOR SELECT
USING (true);

DROP POLICY IF EXISTS "Insert own order data" ON "order";
CREATE POLICY "Insert own order data"
ON "order"
FOR INSERT
WITH CHECK (user_id = auth.uid());

-- MENU_CATEGORY TABLE
ALTER TABLE "menu_category" ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Select menu_category data" ON "menu_category";
CREATE POLICY "Select menu_category data"
ON "menu_category"
FOR SELECT
USING (true);

-- MENU TABLE
ALTER TABLE "menu" ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Select menu data" ON "menu";
CREATE POLICY "Select menu data"
ON "menu"
FOR SELECT
USING (true);

-- IMAGE TABLE
ALTER TABLE "image" ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Select image data" ON "image";
CREATE POLICY "Select image data"
ON "image"
FOR SELECT
USING (true);

DROP POLICY IF EXISTS "Insert own image data" ON "image";
CREATE POLICY "Insert own image data"
ON "image"
FOR INSERT
WITH CHECK (true);

-- STORE TABLE
ALTER TABLE "store" ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Select store data" ON "store";
CREATE POLICY "Select store data"
ON "store"
FOR SELECT
USING (true);

