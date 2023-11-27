CREATE TABLE "customers" (
  "customer_id" SERIAL,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  "email" VARCHAR(100),
  "phone" VARCHAR(50),
  "address" VARCHAR(150),
  PRIMARY KEY ("customer_id")
);

CREATE TABLE "movie" (
  "movie_id" serial,
  "title" VARCHAR(100),
  "genre" VARCHAR(50),
  "release_date" VARCHAR(50),
  "film_length" VARCHAR(50),
  PRIMARY KEY ("movie_id")
);

CREATE TABLE "Ticket" (
  "ticket_id" SERIAL,
  "customer_id" INTEGER,
  "movie_id" INTEGER,
  "seat_number" VARCHAR(10),
  "ticket_price" VARCHAR(50),
  "purchase_date" VARCHAR(50),
  PRIMARY KEY ("ticket_id"),
  CONSTRAINT "FK_Ticket.customer_id"
    FOREIGN KEY ("customer_id")
      REFERENCES "customers"("customer_id"),
  CONSTRAINT "FK_Ticket.movie_id"
    FOREIGN KEY ("movie_id")
      REFERENCES "movie"("movie_id")
);

CREATE TABLE "Concessions" (
  "concession_id" SERIAL,
  "customer_id" integer,
  "item_name" VARCHAR(100),
  "item_price" VARCHAR(50),
  PRIMARY KEY ("concession_id"),
  CONSTRAINT "FK_Concessions.customer_id"
    FOREIGN KEY ("customer_id")
      REFERENCES "customers"("customer_id")
);

