const myset=new Set();

let value=19;

function fn(value)
{
    let temp=0;
    while(value!=0)
    {
    temp+=(value%10) * (value%10);
    value = Math.floor(value / 10);
    }
    if(temp==1)
        {
            console.log("true");
            return;
        }
    if(myset.has(temp))
    {
        console.log("false");
        return;
    }
    else
    {
        myset.add(temp);
        console.log(temp);
        fn(temp);

    }
}

fn(value);