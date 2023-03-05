create unlogged table  t(a integer, b numeric, c text, d json);
insert into t values (1, 2.0, 'foo', '{}');
select pg_relation_filepath('t');
select oid FROM pg_database WHERE datname = 'internals';
select size from pg_stat_file('base/13757/16385_vm')