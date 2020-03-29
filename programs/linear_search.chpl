var n:int;
writeln("enter n: ");
n=read(int);

writeln("enter array elements: ");
var arr:[1..n]int;

for i in 1..n do
    arr[i]=read(int);

var data:int;
var count=0;
writeln("enter element to be searched");
data=read(int);

for i in 1..n{
    if(arr[i]==data){
        writeln("element found at ",i," index");
        count=1;
    }
}
if(count==0){
    writeln("element not found");
}
