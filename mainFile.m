

T = 10;
C = randn(50,T);

dataP = rand(500, 50)-50;
lbP   = ones(500,1);

dataN = rand(500, 50)+50;
lbN   = zeros(500,1);

data = [dataP ;dataN];
labels = [lbP lbN];
clear Cs;
for j=1:T
    rsj = data*C(:,j);
    rsj = sort(rsj,'ascend');
    ind = randperm(numel(rsj));
    cs.w = C(:,j);
    cs.th = rsj(ind(1));
    Cs(j) = cs;
end


k = 0.01;
v = 0.1*ones(T,1);
[Cn Rn]= reorderStages(data, labels, v, Cs);