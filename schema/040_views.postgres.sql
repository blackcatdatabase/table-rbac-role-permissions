-- Auto-generated from schema-views-postgres.yaml (map@sha1:A35B3CB52780A1043442511D947A51BA2C27622C)
-- engine: postgres
-- table:  rbac_role_permissions

-- Contract view for [rbac_role_permissions]
CREATE OR REPLACE VIEW vw_rbac_role_permissions AS
SELECT
  role_id, permission_id, effect, source, created_at
FROM rbac_role_permissions;
