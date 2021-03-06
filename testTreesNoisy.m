function [] = testTreesNoisy()

% Tests the decision trees with the noisy data after training with the
% clean data

    [cleanx, cleany] = loaddata('cleandata_students.txt');
    [noisyx, noisyy] = loaddata('noisydata_students.txt');

    stats = cell(0);

    [confMat] = buildConfusionMatrix(cleanx, cleany, noisyx, noisyy, (1:45))
    [recall, precision] = recall_precision(confMat);
    recall
    precision
    f1 = f1measure(recall, precision)
    
    avgf1 = sum(f1)/6

    stats{1} = confMat;
    stats{2} = recall;
    stats{3} = precision;
    stats{4} = f1;

    save('tests/treeStatsNoisy', 'stats');

end