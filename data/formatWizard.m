function formatWizard() 

filename = 'octokit.csv';

commits = readtable(filename);

imposter = commits.Properties.VariableDescriptions;

commits = array2table([cell(imposter) ; table2cell(commits)]);

commits.Properties.VariableNames = ["Commit_ID", "Time/Date", "Author", "Subject"];

writetable(commits, filename);

end