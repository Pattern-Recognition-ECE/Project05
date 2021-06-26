Tot=768;
[x,c] = ReadDiabetes(Tot);

% αριθμός υγιών
y_counter=1; 
% αριθμός αρρώστων
a_counter=1; 
 
for k=1:Tot
    if c(k)==1
        %πίνακας με τους υγιείς
        y_arr(:,y_counter)=x(:,k);  
        y_counter=y_counter+1;    
        
    else    
        %πίνακας με τους αρρώστους
        a_arr(:,a_counter)=x(:,k);
        a_counter=a_counter+1;
    end
end

[Rc,Rep,w] = HoKa(y_arr,a_arr,0.5,200);
disp("Συντελεστές των γραμμικών συναρτήσεων απόφασης")
disp(w)

error=1-((Rc(1)+Rc(2))/(Rep(1)+Rep(2)));
disp("Σφάλμα του συστήματος ταξινόμησης")
disp(error)



counter=1;
max_rel=0;
for a=1:-0.01:0.1      
    [Rc,Rep,~] = HoKa(y_arr,a_arr,a,100);
    reliability=(Rc(1)+Rc(2))/(Rep(1)+Rep(2));
    if reliability>max_rel
        %μαξ αξιοπιστία
        max_rel=reliability;
    end
    rel_arr(counter)=reliability;
    sintelestis(counter)=a;
    counter=counter+1;
    
end
figure('Name','Αξιοπιστία του γραμμικού συστήματος ταξινόμησης συναρτήσει του συντελεστή εκπαίδευσης','NumberTitle','off')
plot(sintelestis,rel_arr)


[Rc,Rep,w,sf_Hoka,i] = HoKa1(y_arr,a_arr,max_rel,50);
figure('Name','Αριθμός των επαναλήψεων του αλγόριθμου συναρτήσει του συντελεστή εκπαίδευσης','NumberTitle','off')
plot(1:1:50, sf_Hoka)




 