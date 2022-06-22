# testingMagicDraw

This is an experiment to develop how to export Github changes to csv's live
the data folder has all the raw CSV's but the commits in the main folder is the overall output

usesful links 

  - https://git-scm.com/book/en/v2/Git-Basics-Viewing-the-Commit-History
  - https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax
  - https://git-scm.com/docs/pretty-formats
  - https://git-scm.com/docs/git-log 
  - https://explainshell.com/


old matlab 
>          
  format:
    needs: populate
    runs-on: ubuntu-latest
    steps:
     - uses: actions/checkout@v2
     #Ensures that recently updated info is pulled into this enviroment
     - name: pull-request
       uses: repo-sync/pull-request@v2
       with:
            destination_branch: "main"
            github_token: ${{ secrets.GITHUB_TOKEN }}    
     #Self Hosted Matlab Setup=       
     - name: Set up MATLAB
       uses: matlab-actions/setup-matlab@v1
     - name: Run commands
       uses: matlab-actions/run-command@v1
       with:
           #Runs data/formatWizard.m 
            command: addpath('data'), formatWizard 
      #Sets Up and Executees Auto Commit + Push
     - run: git config --local user.email "action@github.com"
     - run: git config --local user.name "GitHub Action"
     - run: git add 'commits.csv'
     - run: git commit -m "data/commits updated with format"
     - run: "git push https://x-access-token:${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git HEAD"
       env:
           GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
      

**Bold**

*Italics*

>To Be or Not To Be


image test 
![this is an image](https://github.com/MartinTheDude/testingMagicDraw/blob/ef181226538cd4403da483274cd6edbee60a2a82/model.png)
