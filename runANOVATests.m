function [] = runANOVATests()

load('data/emotionF1s');

anovaStats = cell(1,6);

for i = 1:6
    anova = cell(1,3);
    [anova{1:3}] = anova1(emotionF1s{i});
    anovaStats{i} = anova;
end

save('data/anovaStats.mat', 'anovaStats');

end

