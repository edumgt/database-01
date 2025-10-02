
CREATE TABLE Company
(
  company_id   VARCHAR(10) NOT NULL DEFAULT 1234567890,
  company_name VARCHAR(50) NOT NULL DEFAULT '',
  CONSTRAINT PK_Company PRIMARY KEY (company_id)
)
GO

EXECUTE sys.sp_addextendedproperty 'MS_Description',
  '회사정보', 'user', dbo, 'table', 'Company'
GO

EXECUTE sys.sp_addextendedproperty 'MS_Description',
  '사업자번호_PK', 'user', dbo, 'table', 'Company', 'column', 'company_id'
GO

EXECUTE sys.sp_addextendedproperty 'MS_Description',
  '회사명', 'user', dbo, 'table', 'Company', 'column', 'company_name'
GO

CREATE TABLE customers
(
  user_id   VARCHAR(50)          NOT NULL,
  user_name VARCHAR(50)          NOT NULL,
  user_type ENUM('SA','CW','CP') NOT NULL,
  password  VARCHAR(200)         NOT NULL,
  CONSTRAINT PK_customers PRIMARY KEY (user_id)
)
GO

EXECUTE sys.sp_addextendedproperty 'MS_Description',
  '사용자', 'user', dbo, 'table', 'customers'
GO

EXECUTE sys.sp_addextendedproperty 'MS_Description',
  '구매자아이디', 'user', dbo, 'table', 'customers', 'column', 'user_id'
GO

EXECUTE sys.sp_addextendedproperty 'MS_Description',
  '관리자이름', 'user', dbo, 'table', 'customers', 'column', 'user_name'
GO

EXECUTE sys.sp_addextendedproperty 'MS_Description',
  '관리자종류', 'user', dbo, 'table', 'customers', 'column', 'user_type'
GO

EXECUTE sys.sp_addextendedproperty 'MS_Description',
  '비번', 'user', dbo, 'table', 'customers', 'column', 'password'
GO

CREATE TABLE Employee
(
  company_id VARCHAR(10) NOT NULL DEFAULT 1234567890,
  emp_id     VARCHAR(7)  NOT NULL DEFAULT 2020001,
  emp_name   VARCHAR(50) NOT NULL DEFAULT '',
  company_id VARCHAR(10) NOT NULL DEFAULT 1234567890,
  company_id VARCHAR(10) NOT NULL DEFAULT 1234567890,
  CONSTRAINT PK_Employee PRIMARY KEY (emp_id)
)
GO

EXECUTE sys.sp_addextendedproperty 'MS_Description',
  '직원정보', 'user', dbo, 'table', 'Employee'
GO

EXECUTE sys.sp_addextendedproperty 'MS_Description',
  '사업자번호_PK', 'user', dbo, 'table', 'Employee', 'column', 'company_id'
GO

EXECUTE sys.sp_addextendedproperty 'MS_Description',
  '직원번호', 'user', dbo, 'table', 'Employee', 'column', 'emp_id'
GO

EXECUTE sys.sp_addextendedproperty 'MS_Description',
  '직원명', 'user', dbo, 'table', 'Employee', 'column', 'emp_name'
GO

EXECUTE sys.sp_addextendedproperty 'MS_Description',
  '사업자번호_PK', 'user', dbo, 'table', 'Employee', 'column', 'company_id'
GO

EXECUTE sys.sp_addextendedproperty 'MS_Description',
  '사업자번호_PK', 'user', dbo, 'table', 'Employee', 'column', 'company_id'
GO

CREATE TABLE member
(
  id      varchar(10) NOT NULL,
  name    VARCHAR(50) NOT NULL,
  isAdult BOOLEAN     NOT NULL DEFAULT True,
  id      varchar(10) NOT NULL,
  CONSTRAINT PK_member PRIMARY KEY (id)
)
GO

EXECUTE sys.sp_addextendedproperty 'MS_Description',
  'student', 'user', dbo, 'table', 'member'
GO

EXECUTE sys.sp_addextendedproperty 'MS_Description',
  'M_id', 'user', dbo, 'table', 'member', 'column', 'id'
GO

EXECUTE sys.sp_addextendedproperty 'MS_Description',
  '성인이야?', 'user', dbo, 'table', 'member', 'column', 'isAdult'
GO

EXECUTE sys.sp_addextendedproperty 'MS_Description',
  'P_id', 'user', dbo, 'table', 'member', 'column', 'id'
GO

CREATE TABLE order_cancel
(
  user_id VARCHAR(50) NOT NULL,
  p_id    INT         NOT NULL DEFAULT 10000
)
GO

EXECUTE sys.sp_addextendedproperty 'MS_Description',
  '주문취소', 'user', dbo, 'table', 'order_cancel'
GO

EXECUTE sys.sp_addextendedproperty 'MS_Description',
  '구매자아이디', 'user', dbo, 'table', 'order_cancel', 'column', 'user_id'
GO

EXECUTE sys.sp_addextendedproperty 'MS_Description',
  '상품고유번호', 'user', dbo, 'table', 'order_cancel', 'column', 'p_id'
GO

CREATE TABLE ordering
(
  user_id VARCHAR(50) NOT NULL,
  p_id    INT         NOT NULL DEFAULT 10000
)
GO

EXECUTE sys.sp_addextendedproperty 'MS_Description',
  '주문', 'user', dbo, 'table', 'ordering'
GO

EXECUTE sys.sp_addextendedproperty 'MS_Description',
  '구매자아이디', 'user', dbo, 'table', 'ordering', 'column', 'user_id'
GO

EXECUTE sys.sp_addextendedproperty 'MS_Description',
  '상품고유번호', 'user', dbo, 'table', 'ordering', 'column', 'p_id'
GO

CREATE TABLE product
(
  p_id   INT          NOT NULL DEFAULT 10000,
  p_name VARCHAR(200) NOT NULL DEFAULT 이름,
  CONSTRAINT PK_product PRIMARY KEY (p_id)
)
GO

EXECUTE sys.sp_addextendedproperty 'MS_Description',
  '상품', 'user', dbo, 'table', 'product'
GO

EXECUTE sys.sp_addextendedproperty 'MS_Description',
  '상품고유번호', 'user', dbo, 'table', 'product', 'column', 'p_id'
GO

EXECUTE sys.sp_addextendedproperty 'MS_Description',
  '이름', 'user', dbo, 'table', 'product', 'column', 'p_name'
GO

CREATE TABLE s_u
(
  s_u_i         ,
  hakbun VARCHAR
)
GO

EXECUTE sys.sp_addextendedproperty 'MS_Description',
  'IX', 'user', dbo, 'table', 's_u', 'column', 'hakbun'
GO

CREATE TABLE student_subject
(
  id     VARCHAR(10) NOT NULL DEFAULT rowId(),
  stu_id varchar(10) NOT NULL,
  sub_id VARCHAR(3)  NOT NULL,
  id     varchar(10) NOT NULL,
  CONSTRAINT PK_student_subject PRIMARY KEY (id)
)
GO

EXECUTE sys.sp_addextendedproperty 'MS_Description',
  '다대다의 수강신청', 'user', dbo, 'table', 'student_subject'
GO

CREATE TABLE subject
(
  id   VARCHAR(3)  NOT NULL,
  name VARCHAR(50) NOT NULL,
  CONSTRAINT PK_subject PRIMARY KEY (id)
)
GO

EXECUTE sys.sp_addextendedproperty 'MS_Description',
  'subject', 'user', dbo, 'table', 'subject'
GO

ALTER TABLE student_subject
  ADD CONSTRAINT FK_subject_TO_student_subject
    FOREIGN KEY (sub_id)
    REFERENCES subject (id)
GO

ALTER TABLE student_subject
  ADD CONSTRAINT FK_member_TO_student_subject
    FOREIGN KEY (id)
    REFERENCES member (id)
GO

ALTER TABLE Employee
  ADD CONSTRAINT FK_Company_TO_Employee
    FOREIGN KEY (company_id)
    REFERENCES Company (company_id)
GO

ALTER TABLE ordering
  ADD CONSTRAINT FK_customers_TO_ordering
    FOREIGN KEY (user_id)
    REFERENCES customers (user_id)
GO

ALTER TABLE ordering
  ADD CONSTRAINT FK_product_TO_ordering
    FOREIGN KEY (p_id)
    REFERENCES product (p_id)
GO

ALTER TABLE order_cancel
  ADD CONSTRAINT FK_customers_TO_order_cancel
    FOREIGN KEY (user_id)
    REFERENCES customers (user_id)
GO

ALTER TABLE order_cancel
  ADD CONSTRAINT FK_product_TO_order_cancel
    FOREIGN KEY (p_id)
    REFERENCES product (p_id)
GO

ALTER TABLE member
  ADD CONSTRAINT FK_member_TO_member
    FOREIGN KEY (id)
    REFERENCES member (id)
GO
