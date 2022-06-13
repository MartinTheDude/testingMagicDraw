function formatWizard() 

commits = readtable('octokit.csv');

imposter = commits.Properties.VariableDescriptions;

commits = array2table([cell(imposter) ; table2cell(commits)]);

commits.Properties.VariableNames = ["Commit_ID", "Time/Date", "Author", "Subject"];

writematrix(filename, commits);

end