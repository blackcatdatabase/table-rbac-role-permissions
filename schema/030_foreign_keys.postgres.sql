-- Auto-generated from schema-map-postgres.yaml (map@sha1:F0EE237771FBA8DD7C4E886FF276F91A862C3718)
-- engine: postgres
-- table:  rbac_role_permissions

ALTER TABLE rbac_role_permissions ADD CONSTRAINT fk_rbac_rp_role FOREIGN KEY (role_id) REFERENCES rbac_roles(id) ON DELETE CASCADE;

ALTER TABLE rbac_role_permissions ADD CONSTRAINT fk_rbac_rp_perm FOREIGN KEY (permission_id) REFERENCES permissions(id) ON DELETE CASCADE;
