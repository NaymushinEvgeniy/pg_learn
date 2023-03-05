create unlogged table  t(a integer, b numeric, c text, d json);
insert into t values (1, 2.0, 'foo', '{}');
select pg_relation_filepath('t');