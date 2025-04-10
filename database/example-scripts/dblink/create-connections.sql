
SELECT dblink_connect('external', 'host=external-postgres port=5432 dbname=external.potpracy.com.br user=postgres password=secret');
SELECT dblink_connect('db01', 'host=db01-postgres port=5432 dbname=db01.potpracy.com.br user=postgres password=secret');
SELECT dblink_connect('db02', 'host=db02-postgres port=5432 dbname=db02.potpracy.com.br user=postgres password=secret');
SELECT dblink_connect('db03', 'host=db03-postgres port=5432 dbname=db03.potpracy.com.br user=postgres password=secret');

-- SELECT * FROM dblink('external', 'SELECT * FROM pessoas');