var n:int;
writeln("enter n: ");
n=read(int);

writeln("enter array elements: ");
var arr:[1..n]int;

for i in 1..n do
    arr[i]=read(int);

var k:int;

for i in 1..(n-1){
    for j in (i+1)..n {
    	if arr[i]>arr[j]{
    		k=arr[i];
    		arr[i]=arr[j];
    		arr[j]=k;
		}
    	}
    }

writeln("sorted array: ");
writeln(arr);
