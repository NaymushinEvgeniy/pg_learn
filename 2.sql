select attname, atttypid::regtype,
       case attstorage
when 'p' then 'plain'
when 'e' then 'external'
when 'm' then 'main'
when 'x' then 'extended'
end as storage
FROM pg_attribute
WHERE attrelid = 't'::regclass AND attnum > 0;