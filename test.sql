
CREATE TABLE student
(
  id   varchar(10) NOT NULL,
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


ALTER TABLE student_subject
  ADD CONSTRAINT FK_student_TO_student_subject
    FOREIGN KEY (stu_id)
    REFERENCES student (id);

ALTER TABLE student_subject
  ADD CONSTRAINT FK_subject_TO_student_subject
    FOREIGN KEY (sub_id)
    REFERENCES subject (id);
