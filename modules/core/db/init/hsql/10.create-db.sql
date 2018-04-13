-- begin SDBMTSAMPLE_STORE
create table SDBMTSAMPLE_STORE (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    TENANT_ID varchar(255),
    --
    NAME varchar(255),
    ADDRESS varchar(255),
    --
    primary key (ID)
)^
-- end SDBMTSAMPLE_STORE
-- begin SEC_GROUP
alter table SEC_GROUP add column TENANT_ID varchar(255) ^
alter table SEC_GROUP add column DTYPE varchar(100) ^
update SEC_GROUP set DTYPE = 'EXT' where DTYPE is null ^
-- end SEC_GROUP
-- begin SEC_USER
alter table SEC_USER add column TENANT_ID varchar(255) ^
alter table SEC_USER add column DTYPE varchar(100) ^
update SEC_USER set DTYPE = 'EXT' where DTYPE is null ^
-- end SEC_USER
-- begin SEC_USER_ROLE
alter table SEC_USER_ROLE add column TENANT_ID varchar(255) ^
alter table SEC_USER_ROLE add column DTYPE varchar(100) ^
update SEC_USER_ROLE set DTYPE = 'EXT' where DTYPE is null ^
-- end SEC_USER_ROLE
-- begin SEC_ROLE
alter table SEC_ROLE add column TENANT_ID varchar(255) ^
alter table SEC_ROLE add column DTYPE varchar(100) ^
update SEC_ROLE set DTYPE = 'EXT' where DTYPE is null ^
-- end SEC_ROLE
-- begin SEC_FILTER
alter table SEC_FILTER add column TENANT_ID varchar(255) ^
alter table SEC_FILTER add column DTYPE varchar(100) ^
update SEC_FILTER set DTYPE = 'EXT' where DTYPE is null ^
-- end SEC_FILTER
