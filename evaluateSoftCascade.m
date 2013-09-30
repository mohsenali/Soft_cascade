function rs=  evaluateSoftCascade(x, Cs, R)
T = numel(Cs);
dt = 0;
rs = 0;
for t=1:T
    %dt = dt +evaluatefn(Cs(t), x);
    dt = dt + sum(Cs(t).w(:).*x(:));
    if dt < R(t)
       return; 
    end
end
rs = 1;



end