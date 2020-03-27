var n:int;
writeln("enter n: ");
n=read(int);

writeln("enter array elements: ");
var arr:[1..n]int;

for i in 1..n do
    arr[i]=read(int);

var cur:int;
var j:int;

for i in 2..n{
    cur =arr[i];
    j=i-1;
    while(j>=1 && arr[j]>cur){
        arr[j+1]=arr[j];
        j=j-1;
    }
    arr[j+1]=cur;
}

writeln("sorted array: ");
writeln(arr);
