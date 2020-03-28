var arr:[1..20]int;
var front=0;
var rear=0;
var x=0;

proc enqueue():void{
    rear=rear+1;
    if(rear>=21){
        writeln("Queue is full");
    }
    else{
        var y:int;
        writeln("enter the number you want to enqueue");
        y=read(int);
        arr[rear]=y;
    }

}

proc dequeue():void{
    if(front>rear || front ==rear){
        writeln("Queue is empty");
    }
    else{
        front=front+1;
    }
}

while(x!=4){
    writeln("enter your choice");
    writeln("1:enqueue");
    writeln("2:dequeue");
    writeln("3:display");
    writeln("4:exit");
    x=read(int);

    if(x==1){
        enqueue();
    }
    else if(x==2){
        dequeue();
    }
    else if(x==3){
        var i:int;
    	writeln("Output");
    	for i in (front+1)..(rear){
    		write(arr[i]," ");
        }
    }
}
