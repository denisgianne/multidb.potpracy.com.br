select count(*) as total
FROM (select *
      from external_public.pessoas
      UNION ALL
      select *
      from db01_public.pessoas
      UNION ALL
      select *
      from db02_public.pessoas
      UNION ALL
      select *
      from db03_public.pessoas)