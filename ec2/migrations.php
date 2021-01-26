<?php

return [
    'name' => 'EC-Cube 2 Migrations',
    'migrations_namespace' => 'MyProject\Migrations',
    'table_name' => 'doctrine_migration_versions',
    'column_name' => 'version',
    'column_length' => 14,
    'executed_at_column_name' => 'executed_at',
    'migrations_directory' => '/data/migrations',
    'all_or_nothing' => false,
    'check_database_platform' => true,
];
