-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "category_df" (
    "category" varchar   NOT NULL,
    "category_id" varchar   NOT NULL,
    CONSTRAINT "pk_category_df" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategory_df" (
    "subcategory" varchar   NOT NULL,
    "subcategory_id" varchar   NOT NULL,
    CONSTRAINT "pk_subcategory_df" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "campaign_df" (
    "cf_id" integer   NOT NULL,
    "contact_id" integer   NOT NULL,
    "company_name" varchar   NOT NULL,
    "description" varchar   NOT NULL,
    "goal" integer   NOT NULL,
    "pledged" integer   NOT NULL,
    "outcome" varchar   NOT NULL,
    "backers_count" integer   NOT NULL,
    "country" varchar   NOT NULL,
    "currency" varchar   NOT NULL,
    "launched_date" varchar   NOT NULL,
    "end_date" varchar   NOT NULL,
    "category_id" varchar   NOT NULL,
    "subcategory_id" varchar   NOT NULL,
    CONSTRAINT "pk_campaign_df" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "contacts_df" (
    "contact_id" integer   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "email" varchar   NOT NULL,
    CONSTRAINT "pk_contacts_df" PRIMARY KEY (
        "contact_id"
     )
);

ALTER TABLE "category_df" ADD CONSTRAINT "fk_category_df_category_id" FOREIGN KEY("category_id")
REFERENCES "campaign_df" ("category_id");

ALTER TABLE "subcategory_df" ADD CONSTRAINT "fk_subcategory_df_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "campaign_df" ("subcategory_id");

ALTER TABLE "contacts_df" ADD CONSTRAINT "fk_contacts_df_contact_id" FOREIGN KEY("contact_id")
REFERENCES "campaign_df" ("contact_id");

