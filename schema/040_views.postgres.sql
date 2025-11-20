-- Auto-generated from schema-views-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  rbac_role_permissions
-- Contract view for [rbac_role_permissions]
CREATE OR REPLACE VIEW vw_rbac_role_permissions AS
SELECT
  role_id, permission_id, effect, source, created_at
FROM rbac_role_permissions;
