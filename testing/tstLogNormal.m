function tstLogNormal()
    for k= 1:500 
        z(k)= lognrnd(0,1);
    end
     histfit(z);
end