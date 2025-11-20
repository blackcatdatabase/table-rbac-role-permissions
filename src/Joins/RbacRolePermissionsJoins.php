<?php
declare(strict_types=1);

namespace BlackCat\Database\Packages\RbacRolePermissions\Joins;

use BlackCat\Database\Support\SqlIdentifier as Ident;
use BlackCat\Core\Database as Database;

/**
 * Methods generated from foreign keys.
 *
 * Return structure: [string $sqlJoinFragment, array $params]
 * Join policy:
 *   - -JoinPolicy left  => always LEFT JOIN (default)
 *   - -JoinPolicy all   => INNER JOIN if ALL local FK columns are NOT NULL
 *   - -JoinPolicy any   => INNER JOIN if AT LEAST ONE local FK column is NOT NULL
 */
final class RbacRolePermissionsJoins {

    /** @internal */
    private function qi(?Database $db, string $ident): string {
        return $db ? Ident::qi($db, $ident) : $ident;
    }

    /** @internal */
    private function q(?Database $db, string $ident): string {
        return $db ? Ident::q($db, $ident) : $ident;
    }

    /** @internal Short SQL alias validation (guards against invalid input). */
    private function assertAlias(string $s): string {
        if (!preg_match('/^[A-Za-z_][A-Za-z0-9_]*$/', $s)) {
            throw new \InvalidArgumentException("Invalid SQL alias: {$s}");
        }
        return $s;
    }

    /** @internal Validate both aliases and ensure they differ. */
    private function assertAliasPair(string $alias, string $as): array {
        $alias = $this->assertAlias($alias);
        $as    = $this->assertAlias($as);
        if ($alias === $as) {
            throw new \InvalidArgumentException("Join alias must differ from base alias: {$alias}");
        }
        return [$alias, $as];
    }


    /**
     * FK: rbac_role_permissions -> rbac_roles
     * LEFT JOIN vw_rbac_roles AS $as ON $as.id = $alias.role_id
     * @return array{0:string,1:array<string,mixed>}
     */
    public function joinRbacRoles(string $alias = 't', string $as = 'j0'): array {
        [$alias, $as] = $this->assertAliasPair($alias, $as);
        return [' LEFT JOIN vw_rbac_roles AS ' . $as . ' ON ' . $as . '.id = ' . $alias . '.role_id' . ' ', []];
    }
    /**
     * FK: rbac_role_permissions -> permissions
     * LEFT JOIN vw_permissions AS $as ON $as.id = $alias.permission_id
     * @return array{0:string,1:array<string,mixed>}
     */
    public function joinPermissions(string $alias = 't', string $as = 'j1'): array {
        [$alias, $as] = $this->assertAliasPair($alias, $as);
        return [' LEFT JOIN vw_permissions AS ' . $as . ' ON ' . $as . '.id = ' . $alias . '.permission_id' . ' ', []];
    }

}
