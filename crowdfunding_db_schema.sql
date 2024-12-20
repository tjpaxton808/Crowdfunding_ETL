DROP TABLE "Campaign"
DROP TABLE "SubCategory"
DROP TABLE "Category"
DROP TABLE "Contact"

CREATE TABLE "Contact" (
    "ContactID" INT   NOT NULL,
    "FirstName" VARCHAR(255)   NOT NULL,
    "LastName" VARCHAR(255)   NOT NULL,
    "Email" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_Contact" PRIMARY KEY (
        "ContactID"
     )
);

CREATE TABLE "Category" (
    "CategoryID" INT   NOT NULL,
    "Category" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "CategoryID"
     )
);

CREATE TABLE "SubCategory" (
    "SubCategoryID" INT   NOT NULL,
    "SubCategory" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_SubCategory" PRIMARY KEY (
        "SubCategoryID"
     )
);

CREATE TABLE "Campaign" (
    "CFID" INT   NOT NULL,
    "ContactID" INT   NOT NULL,
    "CategoryID" INT   NOT NULL,
    "SubCategoryID" INT   NOT NULL,
    "CompanyName" VARCHAR(255)   NOT NULL,
    "Description" VARCHAR(255)   NOT NULL,
    "Goal" FLOAT   NOT NULL,
    "Pledged" FLOAT   NOT NULL,
    "Outcome" VARCHAR(255)   NOT NULL,
    "BackersCount" INT   NOT NULL,
    "Country" VARCHAR(255)   NOT NULL,
    "Currency" VARCHAR(255)   NOT NULL,
    "LaunchDate" DATE   NOT NULL,
    "EndDate" DATE   NOT NULL,
    "StaffPick" BOOLEAN   NOT NULL,
    "Spotlight" BOOLEAN   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "CFID"
     )
);

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_ContactID" FOREIGN KEY("ContactID")
REFERENCES "Contact" ("ContactID");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_CategoryID" FOREIGN KEY("CategoryID")
REFERENCES "Category" ("CategoryID");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_SubCategoryID" FOREIGN KEY("SubCategoryID")
REFERENCES "SubCategory" ("SubCategoryID");

