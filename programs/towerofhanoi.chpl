proc towerofhanoi(n:int, A:string, B:string, C:string):void{
    if(n==1){
        writeln("move disk 1 from ",A," to ",B);
    }
    else{
        towerofhanoi(n-1,A,C,B);
        writeln("move disk ",n," from ",A," to ",C);
        towerofhanoi(n-1,C,B,A);
    }
}

var n:int;
writeln("enter number of disks");
n=read(int);
towerofhanoi(n,'A','C','B');
