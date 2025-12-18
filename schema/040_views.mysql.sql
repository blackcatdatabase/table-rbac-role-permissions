-- Auto-generated from schema-views-mysql.yaml (map@sha1:B3C579FF17AC186C47D2C4AC86B0738DB2308BF2)
-- engine: mysql
-- table:  rbac_role_permissions

-- Contract view for [rbac_role_permissions]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_rbac_role_permissions AS
SELECT
  role_id,
  permission_id,
  effect,
  source,
  created_at
FROM rbac_role_permissions;
