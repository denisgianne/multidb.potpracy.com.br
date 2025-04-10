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

-- DB04
-- create schema db04_public
CREATE SCHEMA db04_public;
-- DROP SERVER IF EXISTS db04_public CASCADE;
CREATE SERVER db04_public FOREIGN DATA WRAPPER postgres_fdw OPTIONS (
    host 'db04-postgres',
    dbname 'db04.potpracy.com.br'
);

CREATE USER MAPPING FOR CURRENT_USER SERVER db04_public OPTIONS (user 'postgres', password 'secret');

IMPORT FOREIGN SCHEMA public FROM SERVER db04_public INTO db04_public;

-- DB05
-- create schema db05_public
CREATE SCHEMA db05_public;
-- DROP SERVER IF EXISTS db05_public CASCADE;
CREATE SERVER db05_public FOREIGN DATA WRAPPER postgres_fdw OPTIONS (
    host 'db05-postgres',
    dbname 'db05.potpracy.com.br'
);

CREATE USER MAPPING FOR CURRENT_USER SERVER db05_public OPTIONS (user 'postgres', password 'secret');

IMPORT FOREIGN SCHEMA public FROM SERVER db05_public INTO db05_public;

-- DB06
-- create schema db06_public
CREATE SCHEMA db06_public;
-- DROP SERVER IF EXISTS db06_public CASCADE;
CREATE SERVER db06_public FOREIGN DATA WRAPPER postgres_fdw OPTIONS (
    host 'db06-postgres',
    dbname 'db06.potpracy.com.br'
);

CREATE USER MAPPING FOR CURRENT_USER SERVER db06_public OPTIONS (user 'postgres', password 'secret');

IMPORT FOREIGN SCHEMA public FROM SERVER db06_public INTO db06_public;

-- DB07
-- create schema db07_public
CREATE SCHEMA db07_public;
-- DROP SERVER IF EXISTS db07_public CASCADE;
CREATE SERVER db07_public FOREIGN DATA WRAPPER postgres_fdw OPTIONS (
    host 'db07-postgres',
    dbname 'db07.potpracy.com.br'
);

CREATE USER MAPPING FOR CURRENT_USER SERVER db07_public OPTIONS (user 'postgres', password 'secret');

IMPORT FOREIGN SCHEMA public FROM SERVER db07_public INTO db07_public;

-- DB08
-- create schema db08_public
CREATE SCHEMA db08_public;
-- DROP SERVER IF EXISTS db08_public CASCADE;
CREATE SERVER db08_public FOREIGN DATA WRAPPER postgres_fdw OPTIONS (
    host 'db08-postgres',
    dbname 'db08.potpracy.com.br'
);

CREATE USER MAPPING FOR CURRENT_USER SERVER db08_public OPTIONS (user 'postgres', password 'secret');

IMPORT FOREIGN SCHEMA public FROM SERVER db08_public INTO db08_public;  

-- DB09
-- create schema db09_public
CREATE SCHEMA db09_public;
-- DROP SERVER IF EXISTS db09_public CASCADE;
CREATE SERVER db09_public FOREIGN DATA WRAPPER postgres_fdw OPTIONS (
    host 'db09-postgres',
    dbname 'db09.potpracy.com.br'
);

CREATE USER MAPPING FOR CURRENT_USER SERVER db09_public OPTIONS (user 'postgres', password 'secret');

IMPORT FOREIGN SCHEMA public FROM SERVER db09_public INTO db09_public;

-- DB10
-- create schema db10_public
CREATE SCHEMA db10_public;
-- DROP SERVER IF EXISTS db10_public CASCADE;
CREATE SERVER db10_public FOREIGN DATA WRAPPER postgres_fdw OPTIONS (
    host 'db10-postgres',
    dbname 'db10.potpracy.com.br'
);

CREATE USER MAPPING FOR CURRENT_USER SERVER db10_public OPTIONS (user 'postgres', password 'secret');

IMPORT FOREIGN SCHEMA public FROM SERVER db10_public INTO db10_public;

-- DB11
-- create schema db11_public
CREATE SCHEMA db11_public;
-- DROP SERVER IF EXISTS db11_public CASCADE;
CREATE SERVER db11_public FOREIGN DATA WRAPPER postgres_fdw OPTIONS (
    host 'db11-postgres',
    dbname 'db11.potpracy.com.br'
);

CREATE USER MAPPING FOR CURRENT_USER SERVER db11_public OPTIONS (user 'postgres', password 'secret');

IMPORT FOREIGN SCHEMA public FROM SERVER db11_public INTO db11_public;

-- DB12
-- create schema db12_public
CREATE SCHEMA db12_public;
-- DROP SERVER IF EXISTS db12_public CASCADE;
CREATE SERVER db12_public FOREIGN DATA WRAPPER postgres_fdw OPTIONS (
    host 'db12-postgres',
    dbname 'db12.potpracy.com.br'
);

CREATE USER MAPPING FOR CURRENT_USER SERVER db12_public OPTIONS (user 'postgres', password 'secret');

IMPORT FOREIGN SCHEMA public FROM SERVER db12_public INTO db12_public;

-- DB13
-- create schema db13_public
CREATE SCHEMA db13_public;
-- DROP SERVER IF EXISTS db13_public CASCADE;
CREATE SERVER db13_public FOREIGN DATA WRAPPER postgres_fdw OPTIONS (
    host 'db13-postgres',
    dbname 'db13.potpracy.com.br'
);

CREATE USER MAPPING FOR CURRENT_USER SERVER db13_public OPTIONS (user 'postgres', password 'secret');

IMPORT FOREIGN SCHEMA public FROM SERVER db13_public INTO db13_public;

-- DB14
-- create schema db14_public
CREATE SCHEMA db14_public;
-- DROP SERVER IF EXISTS db14_public CASCADE;
CREATE SERVER db14_public FOREIGN DATA WRAPPER postgres_fdw OPTIONS (
    host 'db14-postgres',
    dbname 'db14.potpracy.com.br'
);

CREATE USER MAPPING FOR CURRENT_USER SERVER db14_public OPTIONS (user 'postgres', password 'secret');

IMPORT FOREIGN SCHEMA public FROM SERVER db14_public INTO db14_public;  

-- DB15
-- create schema db15_public
CREATE SCHEMA db15_public;
-- DROP SERVER IF EXISTS db15_public CASCADE;
CREATE SERVER db15_public FOREIGN DATA WRAPPER postgres_fdw OPTIONS (
    host 'db15-postgres',
    dbname 'db15.potpracy.com.br'
);

CREATE USER MAPPING FOR CURRENT_USER SERVER db15_public OPTIONS (user 'postgres', password 'secret');

IMPORT FOREIGN SCHEMA public FROM SERVER db15_public INTO db15_public;  
