var n:int;
writeln("enter n: ");
n=read(int);

writeln("enter array elements: ");
var arr:[1..n]int;

for i in 1..n do
    arr[i]=read(int);

var data:int;
writeln("enter element to be searched");
data=read(int);

var l=1;
var r=n;
var m:int;
var count=0;

while(l<=r){
    m=(l+r)/2;
    if(data==arr[m])
    {
        writeln("element found at ",m," index");
        count=1;
        l=r+1;
    }
    else if(data>arr[m])
    {
        l=m+1;
    }
    else if(element<arr[m])
    {
        r=m-1;
    }
}

if(count==0)
{
    writeln("element not found");
}
