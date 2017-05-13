# Starting from the scratch one would ideally:

1. `cd` to a suitable directory
2. `mkdir` a new directory, to be used as the root in repo.
3. `git init` to initialize the repo.
4. create some files with command line option, or we could use a text editor.
 - echo "# We will have the nice contents in this file" >> nice_file.md
 - echo "# Here we discuss how to make best use of this repo" >> README.md
5. `git add README.md nice_file.md` to track the changes to the files.
6. `git comit -m "fully committed for the first time"`
7. `git remote add origin <repo_url>`
8. `git push -u origin master` # Hold on, I have a link for what's up with that ["u"](http://stackoverflow.com/questions/5697750/what-exactly-does-the-u-do-git-push-u-origin-master-vs-git-push-origin-ma).

__Note: It took me almost one year to just mind the "u". I could, at least, have noticed earlier. But I didn't, so the pain.__

- After the files have been added by `git add` command, to reset all the files (or to say, don't track any one of em!)
git reset

- After adding the files to the staging area, before the commit, use the following command to unstage/untrack each individual files:
`git reset HEAD "file_name"`
`git reset HEAD "*.ext"` # Where ext is the extension of the files that will be unstaged/unadd. Afterall, patterns are recogized in filename specification.

## Tracking while I'm learing git

1. When you want to rename a file, use

```
git mv old_file_name new_file_name
```
It's better this way because you would'nt have to go through the hassle of adding with option `--all` each of the old_file_name and new_file_name before commiting them.
This `mv` command automatically detects the changes in the file as rename. Great!

Once, I had a file renamed with a general renaming tool (That time, Rstudios's file rename option from the file explorer window) that led me to go through this writeup.

Then in the local repo I had added both the two new_file_name and the old_file_name with

```
git add new_file_name old_file_name
```
But, to the surprise some warning came along suggesting to use `git add --all ...` option instead of the default `--ignore-removal` so that removal of paths from the working
tree will be recorded as well. And this came out right about what I actually wanted to do. Then only, when using

```
git status
```
I was relieved seeing that git had identified the file having been **renamed**.



