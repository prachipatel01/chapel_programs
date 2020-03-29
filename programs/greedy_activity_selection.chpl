writeln("enter the number of activities");
    var n:int;
    n=read(int);
    var s:[n]int;
    var f:[n]int;
    var activity:[n]int;
    var i=1;

    while(i<n+1)
    {
        writeln("enter the starting time");
        s[i]=read(int);
        writeln("enter the finishing time");
        f[i]=read(int);
        writeln("enter the activity number");
        activity[i]=read(int);
        if(s[i]>=f[i])
        {
            writeln("starting time is greater or equal to finishing time\nenter again");
            i=i-1;
        }
        i=i+1;
    }

    	for i in 1..n
        {
		for j in (i+1)..n
		{
			if(s[i]>s[j])
			{
                s[i]<=>s[j];
				f[i]<=>f[j];
				activity[i]<=>activity[j];
			}
		}

        }

	i=1;
	var count=0;
	var prev=0;
	while(i<n+1)
    	{
        if(s[i]>=prev)
        {
	    if(i!=n)
	    {
		while(f[i]==f[i+1])
            	{
                	i+=1;
            	}
	    }
            writeln("activity number: ",activity[i]);
            count+=1;
            prev=f[i];
        }
        i+=1;
    }
    writeln("number of activities = ",count);

