-- Create server
-- EXTERNAL
-- create schema external_public
CREATE SCHEMA external_public;
-- DROP SERVER IF EXISTS external_public CASCADE;
CREATE SERVER external_public FOREIGN DATA WRAPPER postgres_fdw OPTIONS (
    host 'external-postgres',
    dbname 'external.potpracy.com.br'
);
CREATE USER MAPPING FOR CURRENT_USER SERVER external_public OPTIONS (user 'postgres', password 'secret');

IMPORT FOREIGN SCHEMA public FROM SERVER external_public INTO external_public;
-- CREATE FOREIGN DATA WRAPPER dblink_fdw HANDLER postgres_fdw_handler VALIDATOR postgres_fdw_validator;

-- DB01
-- create schema db01_public
CREATE SCHEMA db01_public;
-- DROP SERVER IF EXISTS db01_public CASCADE;
CREATE SERVER db01_public FOREIGN DATA WRAPPER postgres_fdw OPTIONS (
    host 'db01-postgres',
    dbname 'db01.potpracy.com.br'
);

CREATE USER MAPPING FOR CURRENT_USER SERVER db01_public OPTIONS (user 'postgres', password 'secret');

IMPORT FOREIGN SCHEMA public FROM SERVER db01_public INTO db01_public;

-- DB02
-- create schema db02_public
CREATE SCHEMA db02_public;
-- DROP SERVER IF EXISTS db02_public CASCADE;
CREATE SERVER db02_public FOREIGN DATA WRAPPER postgres_fdw OPTIONS (
    host 'db02-postgres',
    dbname 'db02.potpracy.com.br'
);

CREATE USER MAPPING FOR CURRENT_USER SERVER db02_public OPTIONS (user 'postgres', password 'secret');

IMPORT FOREIGN SCHEMA public FROM SERVER db02_public INTO db02_public;

-- DB03
-- create schema db03_public
CREATE SCHEMA db03_public;
-- DROP SERVER IF EXISTS db03_public CASCADE;
CREATE SERVER db03_public FOREIGN DATA WRAPPER postgres_fdw OPTIONS (
    host 'db03-postgres',
    dbname 'db03.potpracy.com.br'
);

CREATE USER MAPPING FOR CURRENT_USER SERVER db03_public OPTIONS (user 'postgres', password 'secret');

IMPORT FOREIGN SCHEMA public FROM SERVER db03_public INTO db03_public;