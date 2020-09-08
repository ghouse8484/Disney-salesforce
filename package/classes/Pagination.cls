public class Pagination
{
private integer totalRecs = 0;
private integer OffsetSize = 0;
private integer LimitSize= 10;
public Pagination()
{
totalRecs = [select count() from account];
system.debug('total records:'+totalRecs);
}
public List<account> getacclist()
{
List<account> acc = Database.Query('SELECT Name, website, AnnualRevenue, description, Type FROM account order by name asc LIMIT :LimitSize OFFSET :OffsetSize ');
System.debug('Values are ' + acc);
return acc;
}
public void FirstPage()
{
OffsetSize = 0;
}
public void previous()
{
OffsetSize = OffsetSize - LimitSize;
}public void next()
{
OffsetSize = OffsetSize + LimitSize;
}public void LastPage()
{
OffsetSize = totalrecs - math.mod(totalRecs,LimitSize);
system.debug('Last page size:'+OffsetSize);
system.debug('totla records size:'+totalrecs);

}
public boolean getprev()
{
if(OffsetSize == 0)
return true;
else
return false;
}
public boolean getnxt()
{
if((OffsetSize + LimitSize) > totalRecs)
return true;
else
return false;
}
}