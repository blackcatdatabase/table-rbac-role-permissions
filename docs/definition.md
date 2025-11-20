<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – rbac_role_permissions

Permission rules bundled with RBAC roles.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| role_id | BIGINT | NO | — | Role identifier (FK rbac_roles.id). |  |
| permission_id | BIGINT | NO | — | Permission identifier (FK permissions.id). |  |
| effect | TEXT | NO | 'allow' | Permit or deny flag. | enum: allow, deny |