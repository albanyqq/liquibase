--liquibase formatted sql

--changeset albanyqq:2

INSERT INTO `TEST_TABLE` (`CODE`, `DESCRIPTION`, `VALUE`) VALUES ('T01', 'Not specified', 'FOO');

INSERT INTO `TEST_TABLE` (`CODE`, `DESCRIPTION`, `VALUE`) VALUES ('T02', 'Wrongly specified', 'BAR');

INSERT INTO `TEST_TABLE` (`CODE`, `DESCRIPTION`, `VALUE`) VALUES ('T03', 'Correct', 'FOO-BAR');

--rollback delete from TEST_TABLE where CODE=T02;