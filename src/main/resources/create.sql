--liquibase formatted sql

--changeset albanyqq:1
CREATE TABLE `TEST` (
	`CODE` VARCHAR (20) NOT NULL,
	`DESCRIPTION` VARCHAR (200),
	`VALUE` VARCHAR (200)
);
--rollback drop table test;
--changeset albanyqq:2
INSERT INTO `TEST` (
	`CODE`,
	`DESCRIPTION`,
	`VALUE`
)
VALUES
	(
		'T01',
		'Not specified',
		'FOO'
	);
--rollback delete from test where code='T01';
--changeset albanyqq:3
INSERT INTO `TEST` (
	`CODE`,
	`DESCRIPTION`,
	`VALUE`
)
VALUES
	(
		'T03',
		'Not s33cified',
		'F3'
	);
--rollback delete from test where code='T03';