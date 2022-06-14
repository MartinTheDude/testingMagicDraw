function formatWizard() 


%Initialize Filename
filename = 'octokit.csv';

%Read From CSV
commits = readtable(filename);

%Take out headers, they are actually apart of the dataset
imposter = commits.Properties.VariableDescriptions;

%Concat piece of data that was used as header to table
commits = array2table([cell(imposter) ; table2cell(commits)]);

%Rename Headers
commits.Properties.VariableNames = ["Commit_ID", "Time/Date", "Author", "Subject"];

%Write Out
writetable(commits, 'commits.csv');

end