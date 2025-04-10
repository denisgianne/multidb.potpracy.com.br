-- select count(*) as total
select *
FROM
(
    select 'local' as origem, * from pessoas
        UNION ALL
    select 'external' as origem, * from external_public.pessoas
      UNION ALL
     select 'db01' as origem, * from db01_public.pessoas
      UNION ALL
    select 'db02' as origem, * from db02_public.pessoas
      UNION ALL
    select 'db03' as origem, * from db03_public.pessoas
      UNION ALL
    select 'db04' as origem, * from db04_public.pessoas
      UNION ALL
    select 'db05' as origem, * from db05_public.pessoas
      UNION ALL
    select 'db06' as origem, * from db06_public.pessoas
      UNION ALL
    select 'db07' as origem, * from db07_public.pessoas
      UNION ALL
    select 'db08' as origem, * from db08_public.pessoas
      UNION ALL
    select 'db09' as origem, * from db09_public.pessoas
      UNION ALL
    select 'db10' as origem, * from db10_public.pessoas
      UNION ALL
    select 'db11' as origem, * from db11_public.pessoas
      UNION ALL
    select 'db12' as origem, * from db12_public.pessoas
      UNION ALL
    select 'db13' as origem, * from db13_public.pessoas
      UNION ALL
    select 'db14' as origem, * from db14_public.pessoas
      UNION ALL
    select 'db15' as origem, * from db15_public.pessoas
)
    WHERE nome ilike '%Denis%'
    ORDER BY nome
-- as total;
