create table emp_table (
  emp_id int PRIMARY KEY,
  name varchar(255),
  immediate_head_id int,
  dept_id int, 
  insur_id int,
  emp_info int,
--   insurance_id int FOREIGN KEY REFERENCES insur_table(insur_id),
--   employee_info int FOREIGN KEY REFERENCES emp_info_table(id)
  FOREIGN KEY (dept_id) REFERENCES dept_table(dept_id),
  FOREIGN KEY (insur_id) REFERENCES insur_table(insur_id),
  FOREIGN KEY (emp_info) REFERENCES emp_info_table(id)
 
);

INSERT INTO emp_table VALUES (1, 'sairam', 7, 1, 1, 1);
INSERT INTO emp_table VALUES (2, 'nikas', 7, 1, 2, 2);
INSERT INTO emp_table VALUES (3, 'shashi', 8, 2, 1, 3);
INSERT INTO emp_table VALUES (4, 'arun', 9, 3, 2, 4);
INSERT INTO emp_table VALUES (5, 'venkatsesh', 9, 3, 2, 5);
INSERT INTO emp_table VALUES (6, 'yakshith', 8, 2, 2, 6);
INSERT INTO emp_table VALUES (7, 'vaibhav sir', null, 1, 2, 7);
INSERT INTO emp_table VALUES (8, 'hari sir', null, 2, 1, 8);
INSERT INTO emp_table VALUES (9, 'dheeraj sir', null, 3, 1, 9);

create Table dept_table (
  dept_id int PRIMARY KEY,
  dept_name varchar
);

create Table insur_table (
  insur_id int PRIMARY KEY,
  insur_name varchar
);

create Table office_table (
  off_id int PRIMARY KEY,
  off_name varchar,
  place varchar
);

CREATE Table emp_off_table (
  id int PRIMARY KEY,
  emp_id int,
  off_id int,
--   emp_id int FOREIGN KEY REFERENCES emp_table(emp_id),
--   off_id int FOREIGN KEY REFERENCES office_table(off_id),
  FOREIGN KEY (emp_id) REFERENCES emp_table(emp_id),
  FOREIGN KEY (off_id) REFERENCES office_table(off_id)
);

create Table emp_info_table (
  id int PRIMARY KEY,
  doj date,
  salary int
);

INSERT INTO dept_table VALUES (1, 'python1');
INSERT INTO dept_table VALUES (2, 'python2');
INSERT INTO dept_table VALUES (3, 'python3');

INSERT INTO insur_table VALUES (1, 'LIC');
INSERT INTO insur_table VALUES (2, 'ICICI');

select emp.name, dep.dept_name, ins.insur_name from emp_table emp
inner join dept_table dep on emp.dept_id = dep.dept_id
inner join insur_table ins on emp.insur_id = ins.insur_id;
