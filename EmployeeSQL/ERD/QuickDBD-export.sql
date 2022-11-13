-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE "Department" (
    "Department_id" INTEGER   NOT NULL,
    "Department_name" VARCHAR(30)   NOT NULL
);

CREATE TABLE "Department_Empolyee" (
    "Department_id" INTEGER   NOT NULL,
    "Employee_id" VARCHAR(30)   NOT NULL,
    "First_name" VARCHAR(30)   NOT NULL,
    "Last_name" VARCHAR(30)   NOT NULL,
    "From_date" DATE   NOT NULL,
    "To_date" DATE   NOT NULL
);

CREATE TABLE "Department_Managers" (
    "Department_id" INTEEGER   NOT NULL,
    "Employee_id" VINTEGER   NOT NULL,
    "First_name" VARCHAR(30)   NOT NULL,
    "Last_name" VARCHAR(30)   NOT NULL,
    "From_date" DATE   NOT NULL,
    "To_date" DATE   NOT NULL
);

CREATE TABLE "Employees" (
    "Employee_id" INTEGER   NOT NULL,
    "Birtday_date" DATE   NOT NULL,
    "First_name" VARCHAR(30)   NOT NULL,
    "Last_name" VARCHAR(30)   NOT NULL,
    "Gender" VARCHAR(30)   NOT NULL,
    "Hire_date" DATE   NOT NULL
);

CREATE TABLE "Titles" (
    "Employee_id" INTEGER   NOT NULL,
    "Title_id" INTEGER   NOT NULL,
    "Department_id" INTEGER   NOT NULL,
    "First_name" VARCHAR(3)   NOT NULL,
    "Last_name" VARCHAR(30)   NOT NULL
);

CREATE TABLE "Salaries" (
    "Employee_id" INTEGER   NOT NULL,
    "Salary_id" INTEGER   NOT NULL,
    "First_name" VARCHAR(30)   NOT NULL,
    "Last_name" VARCHAR(30)   NOT NULL,
    "From_date" DATE   NOT NULL,
    "Last_date" DATE   NOT NULL
);

ALTER TABLE "Department" ADD CONSTRAINT "fk_Department_Department_id" FOREIGN KEY("Department_id")
REFERENCES "Department_Managers" ("Department_id");

ALTER TABLE "Department_Empolyee" ADD CONSTRAINT "fk_Department_Empolyee_Department_id" FOREIGN KEY("Department_id")
REFERENCES "Department" ("Department_id");

ALTER TABLE "Department_Empolyee" ADD CONSTRAINT "fk_Department_Empolyee_Employee_id" FOREIGN KEY("Employee_id")
REFERENCES "Employees" ("Employee_id");

ALTER TABLE "Department_Managers" ADD CONSTRAINT "fk_Department_Managers_Department_id" FOREIGN KEY("Department_id")
REFERENCES "Department_Empolyee" ("Department_id");

ALTER TABLE "Department_Managers" ADD CONSTRAINT "fk_Department_Managers_Employee_id" FOREIGN KEY("Employee_id")
REFERENCES "Employees" ("Employee_id");

ALTER TABLE "Titles" ADD CONSTRAINT "fk_Titles_Employee_id" FOREIGN KEY("Employee_id")
REFERENCES "Department" ("Department_id");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_Employee_id" FOREIGN KEY("Employee_id")
REFERENCES "Employees" ("Employee_id");

