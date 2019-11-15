-- Some showcase entities (users, tenants etc) - nothing is mandatory in here

insert into SEC_GROUP
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, PARENT_ID, TENANT_ID)
values ('3b13565c-f41d-5e72-83f5-2b69a7f9ef33', 2, '2018-04-13 15:01:36', 'admin', '2018-04-13 15:02:06', 'admin', null, null, 'Walmart', '0fa2b1a5-1d68-4d69-9fbd-dff348347f93', 'walmart');

insert into SEC_GROUP
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, PARENT_ID, TENANT_ID)
values ('1b132d20-48df-2708-5ee5-f7ff1133132a', 2, '2018-04-13 15:23:23', 'walmart_admin', '2018-04-13 15:23:37', 'walmart_admin', null, null, 'Management', '3b13565c-f41d-5e72-83f5-2b69a7f9ef33', 'walmart');

insert into SEC_GROUP
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, PARENT_ID, TENANT_ID)
values ('0a9a5346-0d04-26e7-d22f-cd8fe82f966f', 1, '2018-04-13 15:23:18', 'walmart_admin', '2018-04-13 15:23:18', null, null, null, 'IT', '3b13565c-f41d-5e72-83f5-2b69a7f9ef33', 'walmart');

insert into SEC_GROUP
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, PARENT_ID, TENANT_ID)
values ('e5badf88-7d28-4d85-6281-f396bd7539ce', 2, '2018-04-13 15:02:26', 'admin', '2018-04-13 15:02:44', 'admin', null, null, 'Costco', '0fa2b1a5-1d68-4d69-9fbd-dff348347f93', 'costco');

insert into SEC_ROLE
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, LOC_NAME, DESCRIPTION, ROLE_TYPE, IS_DEFAULT_ROLE, TENANT_ID)
values ('38125a0f-5a89-3bc6-39a4-d7a276d357b7', 1, '2018-04-13 15:20:15', 'walmart_admin', '2018-04-13 15:20:15', null, null, null, 'User', null, null, 0, null, 'walmart');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('84dde29e-9bfa-7e65-1ba3-b4f835f8cb1e', 1, '2018-04-13 15:22:27', 'walmart_admin', '2018-04-13 15:22:27', null, null, null, 20, 'sdbmtsample$Store:delete', 0, '38125a0f-5a89-3bc6-39a4-d7a276d357b7');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('e5e7c836-8bfb-ae04-a5ed-2ff38b37ccd6', 1, '2018-04-13 15:20:15', 'walmart_admin', '2018-04-13 15:20:15', null, null, null, 10, 'administration', 0, '38125a0f-5a89-3bc6-39a4-d7a276d357b7');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('fd8c3f7e-7c26-b76f-a7dc-29f5864c1640', 1, '2018-04-13 15:22:27', 'walmart_admin', '2018-04-13 15:22:27', null, null, null, 20, 'sdbmtsample$Store:update', 0, '38125a0f-5a89-3bc6-39a4-d7a276d357b7');

insert into SEC_USER
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, LOGIN, LOGIN_LC, PASSWORD, NAME, FIRST_NAME, LAST_NAME, MIDDLE_NAME, POSITION_, EMAIL, LANGUAGE_, TIME_ZONE, TIME_ZONE_AUTO, ACTIVE, CHANGE_PASSWORD_AT_LOGON, GROUP_ID, IP_MASK, TENANT_ID)
values ('88d810c8-6a43-5d56-5b95-9ee310114008', 2, '2018-04-13 15:02:00', 'admin', '2018-04-13 15:02:06', 'admin', null, null, 'walmart_admin', 'walmart_admin', '2e9e562d79b5eb98431621c47516a70a3ef52108', null, null, null, null, null, null, 'en', null, null, true, false, '3b13565c-f41d-5e72-83f5-2b69a7f9ef33', null, 'walmart');

insert into SEC_USER
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, LOGIN, LOGIN_LC, PASSWORD, NAME, FIRST_NAME, LAST_NAME, MIDDLE_NAME, POSITION_, EMAIL, LANGUAGE_, TIME_ZONE, TIME_ZONE_AUTO, ACTIVE, CHANGE_PASSWORD_AT_LOGON, GROUP_ID, IP_MASK, SYS_TENANT_ID)
values ('be79a5ae-f46c-7ba3-6329-e5cac69201a0', 3, '2018-04-13 15:10:10', 'walmart_admin', '2018-04-13 15:23:56', 'walmart_admin', null, null, 'walmart_user', 'walmart_user', '89c92e4b16264701930d09ab3f9691005da6b60c', null, null, null, null, null, null, 'en', null, null, true, false, '1b132d20-48df-2708-5ee5-f7ff1133132a', null, 'walmart');

insert into SEC_USER
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, LOGIN, LOGIN_LC, PASSWORD, NAME, FIRST_NAME, LAST_NAME, MIDDLE_NAME, POSITION_, EMAIL, LANGUAGE_, TIME_ZONE, TIME_ZONE_AUTO, ACTIVE, CHANGE_PASSWORD_AT_LOGON, GROUP_ID, IP_MASK, SYS_TENANT_ID)
values ('a5ebb8af-3d2a-ead2-f665-61cc197c8cd6', 2, '2018-04-13 15:02:41', 'admin', '2018-04-13 15:02:44', 'admin', null, null, 'costco_admin', 'costco_admin', '816687c0fd6ce527dde2a217e3535f061e36f24e', null, null, null, null, null, null, 'en', null, null, true, false, 'e5badf88-7d28-4d85-6281-f396bd7539ce', null, 'costco');

insert into SEC_USER_ROLE
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, USER_ID, ROLE_ID)
values ('99df775b-77b7-7c7d-6e53-c808d8bec919', 1, '2018-04-13 15:21:43', 'walmart_admin', '2018-04-13 15:21:43', null, null, null, 'be79a5ae-f46c-7ba3-6329-e5cac69201a0', '38125a0f-5a89-3bc6-39a4-d7a276d357b7');

insert into SEC_USER_ROLE
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, USER_ID, ROLE_ID)
values ('0786f6a6-86de-db1e-3aed-58caade23f51', 1, '2018-04-13 15:10:10', 'walmart_admin', '2018-04-13 15:10:10', null, null, null, 'be79a5ae-f46c-7ba3-6329-e5cac69201a0', '6ebff3a8-2179-b2a0-f2f3-b0f766680a67');

insert into SEC_USER_ROLE
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, USER_ID, ROLE_ID)
values ('b32ca3eb-a562-4618-cb08-ca0a55410328', 1, '2018-04-13 15:02:41', 'admin', '2018-04-13 15:02:41', null, null, null, 'a5ebb8af-3d2a-ead2-f665-61cc197c8cd6', '6ebff3a8-2179-b2a0-f2f3-b0f766680a67');

insert into SEC_USER_ROLE
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, USER_ID, ROLE_ID)
values ('f1782bbd-0a6d-5782-2831-01f3a29b3c50', 1, '2018-04-13 15:02:00', 'admin', '2018-04-13 15:02:00', null, null, null, '88d810c8-6a43-5d56-5b95-9ee310114008', '6ebff3a8-2179-b2a0-f2f3-b0f766680a67');

insert into SEC_FILTER
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, COMPONENT, NAME, CODE, XML, USER_ID, SYS_TENANT_ID)
values ('e567aa9a-7ca1-2139-06ee-a4f8c86bfbe2', 2, '2018-04-13 15:08:04', 'walmart_admin', '2018-04-13 15:08:12', 'walmart_admin', null, null, '[sdbmtsample$Store.browse].filter', 'Walmart address search', null, '<?xml version="1.0" encoding="UTF-8"?>

<filter>
  <and>
    <c name="address" class="java.lang.String" operatorType="CONTAINS" width="1" type="PROPERTY"><![CDATA[e.address like :component$filter.address57114 ESCAPE ''\'' ]]>
      <param name="component$filter.address57114" javaClass="java.lang.String">NULL</param>
    </c>
  </and>
</filter>
', null, 'walmart');

insert into CUBASDBMT_TENANT
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, TENANT_ID, NAME, ACCESS_GROUP_ID, ADMIN_ID)
values ('919e1d0b-3569-4206-7aa2-3b767af7e80c', 2, '2018-04-13 15:02:06', 'admin', '2018-04-13 15:02:06', 'admin', null, null, 'walmart', 'Walmart', '3b13565c-f41d-5e72-83f5-2b69a7f9ef33', '88d810c8-6a43-5d56-5b95-9ee310114008');

insert into CUBASDBMT_TENANT
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, TENANT_ID, NAME, ACCESS_GROUP_ID, ADMIN_ID)
values ('4d68f776-2b28-bc39-256b-231fc5859325', 2, '2018-04-13 15:02:44', 'admin', '2018-04-13 15:02:44', 'admin', null, null, 'costco', 'Costco', 'e5badf88-7d28-4d85-6281-f396bd7539ce', 'a5ebb8af-3d2a-ead2-f665-61cc197c8cd6');

insert into SDBMTSAMPLE_STORE
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, TENANT_ID, NAME, ADDRESS)
values ('3c2373f1-f45c-f607-14fc-c6d4633d280a', 2, '2018-04-13 15:06:29', 'walmart_admin', '2018-04-13 15:06:35', 'walmart_admin', null, null, 'walmart', 'Walmart Valley', 'Walmart Supercenter Valley Stream, NYC');

insert into SDBMTSAMPLE_STORE
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, TENANT_ID, NAME, ADDRESS)
values ('9eb6be6f-d59d-4164-23b3-2dcc2f407f3d', 1, '2018-04-13 15:07:16', 'walmart_admin', '2018-04-13 15:07:16', null, null, null, 'walmart', 'Walmart Westbury', 'Walmart Westbury Plaza, NYC');

insert into SDBMTSAMPLE_STORE
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, TENANT_ID, NAME, ADDRESS)
values ('07ce839b-9eb6-f25c-c62d-0b4fc6930849', 1, '2018-04-13 15:09:24', 'costco_admin', '2018-04-13 15:09:24', null, null, null, 'costco', 'Costco Brooklyn', 'Costco Brooklyn, NYC');

insert into SDBMTSAMPLE_STORE
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, TENANT_ID, NAME, ADDRESS)
values ('c962d611-76dc-8dc7-1fe4-c0f65a52a9bf', 1, '2018-04-13 15:09:04', 'costco_admin', '2018-04-13 15:09:04', null, null, null, 'costco', 'Costco East River', 'East River Plaza, NYC');
