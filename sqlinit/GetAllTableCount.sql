create proc [dbo].[GetAllTable]
as
declare @t_sql nvarchar(max)
set @t_sql =''
select @t_sql=@t_sql+'select T='''+name+''',N=count(1) from '+'['+name+']'+'  union  '
from  sysobjects where type ='U'
set @t_sql=left(@t_sql,len(@t_sql)-len('union'))
exec ('select * into ##tablecount from ('+@t_sql+') as t')
select T='  '+t+'  ',n from ##tablecount as a where a.n > 0 order by a.n desc
drop table ##tablecount