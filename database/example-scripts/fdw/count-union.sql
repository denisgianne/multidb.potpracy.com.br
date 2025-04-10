select
    count(*) as total
FROM
    (
        select
            *
        from
            external_public.pessoas
        UNION ALL
        select
            *
        from
            db01_public.pessoas
        UNION ALL
        select
            *
        from
            db02_public.pessoas
        UNION ALL
        select
            *
        from
            db03_public.pessoas
        UNION ALL
        select
            *
        from
            db04_public.pessoas
        UNION ALL
        select
            *
        from
            db05_public.pessoas
        UNION ALL
        select
            *
        from
            db06_public.pessoas
        UNION ALL
        select
            *
        from
            db07_public.pessoas
        UNION ALL
        select
            *
        from
            db08_public.pessoas
        UNION ALL
        select
            *
        from
            db09_public.pessoas
        UNION ALL
        select
            *
        from
            db10_public.pessoas
        UNION ALL
        select
            *
        from
            db11_public.pessoas
        UNION ALL
        select
            *
        from
            db12_public.pessoas
        UNION ALL
        select
            *
        from
            db13_public.pessoas
        UNION ALL
        select
            *
        from
            db14_public.pessoas
        UNION ALL
        select
            *
        from
            db15_public.pessoas
    ) as total;