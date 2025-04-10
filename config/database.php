<?php

use Illuminate\Support\Str;

return [

    /*
    |--------------------------------------------------------------------------
    | Default Database Connection Name
    |--------------------------------------------------------------------------
    |
    | Here you may specify which of the database connections below you wish
    | to use as your default connection for database operations. This is
    | the connection which will be utilized unless another connection
    | is explicitly specified when you execute a query / statement.
    |
    */

    'default' => env('DB_CONNECTION', 'sqlite'),

    /*
    |--------------------------------------------------------------------------
    | Database Connections
    |--------------------------------------------------------------------------
    |
    | Below are all of the database connections defined for your application.
    | An example configuration is provided for each database system which
    | is supported by Laravel. You're free to add / remove connections.
    |
    */

    'connections' => [

        'sqlite' => [
            'driver' => 'sqlite',
            'url' => env('DB_URL'),
            'database' => env('DB_DATABASE', database_path('database.sqlite')),
            'prefix' => '',
            'foreign_key_constraints' => env('DB_FOREIGN_KEYS', true),
            'busy_timeout' => null,
            'journal_mode' => null,
            'synchronous' => null,
        ],

        'mysql' => [
            'driver' => 'mysql',
            'url' => env('DB_URL'),
            'host' => env('DB_HOST', '127.0.0.1'),
            'port' => env('DB_PORT', '3306'),
            'database' => env('DB_DATABASE', 'laravel'),
            'username' => env('DB_USERNAME', 'root'),
            'password' => env('DB_PASSWORD', ''),
            'unix_socket' => env('DB_SOCKET', ''),
            'charset' => env('DB_CHARSET', 'utf8mb4'),
            'collation' => env('DB_COLLATION', 'utf8mb4_unicode_ci'),
            'prefix' => '',
            'prefix_indexes' => true,
            'strict' => true,
            'engine' => null,
            'options' => extension_loaded('pdo_mysql') ? array_filter([
                PDO::MYSQL_ATTR_SSL_CA => env('MYSQL_ATTR_SSL_CA'),
            ]) : [],
        ],

        'mariadb' => [
            'driver' => 'mariadb',
            'url' => env('DB_URL'),
            'host' => env('DB_HOST', '127.0.0.1'),
            'port' => env('DB_PORT', '3306'),
            'database' => env('DB_DATABASE', 'laravel'),
            'username' => env('DB_USERNAME', 'root'),
            'password' => env('DB_PASSWORD', ''),
            'unix_socket' => env('DB_SOCKET', ''),
            'charset' => env('DB_CHARSET', 'utf8mb4'),
            'collation' => env('DB_COLLATION', 'utf8mb4_unicode_ci'),
            'prefix' => '',
            'prefix_indexes' => true,
            'strict' => true,
            'engine' => null,
            'options' => extension_loaded('pdo_mysql') ? array_filter([
                PDO::MYSQL_ATTR_SSL_CA => env('MYSQL_ATTR_SSL_CA'),
            ]) : [],
        ],

        'pgsql' => [
            'driver' => 'pgsql',
            'url' => env('DB_URL'),
            'host' => env('DB_HOST', '127.0.0.1'),
            'port' => env('DB_PORT', '5432'),
            'database' => env('DB_DATABASE', 'laravel'),
            'username' => env('DB_USERNAME', 'root'),
            'password' => env('DB_PASSWORD', ''),
            'charset' => env('DB_CHARSET', 'utf8'),
            'prefix' => '',
            'prefix_indexes' => true,
            'search_path' => 'public',
            'sslmode' => 'prefer',
        ],

        'sqlsrv' => [
            'driver' => 'sqlsrv',
            'url' => env('DB_URL'),
            'host' => env('DB_HOST', 'localhost'),
            'port' => env('DB_PORT', '1433'),
            'database' => env('DB_DATABASE', 'laravel'),
            'username' => env('DB_USERNAME', 'root'),
            'password' => env('DB_PASSWORD', ''),
            'charset' => env('DB_CHARSET', 'utf8'),
            'prefix' => '',
            'prefix_indexes' => true,
            // 'encrypt' => env('DB_ENCRYPT', 'yes'),
            // 'trust_server_certificate' => env('DB_TRUST_SERVER_CERTIFICATE', 'false'),
        ],

        'external' => [
            'driver' => 'pgsql',
            'host' => env('EXTERNAL_HOST', '127.0.0.1'),
            'port' => env('EXTERNAL_PORT', '5499'),
            'database' => env('EXTERNAL_DATABASE', 'external.potpracy.com.br'),
            'username' => env('EXTERNAL_USERNAME', 'postgres'),
            'password' => env('EXTERNAL_PASSWORD', 'secret'),
            'charset' => 'utf8',
            'prefix' => '',
            'schema' => 'public',
            'sslmode' => 'prefer',
        ],

        'db01' => [
            'driver' => 'pgsql',
            'host' => env('DB01_HOST', '127.0.0.1'),
            'port' => env('DB01_PORT', '5500'),
            'database' => env('DB01_DATABASE', 'db01.potpracy.com.br'),
            'username' => env('DB01_USERNAME', 'postgres'),
            'password' => env('DB01_PASSWORD', 'secret'),
            'charset' => 'utf8',
            'prefix' => '',
            'schema' => 'public',
            'sslmode' => 'prefer',
        ],

        'db02' => [
            'driver' => 'pgsql',
            'host' => env('DB02_HOST', '127.0.0.1'),
            'port' => env('DB02_PORT', '5501'),
            'database' => env('DB02_DATABASE', 'db02.potpracy.com.br'),
            'username' => env('DB02_USERNAME', 'postgres'),
            'password' => env('DB02_PASSWORD', 'secret'),
            'charset' => 'utf8',
            'prefix' => '',
            'schema' => 'public',
            'sslmode' => 'prefer',
        ],

        'db03' => [
            'driver' => 'pgsql',
            'host' => env('DB03_HOST', '127.0.0.1'),
            'port' => env('DB03_PORT', '5502'),
            'database' => env('DB03_DATABASE', 'db03.potpracy.com.br'),
            'username' => env('DB03_USERNAME', 'postgres'),
            'password' => env('DB03_PASSWORD', 'secret'),
            'charset' => 'utf8',
            'prefix' => '',
            'schema' => 'public',
            'sslmode' => 'prefer',
        ],

        'db04' => [
            'driver' => 'pgsql',
            'host' => env('DB04_HOST', '127.0.0.1'),
            'port' => env('DB04_PORT', '5503'), 
            'database' => env('DB04_DATABASE', 'db04.potpracy.com.br'),
            'username' => env('DB04_USERNAME', 'postgres'),
            'password' => env('DB04_PASSWORD', 'secret'),
            'charset' => 'utf8',
            'prefix' => '',
            'schema' => 'public',
            'sslmode' => 'prefer',
        ],

        'db05' => [
            'driver' => 'pgsql',
            'host' => env('DB05_HOST', '127.0.0.1'),
            'port' => env('DB05_PORT', '5504'),
            'database' => env('DB05_DATABASE', 'db05.potpracy.com.br'),
            'username' => env('DB05_USERNAME', 'postgres'),
            'password' => env('DB05_PASSWORD', 'secret'),
            'charset' => 'utf8',
            'prefix' => '',
            'schema' => 'public',
            'sslmode' => 'prefer',
        ],

        'db06' => [
            'driver' => 'pgsql',
            'host' => env('DB06_HOST', '127.0.0.1'),
            'port' => env('DB06_PORT', '5505'),
            'database' => env('DB06_DATABASE', 'db06.potpracy.com.br'),
            'username' => env('DB06_USERNAME', 'postgres'),
            'password' => env('DB06_PASSWORD', 'secret'),
            'charset' => 'utf8',
            'prefix' => '',
            'schema' => 'public',
            'sslmode' => 'prefer',
        ],

        'db07' => [
            'driver' => 'pgsql',
            'host' => env('DB07_HOST', '127.0.0.1'),
            'port' => env('DB07_PORT', '5506'),
            'database' => env('DB07_DATABASE', 'db07.potpracy.com.br'),
            'username' => env('DB07_USERNAME', 'postgres'),
            'password' => env('DB07_PASSWORD', 'secret'),
            'charset' => 'utf8',
            'prefix' => '',
            'schema' => 'public',
            'sslmode' => 'prefer',
        ],

        'db08' => [
            'driver' => 'pgsql',
            'host' => env('DB08_HOST', '127.0.0.1'),
            'port' => env('DB08_PORT', '5507'),
            'database' => env('DB08_DATABASE', 'db08.potpracy.com.br'),
            'username' => env('DB08_USERNAME', 'postgres'),
            'password' => env('DB08_PASSWORD', 'secret'),
            'charset' => 'utf8',
            'prefix' => '',
            'schema' => 'public',
            'sslmode' => 'prefer',
        ],

        'db09' => [
            'driver' => 'pgsql',
            'host' => env('DB09_HOST', '127.0.0.1'),
            'port' => env('DB09_PORT', '5508'),
            'database' => env('DB09_DATABASE', 'db09.potpracy.com.br'),
            'username' => env('DB09_USERNAME', 'postgres'),
            'password' => env('DB09_PASSWORD', 'secret'),
            'charset' => 'utf8',
            'prefix' => '',
            'schema' => 'public',
            'sslmode' => 'prefer',
        ],

        'db10' => [
            'driver' => 'pgsql',
            'host' => env('DB10_HOST', '127.0.0.1'),
            'port' => env('DB10_PORT', '5509'),
            'database' => env('DB10_DATABASE', 'db10.potpracy.com.br'),
            'username' => env('DB10_USERNAME', 'postgres'),
            'password' => env('DB10_PASSWORD', 'secret'),
            'charset' => 'utf8',
            'prefix' => '',
            'schema' => 'public',
            'sslmode' => 'prefer',
        ],

        'db11' => [
            'driver' => 'pgsql',
            'host' => env('DB11_HOST', '127.0.0.1'),
            'port' => env('DB11_PORT', '5510'),
            'database' => env('DB11_DATABASE', 'db11.potpracy.com.br'),
            'username' => env('DB11_USERNAME', 'postgres'),
            'password' => env('DB11_PASSWORD', 'secret'),
            'charset' => 'utf8',
            'prefix' => '',
            'schema' => 'public',
            'sslmode' => 'prefer',
        ],

        'db12' => [
            'driver' => 'pgsql',
            'host' => env('DB12_HOST', '127.0.0.1'),
            'port' => env('DB12_PORT', '5511'),
            'database' => env('DB12_DATABASE', 'db12.potpracy.com.br'),
            'username' => env('DB12_USERNAME', 'postgres'),
            'password' => env('DB12_PASSWORD', 'secret'),
            'charset' => 'utf8',
            'prefix' => '',
            'schema' => 'public',
            'sslmode' => 'prefer',
        ],

        'db13' => [
            'driver' => 'pgsql',
            'host' => env('DB13_HOST', '127.0.0.1'),
            'port' => env('DB13_PORT', '5512'),
            'database' => env('DB13_DATABASE', 'db13.potpracy.com.br'),
            'username' => env('DB13_USERNAME', 'postgres'),
            'password' => env('DB13_PASSWORD', 'secret'),
            'charset' => 'utf8',
            'prefix' => '',
            'schema' => 'public',
            'sslmode' => 'prefer',
        ],

        'db14' => [
            'driver' => 'pgsql',
            'host' => env('DB14_HOST', '127.0.0.1'),
            'port' => env('DB14_PORT', '5513'),
            'database' => env('DB14_DATABASE', 'db14.potpracy.com.br'),
            'username' => env('DB14_USERNAME', 'postgres'),
            'password' => env('DB14_PASSWORD', 'secret'),
            'charset' => 'utf8',
            'prefix' => '',
            'schema' => 'public',
            'sslmode' => 'prefer',
        ],

        'db15' => [
            'driver' => 'pgsql',
            'host' => env('DB15_HOST', '127.0.0.1'),
            'port' => env('DB15_PORT', '5514'),
            'database' => env('DB15_DATABASE', 'db15.potpracy.com.br'),
            'username' => env('DB15_USERNAME', 'postgres'),
            'password' => env('DB15_PASSWORD', 'secret'),
            'charset' => 'utf8',
            'prefix' => '',
            'schema' => 'public',
            'sslmode' => 'prefer',
        ],        
    ],

    /*
    |--------------------------------------------------------------------------
    | Migration Repository Table
    |--------------------------------------------------------------------------
    |
    | This table keeps track of all the migrations that have already run for
    | your application. Using this information, we can determine which of
    | the migrations on disk haven't actually been run on the database.
    |
    */

    'migrations' => [
        'table' => 'migrations',
        'update_date_on_publish' => true,
    ],

    /*
    |--------------------------------------------------------------------------
    | Redis Databases
    |--------------------------------------------------------------------------
    |
    | Redis is an open source, fast, and advanced key-value store that also
    | provides a richer body of commands than a typical key-value system
    | such as Memcached. You may define your connection settings here.
    |
    */

    'redis' => [

        'client' => env('REDIS_CLIENT', 'phpredis'),

        'options' => [
            'cluster' => env('REDIS_CLUSTER', 'redis'),
            'prefix' => env('REDIS_PREFIX', Str::slug(env('APP_NAME', 'laravel'), '_') . '_database_'),
            'persistent' => env('REDIS_PERSISTENT', false),
        ],

        'default' => [
            'url' => env('REDIS_URL'),
            'host' => env('REDIS_HOST', '127.0.0.1'),
            'username' => env('REDIS_USERNAME'),
            'password' => env('REDIS_PASSWORD'),
            'port' => env('REDIS_PORT', '6379'),
            'database' => env('REDIS_DB', '0'),
        ],

        'cache' => [
            'url' => env('REDIS_URL'),
            'host' => env('REDIS_HOST', '127.0.0.1'),
            'username' => env('REDIS_USERNAME'),
            'password' => env('REDIS_PASSWORD'),
            'port' => env('REDIS_PORT', '6379'),
            'database' => env('REDIS_CACHE_DB', '1'),
        ],

    ],

];
