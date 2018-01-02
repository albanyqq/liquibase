--liquibase formatted sql

--changeset albanyqq:3
alter table test_table ADD te CHAR NOT NULL Default 0
--rollback ALTER TABLE test_table DROP COLUMN te;