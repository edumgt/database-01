-- test.city definition

CREATE TABLE `city` (
  `city_code` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `city_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `city_ename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `city_x` decimal(9,6) DEFAULT NULL,
  `city_y` decimal(9,6) DEFAULT NULL,
  `nation_code` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`city_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- test.company definition

CREATE TABLE `company` (
  `company_id` varchar(10) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1234567890' COMMENT '사업자번호_PK',
  `company_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '회사명',
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='회사정보';


-- test.nation definition

CREATE TABLE `nation` (
  `nation_code` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `nation_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `nation_sudo` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nation_pop` bigint DEFAULT NULL,
  `nation_gdp` bigint DEFAULT NULL,
  PRIMARY KEY (`nation_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- test.student definition

CREATE TABLE `student` (
  `id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '학생 ID (PK)',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '이름',
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '주소',
  `grade` int NOT NULL COMMENT '학년',
  `gender` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '성별',
  `class` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '반 코드',
  `age` tinyint DEFAULT '1' COMMENT '나이',
  `hobby` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='학생 정보';


-- test.student_subject definition

CREATE TABLE `student_subject` (
  `stu_id` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sub_id` varchar(3) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='수강신청';


-- test.employee definition

CREATE TABLE `employee` (
  `company_id` varchar(10) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1234567890' COMMENT '사업자번호_PK',
  `emp_id` varchar(7) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '2020001' COMMENT '직원번호',
  `emp_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '직원명',
  PRIMARY KEY (`emp_id`),
  KEY `FK_Company_TO_Employee` (`company_id`),
  CONSTRAINT `FK_Company_TO_Employee` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='직원정보';