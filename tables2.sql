
CREATE Table "departments" (
	"dept_no" VARCHAR NOT NULL,
	"dept_name" VARCHAR NOT NULL,
	PRIMARY KEY (dept_no)
	
);

CREATE Table "dept_emp" (
	"emp_no" INT NOT NULL,
	"dept_no" VARCHAR NOT NULL,
	"from_date" DATE NOT NULL,
	"to_date" DATE NOT NULL,
	
	PRIMARY KEY (emp_no, dept_no)
	
);

CREATE Table "employees" (
	"emp_no" INT NOT NULL,
	"birth_date" DATE NOT NULL,
	"first_name" VARCHAR NOT NULL,
	"last_name" VARCHAR NOT NULL,
	"gender" VARCHAR NOT NULL,
	"hire_date" DATE  NOT NULL,
	PRIMARY KEY (emp_no)
);

CREATE Table "dept_manager" (
	"dept_no" VARCHAR NOT NULL,
	"emp_no" INT NOT NULL,
	"from_date" DATE NOT NULL,
	"to_date" DATE NOT NULL,
	PRIMARY KEY (emp_no)
	
);



CREATE Table "salaries" (
	"emp_no" INT NOT NULL,
	"salary" INT NOT NULL,
	"from_date" DATE NOT NULL,
	"to_date" DATE NOT NULL,
	PRIMARY KEY (emp_no)
	
);


CREATE Table "titles" (
	"emp_no" INT NOT NULL,
	"title" VARCHAR NOT NULL,
	"from_date" DATE NOT NULL,
	"to_date" DATE NOT NULL,
	PRIMARY KEY (emp_no, title, from_date)
	
);