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
