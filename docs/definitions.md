# rbac_role_permissions

Permission rules bundled with RBAC roles.

## Columns
| Column | Type | Null | Default | Description | Crypto |
| --- | --- | --- | --- | --- | --- |
| role_id | BIGINT | NO |  | Role identifier (FK rbac_roles.id). |  |
| permission_id | BIGINT | NO |  | Permission identifier (FK permissions.id). |  |
| effect | mysql: ENUM('allow','deny') / postgres: TEXT | NO | allow | Permit or deny flag. (enum: allow, deny) |  |
| source | mysql: ENUM('repo','local') / postgres: TEXT | NO | repo | Whether the rule came from repo or local overrides. (enum: repo, local) |  |
| created_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |

## Engine Details

### mysql

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_rbac_rp_perm | permission_id | permissions(id) | ON DELETE CASCADE |
| fk_rbac_rp_role | role_id | rbac_roles(id) | ON DELETE CASCADE |

### postgres

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_rbac_rp_perm | permission_id | permissions(id) | ON DELETE CASCADE |
| fk_rbac_rp_role | role_id | rbac_roles(id) | ON DELETE CASCADE |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_rbac_role_permissions | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_rbac_role_permissions | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
