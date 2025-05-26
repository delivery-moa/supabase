-- order.user_id
DO $$
BEGIN
    IF EXISTS (
        SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'order_user_id_foreign'
    ) THEN
        ALTER TABLE "order" DROP CONSTRAINT "order_user_id_foreign";
    END IF;
END$$;
ALTER TABLE "order"
    ADD CONSTRAINT "order_user_id_foreign"
    FOREIGN KEY ("user_id") REFERENCES auth.users(id);

-- chat.room_id
DO $$
BEGIN
    IF EXISTS (
        SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'chat_room_id_foreign'
    ) THEN
        ALTER TABLE "chat" DROP CONSTRAINT "chat_room_id_foreign";
    END IF;
END$$;
ALTER TABLE "chat"
    ADD CONSTRAINT "chat_room_id_foreign"
    FOREIGN KEY ("room_id") REFERENCES "room" ("id");

-- chat.user_id
DO $$
BEGIN
    IF EXISTS (
        SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'chat_user_id_foreign'
    ) THEN
				    ALTER TABLE "chat" DROP CONSTRAINT "chat_user_id_foreign";
				END IF;
END$$;
ALTER TABLE "chat"
    ADD CONSTRAINT "chat_user_id_foreign"
    FOREIGN KEY ("user_id") REFERENCES auth.users(id);

-- room.leader_id
DO $$
BEGIN
    IF EXISTS (
        SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'room_leader_id_foreign'
    ) THEN
        ALTER TABLE "room" DROP CONSTRAINT "room_leader_id_foreign";
    END IF;
END$$;
ALTER TABLE "room"
    ADD CONSTRAINT "room_leader_id_foreign"
    FOREIGN KEY ("leader_id") REFERENCES auth.users(id);

-- menu.img_id
DO $$
BEGIN
    IF EXISTS (
        SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'menu_img_id_foreign'
    ) THEN
        ALTER TABLE "menu" DROP CONSTRAINT "menu_img_id_foreign";
    END IF;
END$$;
ALTER TABLE "menu"
    ADD CONSTRAINT "menu_img_id_foreign"
    FOREIGN KEY ("img_id") REFERENCES "image" ("id");

-- payment.user_id
DO $$
BEGIN
    IF EXISTS (
        SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'payment_user_id_foreign'
    ) THEN
        ALTER TABLE "payment" DROP CONSTRAINT "payment_user_id_foreign";
    END IF;
END$$;
ALTER TABLE "payment"
    ADD CONSTRAINT "payment_user_id_foreign"
    FOREIGN KEY ("user_id") REFERENCES auth.users(id);

-- room.store_id
DO $$
BEGIN
    IF EXISTS (
        SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'room_store_id_foreign'
    ) THEN
        ALTER TABLE "room" DROP CONSTRAINT "room_store_id_foreign";
    END IF;
END$$;
ALTER TABLE "room"
    ADD CONSTRAINT "room_store_id_foreign"
    FOREIGN KEY ("store_id") REFERENCES "store" ("id");

-- order.store_id
DO $$
BEGIN
    IF EXISTS (
        SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'order_store_id_foreign'
    ) THEN
        ALTER TABLE "order" DROP CONSTRAINT "order_store_id_foreign";
    END IF;
END$$;
ALTER TABLE "order"
    ADD CONSTRAINT "order_store_id_foreign"
    FOREIGN KEY ("store_id") REFERENCES "store" ("id");

-- qna.user_id
DO $$
BEGIN
    IF EXISTS (
        SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'qna_user_id_foreign'
    ) THEN
        ALTER TABLE "qna" DROP CONSTRAINT "qna_user_id_foreign";
    END IF;
END$$;
ALTER TABLE "qna"
    ADD CONSTRAINT "qna_user_id_foreign"
    FOREIGN KEY ("user_id") REFERENCES auth.users(id);

-- order.room_id
DO $$
BEGIN
    IF EXISTS (
        SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'order_room_id_foreign'
    ) THEN
        ALTER TABLE "order" DROP CONSTRAINT "order_room_id_foreign";
    END IF;
END$$;
ALTER TABLE "order"
    ADD CONSTRAINT "order_room_id_foreign"
    FOREIGN KEY ("room_id") REFERENCES "room" ("id");

-- payment.order_id
DO $$
BEGIN
    IF EXISTS (
        SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'payment_order_id_foreign'
    ) THEN
        ALTER TABLE "payment" DROP CONSTRAINT "payment_order_id_foreign";
    END IF;
END$$;
ALTER TABLE "payment"
    ADD CONSTRAINT "payment_order_id_foreign"
    FOREIGN KEY ("order_id") REFERENCES "order" ("order_id");

-- store.category_id
DO $$
BEGIN
    IF EXISTS (
        SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'store_category_id_foreign'
    ) THEN
        ALTER TABLE "store" DROP CONSTRAINT "store_category_id_foreign";
    END IF;
END$$;
ALTER TABLE "store"
    ADD CONSTRAINT "store_category_id_foreign"
    FOREIGN KEY ("category_id") REFERENCES "menu_category" ("id");

-- menu.store_id
DO $$
BEGIN
    IF EXISTS (
        SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'menu_store_id_foreign'
    ) THEN
        ALTER TABLE "menu" DROP CONSTRAINT "menu_store_id_foreign";
    END IF;
END$$;
ALTER TABLE "menu"
    ADD CONSTRAINT "menu_store_id_foreign"
    FOREIGN KEY ("store_id") REFERENCES "store" ("id");

-- user.id -> auth.users.id (ON DELETE CASCADE)
DO $$
BEGIN
    IF EXISTS (
        SELECT 1 FROM information_schema.table_constraints
        WHERE constraint_name = 'user_id_fkey'
    ) THEN
        ALTER TABLE "user" DROP CONSTRAINT "user_id_fkey";
    END IF;
END$$;
ALTER TABLE "user"
    ADD CONSTRAINT "user_id_fkey"
    FOREIGN KEY ("id") REFERENCES auth.users ("id") ON DELETE CASCADE;

