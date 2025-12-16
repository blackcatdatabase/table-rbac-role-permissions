-- Auto-generated from schema-views-mysql.yaml (map@sha1:FFA9A9D6FA9EE079B0DAEBB6FEE023C138E8FFA1)
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
