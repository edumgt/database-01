
CREATE TABLE Company
(
  company_id   VARCHAR(10) NOT NULL DEFAULT 1234567890 COMMENT '사업자번호_PK',
  company_name VARCHAR(50) NOT NULL DEFAULT '' COMMENT '회사명',
  PRIMARY KEY (company_id)
) COMMENT '회사정보';

CREATE TABLE Employee
(
  company_id VARCHAR(10) NOT NULL DEFAULT 1234567890 COMMENT '사업자번호_PK',
  emp_id     VARCHAR(7)  NOT NULL DEFAULT 2020001 COMMENT '직원번호',
  emp_name   VARCHAR(50) NOT NULL DEFAULT '' COMMENT '직원명',
  PRIMARY KEY (emp_id)
) COMMENT '직원정보';

CREATE TABLE student
(
  user_id   varchar(10) NOT NULL,
  name VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
) COMMENT 'student';

CREATE TABLE student_subject
(
  id     VARCHAR(10) NOT NULL DEFAULT rowId(),
  stu_id varchar(10) NOT NULL,
  sub_id VARCHAR(3)  NOT NULL,
  PRIMARY KEY (id)
) COMMENT '다대다의 수강신청';

CREATE TABLE subject
(
  id   VARCHAR(3)  NOT NULL,
  name VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
) COMMENT 'subject';

CREATE TABLE users
(
  user_id   VARCHAR(50)  NOT NULL COMMENT '회원아이디',
  user_name VARCHAR(200) NOT NULL COMMENT '회원이름',
  PRIMARY KEY (user_id)
) COMMENT '사용자';

ALTER TABLE Employee
  ADD CONSTRAINT FK_Company_TO_Employee
    FOREIGN KEY (company_id)
    REFERENCES Company (company_id);

ALTER TABLE student_subject
  ADD CONSTRAINT FK_student_TO_student_subject
    FOREIGN KEY (stu_id)
    REFERENCES student (id);

ALTER TABLE student_subject
  ADD CONSTRAINT FK_subject_TO_student_subject
    FOREIGN KEY (sub_id)
    REFERENCES subject (id);
