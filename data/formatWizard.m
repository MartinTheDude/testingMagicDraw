function formatWizard() 


%Read From CSV
commits = readtable('octokit.csv');

%Take out headers, they are actually apart of the dataset
imposter = commits.Properties.VariableDescriptions;

%Concat piece of data that was used as header to table
commits = array2table([cell(imposter) ; table2cell(commits)]);

%Rename Headers
commits.Properties.VariableNames = [ "FileName", "Commit_ID", "Time/Date", "Commit_Author" ,"Subject", "File_Author", "1"];
%Write Out
writetable(commits, 'commits.csv');

end
