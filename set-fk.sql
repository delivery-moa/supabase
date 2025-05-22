ALTER TABLE
    "payment" ADD PRIMARY KEY("id");
ALTER TABLE
    "order" ADD CONSTRAINT "order_user_id_foreign" FOREIGN KEY("user_id") REFERENCES "user"("id");
ALTER TABLE
    "chat" ADD CONSTRAINT "chat_room_id_foreign" FOREIGN KEY("room_id") REFERENCES "room"("id");
ALTER TABLE
    "room" ADD CONSTRAINT "room_leader_id_foreign" FOREIGN KEY("leader_id") REFERENCES "user"("id");
ALTER TABLE
    "menu" ADD CONSTRAINT "menu_img_id_foreign" FOREIGN KEY("img_id") REFERENCES "image"("id");
ALTER TABLE
    "payment" ADD CONSTRAINT "payment_user_id_foreign" FOREIGN KEY("user_id") REFERENCES "user"("id");
ALTER TABLE
    "room" ADD CONSTRAINT "room_store_id_foreign" FOREIGN KEY("store_id") REFERENCES "store"("id");
ALTER TABLE
    "order" ADD CONSTRAINT "order_store_id_foreign" FOREIGN KEY("store_id") REFERENCES "store"("id");
ALTER TABLE
    "qna" ADD CONSTRAINT "qna_user_id_foreign" FOREIGN KEY("user_id") REFERENCES "user"("id");
ALTER TABLE
    "order" ADD CONSTRAINT "order_room_id_foreign" FOREIGN KEY("room_id") REFERENCES "room"("id");
ALTER TABLE
    "payment" ADD CONSTRAINT "payment_order_id_foreign" FOREIGN KEY("order_id") REFERENCES "order"("order_id");
ALTER TABLE
    "store" ADD CONSTRAINT "store_category_id_foreign" FOREIGN KEY("category_id") REFERENCES "menu_category"("id");
ALTER TABLE
    "menu" ADD CONSTRAINT "menu_store_id_foreign" FOREIGN KEY("store_id") REFERENCES "store"("id");
ALTER TABLE "user"
ADD CONSTRAINT user_id_fkey
FOREIGN KEY (id) REFERENCES auth.users(id) ON DELETE CASCADE;
