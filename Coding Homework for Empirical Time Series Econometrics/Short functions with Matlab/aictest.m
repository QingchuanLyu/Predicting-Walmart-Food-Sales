p=(1:8);
estMdlResults = cell(numel(p),1); % Preallocation
for j = 1:numel(p)
    Mdl = varm(3,p(j));
    EstMdl = estimate(Mdl,y);
    estMdlResults{j} = summarize(EstMdl);
end