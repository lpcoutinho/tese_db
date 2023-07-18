CREATE TABLE "country" (
  "country_id" SERIAL PRIMARY KEY,
  "name" varchar(100) NOT NULL
);

CREATE TABLE "state" (
  "state_id" SERIAL PRIMARY KEY,
  "country_id" int NOT NULL,
  "name" varchar(100) NOT NULL
);

CREATE TABLE "city" (
  "city_id" SERIAL PRIMARY KEY,
  "state_id" int NOT NULL,
  "name" varchar(100) NOT NULL
);

CREATE TABLE "user_register" (
  "user_id" SERIAL PRIMARY KEY,
  "name" varchar(100) NOT NULL,
  "last_name" varchar(100) NOT NULL,
  "email" varchar(150) UNIQUE NOT NULL,
  "cpf" varchar(20) UNIQUE NOT NULL,
  "rg" varchar(20) UNIQUE NOT NULL,
  "password" varchar(100) NOT NULL,
  "birth_date" date,
  "city_id" int,
  "address" varchar(200) NOT NULL,
  "number" varchar(20) NOT NULL,
  "address_complement" varchar(50) NOT NULL,
  "postal_code" varchar(20) NOT NULL,
  "phone" varchar(20),
  "mobile_phone" varchar(20),
  "created_at" timestamp DEFAULT (now() at time zone 'utc'),
  "updated_at" timestamp DEFAULT (now() at time zone 'utc')
);

CREATE TABLE "familiar" (
  "familiar_id" SERIAL PRIMARY KEY,
  "user_id" int NOT NULL,
  "name" varchar(100) NOT NULL,
  "kinship" varchar(100) NOT NULL,
  "email" varchar(150) NOT NULL,
  "phone" varchar(20),
  "mobile_phone" varchar(20) NOT NULL,
  "created_at" timestamp DEFAULT (now() at time zone 'utc'),
  "updated_at" timestamp DEFAULT (now() at time zone 'utc')
);

CREATE TABLE "social" (
  "social_id" SERIAL PRIMARY KEY,
  "user_id" int NOT NULL,
  "type_music" varchar(100),
  "favorite_sport" varchar(100),
  "favorite_team" varchar(100),
  "favorite_card_game" varchar(100),
  "favorite_board_game" varchar(100),
  "favorite_news" varchar(100),
  "favorite_animal_species" varchar(100),
  "favorite_animal_breed" varchar(100),
  "facebook_link" varchar(100),
  "instagram_link" varchar(100),
  "created_at" timestamp DEFAULT (now() at time zone 'utc'),
  "updated_at" timestamp DEFAULT (now() at time zone 'utc')
);

CREATE TABLE "health" (
  "health_id" SERIAL PRIMARY KEY,
  "user_id" int NOT NULL,
  "height" decimal,
  "weigth" decimal,
  "allergies" varchar(100),
  "medical_insurance" varchar(100),
  "medical_insurance_register" varchar(100),
  "hospital_for_removal" varchar(100),
  "private_physician_name" varchar(100),
  "private_physician_phone" varchar(50),
  "private_physician_email" varchar(50),
  "created_at" timestamp DEFAULT (now() at time zone 'utc'),
  "updated_at" timestamp DEFAULT (now() at time zone 'utc')
);

CREATE TABLE "medicine" (
  "medicine_id" SERIAL PRIMARY KEY,
  "user_id" int NOT NULL,
  "medicine_name" varchar(50),
  "medicine_dosage" varchar(50),
  "created_at" timestamp DEFAULT (now() at time zone 'utc'),
  "updated_at" timestamp DEFAULT (now() at time zone 'utc')
);

CREATE TABLE "diet" (
  "diet_id" SERIAL PRIMARY KEY,
  "user_id" int NOT NULL,
  "favorite_food" varchar(50),
  "created_at" timestamp DEFAULT (now() at time zone 'utc'),
  "updated_at" timestamp DEFAULT (now() at time zone 'utc')
);

CREATE TABLE "medical_history" (
  "medical_history_id" SERIAL PRIMARY KEY,
  "user_id" int NOT NULL,
  "medical_history_resume" varchar(500),
  "created_at" timestamp DEFAULT (now() at time zone 'utc'),
  "updated_at" timestamp DEFAULT (now() at time zone 'utc')
);

CREATE TABLE "medical_exams" (
  "medical_exams_id" SERIAL PRIMARY KEY,
  "user_id" int NOT NULL,
  "ecg" varchar(200),
  "pa" varchar(200),
  "sat_o2" varchar(200),
  "glycemia" varchar(200),
  "other_exams" varchar(200),
  "created_at" timestamp DEFAULT (now() at time zone 'utc')
);

CREATE TABLE "plan_type" (
  "plan_type_id" SERIAL PRIMARY KEY,
  "plan_type" varchar(200),
  "plan_price" int,
  "plan_resume" varchar(500),
  "created_at" timestamp DEFAULT (now() at time zone 'utc'),
  "updated_at" timestamp DEFAULT (now() at time zone 'utc')
);

CREATE TABLE "company" (
  "company_id" SERIAL PRIMARY KEY,
  "name" varchar(100) NOT NULL,
  "cnpj" varchar(20) UNIQUE NOT NULL,
  "address" varchar(200),
  "number" varchar(20),
  "city_id" int,
  "address_complement" varchar(100),
  "phone" varchar(20),
  "email" varchar(150),
  "website" varchar(200),
  "company_resume" varchar(500),
  "created_at" timestamp DEFAULT (now() at time zone 'utc'),
  "updated_at" timestamp DEFAULT (now() at time zone 'utc')
);

CREATE TABLE "condominium_type" (
  "condominium_type_id" SERIAL PRIMARY KEY,
  "condominium_type" varchar(100) NOT NULL
);

CREATE TABLE "condominium" (
  "condominium_id" SERIAL PRIMARY KEY,
  "condominium_type" int NOT NULL,
  "name" varchar(100) NOT NULL,
  "cnpj" varchar(20) UNIQUE NOT NULL,
  "address" varchar(200) NOT NULL,
  "number" varchar(20) NOT NULL,
  "city_id" int NOT NULL,
  "address_complement" varchar(100),
  "phone" varchar(20),
  "email" varchar(150),
  "website" varchar(200),
  "created_at" timestamp DEFAULT (now() at time zone 'utc'),
  "updated_at" timestamp DEFAULT (now() at time zone 'utc')
);

CREATE TABLE "property_type" (
  "property_type_id" SERIAL PRIMARY KEY,
  "property_type" varchar(100) NOT NULL
);

CREATE TABLE "property" (
  "property_id" SERIAL PRIMARY KEY,
  "property_type" int NOT NULL,
  "condominium_id" int,
  "address" varchar(200) NOT NULL,
  "number" varchar(20) NOT NULL,
  "city_id" int NOT NULL,
  "address_complement" varchar(100),
  "area" decimal,
  "rooms" int,
  "bathrooms" int,
  "parking_spaces" int,
  "floor" int,
  "created_at" timestamp DEFAULT (now()),
  "updated_at" timestamp DEFAULT (now())
);

CREATE TABLE "smart_city" (
  "smart_city_id" SERIAL PRIMARY KEY,
  "plan_type_id" int,
  "created_at" timestamp DEFAULT (now() at time zone 'utc'),
  "updated_at" timestamp DEFAULT (now() at time zone 'utc')
);

CREATE TABLE "affiliation" (
  "affiliation_id" SERIAL PRIMARY KEY,
  "user_id" int NOT NULL,
  "company_id" int,
  "condominium_id" int,
  "created_at" timestamp DEFAULT (now() at time zone 'utc'),
  "updated_at" timestamp DEFAULT (now() at time zone 'utc')
);

CREATE TABLE "available_routes" (
  "available_routes_id" SERIAL PRIMARY KEY,
  "name" varchar(100) NOT NULL,
  "address" varchar(200) NOT NULL,
  "number" varchar(20) NOT NULL,
  "city_id" int NOT NULL,
  "address_complement" varchar(100),
  "latitude" decimal(9,6),
  "longitude" decimal(9,6),
  "phone" varchar(20),
  "email" varchar(150),
  "created_at" timestamp DEFAULT (now() at time zone 'utc'),
  "updated_at" timestamp DEFAULT (now() at time zone 'utc')
);

CREATE TABLE "usage_logs" (
  "usage_logs_id" SERIAL PRIMARY KEY,
  "user_id" int NOT NULL,
  "available_routes_id" int NOT NULL,
  "notes" varchar(500),
  "created_at" timestamp DEFAULT (now() at time zone 'utc')
);

ALTER TABLE "state" ADD FOREIGN KEY ("country_id") REFERENCES "country" ("country_id");

ALTER TABLE "city" ADD FOREIGN KEY ("state_id") REFERENCES "state" ("state_id");

ALTER TABLE "user_register" ADD FOREIGN KEY ("city_id") REFERENCES "city" ("city_id");

ALTER TABLE "familiar" ADD FOREIGN KEY ("user_id") REFERENCES "user_register" ("user_id");

ALTER TABLE "social" ADD FOREIGN KEY ("user_id") REFERENCES "user_register" ("user_id");

ALTER TABLE "health" ADD FOREIGN KEY ("user_id") REFERENCES "user_register" ("user_id");

ALTER TABLE "medicine" ADD FOREIGN KEY ("user_id") REFERENCES "user_register" ("user_id");

ALTER TABLE "diet" ADD FOREIGN KEY ("user_id") REFERENCES "user_register" ("user_id");

ALTER TABLE "medical_history" ADD FOREIGN KEY ("user_id") REFERENCES "user_register" ("user_id");

ALTER TABLE "medical_exams" ADD FOREIGN KEY ("user_id") REFERENCES "user_register" ("user_id");

ALTER TABLE "usage_logs" ADD FOREIGN KEY ("user_id") REFERENCES "user_register" ("user_id");

ALTER TABLE "affiliation" ADD FOREIGN KEY ("user_id") REFERENCES "user_register" ("user_id");

ALTER TABLE "company" ADD FOREIGN KEY ("city_id") REFERENCES "city" ("city_id");

ALTER TABLE "smart_city" ADD FOREIGN KEY ("plan_type_id") REFERENCES "plan_type" ("plan_type_id");

ALTER TABLE "property" ADD FOREIGN KEY ("property_type") REFERENCES "property_type" ("property_type_id");

ALTER TABLE "property" ADD FOREIGN KEY ("condominium_id") REFERENCES "condominium" ("condominium_id");

ALTER TABLE "condominium" ADD FOREIGN KEY ("condominium_type") REFERENCES "condominium_type" ("condominium_type_id");

ALTER TABLE "affiliation" ADD FOREIGN KEY ("condominium_id") REFERENCES "condominium" ("condominium_id");

ALTER TABLE "affiliation" ADD FOREIGN KEY ("company_id") REFERENCES "company" ("company_id");
