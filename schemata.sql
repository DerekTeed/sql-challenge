--Drop table "salaries" cascade;
--Drop table "titles" cascade;
--Drop table "employees" cascade ; 
--Drop table "dept_emp" cascade;
--Drop table "departments" cascade;
--Drop table "dept_manager" cascade;
--drop table employees;

CREATE TABLE "salaries" (
    "emp_no" int NOT NULL,
    "salary" money   NOT NULL,
    PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "titles" (
    "title_id" varchar(5)   NOT NULL,
    "title" varchar(30)   NOT NULL,
    PRIMARY KEY (
        "title_id"
     )
);

CREATE TABLE "employees" (
    "emp_no" int   NOT NULL,
    "emp_title_id" varchar(5) NOT NULL,
    "birth_date" varchar(15)   NOT NULL,
    "first_name" varchar(20)   NOT NULL,
    "last_name" varchar(20)   NOT NULL,
    "sex" char(1)   NOT NULL,
    "hire_date" varchar(15)   NOT NULL,
    PRIMARY KEY (
        "emp_no"
     )
);

-- Table documentation comment 1 (try the PDF/RTF export)
CREATE TABLE "dept_emp" (
    "emp_no" int   NOT NULL,
    "dept_no" varchar(4)   NOT NULL
   -- Foreign KEY (
   --     "emp_no"
   --  )
);

CREATE TABLE "departments" (
    "dept_no" varchar(4)   NOT NULL,
    "dept_name" varchar(50)   NOT NULL,
    PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "dept_manager" (
    "dept_no" varchar(4)  NOT NULL,
    "emp_no" INT  NOT NULL,
    PRIMARY KEY (
        "emp_no"
     )
);

--Not sure how to proceed with FK with emp_no having duplicates in dept_unit???

--ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
--REFERENCES "dept_manager" ("emp_no");

--ALTER TABLE "titles" ADD CONSTRAINT "fk_titles_title_id" FOREIGN KEY("title_id")
--REFERENCES "employees" ("emp_title_id");

--ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_no" FOREIGN KEY("emp_no")
--REFERENCES "salaries" ("emp_no");

--ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
--REFERENCES "employees" ("emp_no");

--ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
--REFERENCES "dept_manager" ("dept_no");

--ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
--REFERENCES "departments" ("dept_no");

--ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
--REFERENCES "dept_emp" ("emp_no");

--select * from salaries;
--select * from dept_emp;
--select * from departments;
--select * from dept_manager;
--select distinct emp_no from employees;
--select * from titles;