-- Auto-generated from schema-map-postgres.yaml (map@sha1:FAEA49A5D5F8FAAD9F850D0F430ED451C5C1D707)
-- engine: postgres
-- table:  rbac_role_permissions

ALTER TABLE rbac_role_permissions ADD CONSTRAINT fk_rbac_rp_role FOREIGN KEY (role_id) REFERENCES rbac_roles(id) ON DELETE CASCADE;

ALTER TABLE rbac_role_permissions ADD CONSTRAINT fk_rbac_rp_perm FOREIGN KEY (permission_id) REFERENCES permissions(id) ON DELETE CASCADE;
