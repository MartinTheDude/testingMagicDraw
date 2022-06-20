function formatWizard() 


%Read From CSV
commits = readtable('octokit.csv', 'Delimiter', " , ");

%Take out headers, they are actually apart of the dataset
imposter = commits.Properties.VariableDescriptions;

%Concat piece of data that was used as header to table
commits = cell2table([cell(imposter) ; table2cell(commits)]);

%Rename Headers
commits.Properties.VariableNames = [ "FileName", "Commit_ID", "Time/Date", "Commit_Author" ,"File_Author", "Subject" ];

%Write Out
writetable(commits, 'commits.csv');

end
