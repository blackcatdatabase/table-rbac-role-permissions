-- Auto-generated from schema-map-postgres.yaml (map@sha1:8C4F2BC1C4D22EE71E27B5A7968C71E32D8D884D)
-- engine: postgres
-- table:  rbac_role_permissions

CREATE TABLE IF NOT EXISTS rbac_role_permissions (
  role_id BIGINT NOT NULL,
  permission_id BIGINT NOT NULL,
  effect TEXT NOT NULL DEFAULT 'allow',           -- 'allow' | 'deny'
  source TEXT NOT NULL DEFAULT 'repo',            -- 'repo' | 'local'
  created_at TIMESTAMPTZ(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (role_id, permission_id),
  CONSTRAINT chk_rbac_role_perm_effect CHECK (effect IN ('allow','deny')),
  CONSTRAINT chk_rbac_role_perm_source CHECK (source IN ('repo','local'))
);
