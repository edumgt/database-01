
CREATE TABLE Company
(
  company_id   VARCHAR(10) NOT NULL DEFAULT 1234567890 COMMENT '사업자번호_PK',
  company_name VARCHAR(50) NOT NULL DEFAULT '' COMMENT '회사명',
  PRIMARY KEY (company_id)
) COMMENT '회사정보';

CREATE TABLE customers
(
  user_id   VARCHAR(50)          NOT NULL COMMENT '구매자아이디',
  user_name VARCHAR(50)          NOT NULL COMMENT '관리자이름',
  user_type ENUM('SA','CW','CP') NOT NULL COMMENT '관리자종류',
  password  VARCHAR(200)         NOT NULL COMMENT '비번',
  PRIMARY KEY (user_id)
) COMMENT '사용자';

CREATE TABLE Employee
(
  company_id VARCHAR(10) NOT NULL DEFAULT 1234567890 COMMENT '사업자번호_PK',
  emp_id     VARCHAR(7)  NOT NULL DEFAULT 2020001 COMMENT '직원번호',
  emp_name   VARCHAR(50) NOT NULL DEFAULT '' COMMENT '직원명',
  company_id VARCHAR(10) NOT NULL DEFAULT 1234567890 COMMENT '사업자번호_PK',
  company_id VARCHAR(10) NOT NULL DEFAULT 1234567890 COMMENT '사업자번호_PK',
  PRIMARY KEY (emp_id)
) COMMENT '직원정보';

CREATE TABLE member
(
  id      varchar(10) NOT NULL COMMENT 'M_id',
  name    VARCHAR(50) NOT NULL,
  isAdult BOOLEAN     NOT NULL DEFAULT True COMMENT '성인이야?',
  id      varchar(10) NOT NULL COMMENT 'P_id',
  PRIMARY KEY (id)
) COMMENT 'student';

CREATE TABLE order_cancel
(
  user_id VARCHAR(50) NOT NULL COMMENT '구매자아이디',
  p_id    INT         NOT NULL DEFAULT 10000 COMMENT '상품고유번호'
) COMMENT '주문취소';

CREATE TABLE ordering
(
  user_id VARCHAR(50) NOT NULL COMMENT '구매자아이디',
  p_id    INT         NOT NULL DEFAULT 10000 COMMENT '상품고유번호'
) COMMENT '주문';

CREATE TABLE product
(
  p_id   INT          NOT NULL DEFAULT 10000 COMMENT '상품고유번호',
  p_name VARCHAR(200) NOT NULL DEFAULT 이름 COMMENT '이름',
  PRIMARY KEY (p_id)
) COMMENT '상품';

CREATE TABLE s_u
(
  s_u_i          NULL    ,
  hakbun VARCHAR NULL     COMMENT 'IX'
);

CREATE TABLE student_subject
(
  id     VARCHAR(10) NOT NULL DEFAULT rowId(),
  stu_id varchar(10) NOT NULL,
  sub_id VARCHAR(3)  NOT NULL,
  id     varchar(10) NOT NULL,
  PRIMARY KEY (id)
) COMMENT '다대다의 수강신청';

CREATE TABLE subject
(
  id   VARCHAR(3)  NOT NULL,
  name VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
) COMMENT 'subject';

ALTER TABLE student_subject
  ADD CONSTRAINT FK_subject_TO_student_subject
    FOREIGN KEY (sub_id)
    REFERENCES subject (id);

ALTER TABLE student_subject
  ADD CONSTRAINT FK_member_TO_student_subject
    FOREIGN KEY (id)
    REFERENCES member (id);

ALTER TABLE Employee
  ADD CONSTRAINT FK_Company_TO_Employee
    FOREIGN KEY (company_id)
    REFERENCES Company (company_id);

ALTER TABLE ordering
  ADD CONSTRAINT FK_customers_TO_ordering
    FOREIGN KEY (user_id)
    REFERENCES customers (user_id);

ALTER TABLE ordering
  ADD CONSTRAINT FK_product_TO_ordering
    FOREIGN KEY (p_id)
    REFERENCES product (p_id);

ALTER TABLE order_cancel
  ADD CONSTRAINT FK_customers_TO_order_cancel
    FOREIGN KEY (user_id)
    REFERENCES customers (user_id);

ALTER TABLE order_cancel
  ADD CONSTRAINT FK_product_TO_order_cancel
    FOREIGN KEY (p_id)
    REFERENCES product (p_id);

ALTER TABLE member
  ADD CONSTRAINT FK_member_TO_member
    FOREIGN KEY (id)
    REFERENCES member (id);
