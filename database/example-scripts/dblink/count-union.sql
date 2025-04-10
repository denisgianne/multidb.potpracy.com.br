SELECT COUNT(*) AS total_items FROM (
    SELECT
        id,
        nome,
        email,
        nascido_em,
        mae_nome,
        pai_nome,
        sexo,
        telefone,
        created_at,
        updated_at,
        deleted_at,
        'local' AS origem
    FROM
        pessoas
    UNION ALL
    SELECT
        *
    FROM
        dblink (
            'external',
            'SELECT *, ''external'' AS origem FROM pessoas'
        ) AS pessoas (
            id BIGINT,
            nome VARCHAR(255),
            email VARCHAR(255),
            nascido_em DATE,
            mae_nome VARCHAR(255),
            pai_nome VARCHAR(255),
            sexo VARCHAR(255),
            telefone VARCHAR(255),
            created_at TIMESTAMP,
            updated_at TIMESTAMP,
            deleted_at TIMESTAMP,
            origem VARCHAR(255)
        )
    UNION ALL
    SELECT
        *
    FROM
        dblink (
            'db01',
            'SELECT *, ''db01'' AS origem  FROM pessoas'
        ) AS pessoas (
            id BIGINT,
            nome VARCHAR(255),
            email VARCHAR(255),
            nascido_em DATE,
            mae_nome VARCHAR(255),
            pai_nome VARCHAR(255),
            sexo VARCHAR(255),
            telefone VARCHAR(255),
            created_at TIMESTAMP,
            updated_at TIMESTAMP,
            deleted_at TIMESTAMP,
            origem VARCHAR(255)
        )
    UNION ALL
    SELECT
        *
    FROM
        dblink (
            'db02',
            'SELECT *, ''db02'' AS origem FROM pessoas'
        ) AS pessoas (
            id BIGINT,
            nome VARCHAR(255),
            email VARCHAR(255),
            nascido_em DATE,
            mae_nome VARCHAR(255),
            pai_nome VARCHAR(255),
            sexo VARCHAR(255),
            telefone VARCHAR(255),
            created_at TIMESTAMP,
            updated_at TIMESTAMP,
            deleted_at TIMESTAMP,
            origem VARCHAR(255)
        )
    UNION ALL
    SELECT
        *
    FROM
        dblink (
            'db03',
            'SELECT *, ''db03'' AS origem FROM pessoas'
        ) AS pessoas (
            id BIGINT,
            nome VARCHAR(255),
            email VARCHAR(255),
            nascido_em DATE,
            mae_nome VARCHAR(255),
            pai_nome VARCHAR(255),
            sexo VARCHAR(255),
            telefone VARCHAR(255),
            created_at TIMESTAMP,
            updated_at TIMESTAMP,
            deleted_at TIMESTAMP,
            origem VARCHAR(255)
        )
) AS all_pessoas;