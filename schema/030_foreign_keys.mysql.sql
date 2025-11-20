-- Auto-generated from schema-map-mysql.psd1 (map@734a489)
-- engine: mysql
-- table:  rbac_role_permissions
ALTER TABLE rbac_role_permissions ADD CONSTRAINT fk_rbac_rp_role FOREIGN KEY (role_id) REFERENCES rbac_roles(id) ON DELETE CASCADE;

ALTER TABLE rbac_role_permissions ADD CONSTRAINT fk_rbac_rp_perm FOREIGN KEY (permission_id) REFERENCES permissions(id) ON DELETE CASCADE;
