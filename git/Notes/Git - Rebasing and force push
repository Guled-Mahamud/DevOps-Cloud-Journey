## Git - Rebasing and force push

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (main)
$ git branch RB1

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (main)
$ git checkout RB1
Switched to branch 'RB1'

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (RB1)
$ git add README.md

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (RB1)
$ git commit -m "Update readme"
On branch RB1
nothing to commit, working tree clean

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (RB1)
$ git checkout main
Switched to branch 'main'
Your branch is up to date with 'origin/main'.

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (main)
$ git add README.md

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (main)
$ git commit -m "update README"
[main 017a8a8] update README
 1 file changed, 1 insertion(+)

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (main)
$ git push
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 8 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 298 bytes | 298.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0 (from 0)
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/Guled-Mahamud/Work-.git
   f7ac3f2..017a8a8  main -> main

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (main)
$ git checkout RB1
Switched to branch 'RB1'

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (RB1)
$ git push
fatal: The current branch RB1 has no upstream branch.
To push the current branch and set the remote as upstream, use

    git push --set-upstream origin RB1

To have this happen automatically for branches without a tracking
upstream, see 'push.autoSetupRemote' in 'git help config'.


Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (RB1)
$ git push --set-upstream origin RB1
Total 0 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
remote: 
remote: Create a pull request for 'RB1' on GitHub by visiting:
remote:      https://github.com/Guled-Mahamud/Work-/pull/new/RB1
remote:
To https://github.com/Guled-Mahamud/Work-.git
 * [new branch]      RB1 -> RB1
branch 'RB1' set up to track 'origin/RB1'.

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (RB1)
$ git branch RB2

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (RB1)
$ git branch RB2
fatal: a branch named 'RB2' already exists

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (RB1)
$ git add READ.md
fatal: pathspec 'READ.md' did not match any files

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (RB1)
$ git add README.md

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (RB1)
$ git commit -m "update readme"
On branch RB1
Your branch is up to date with 'origin/RB1'.

nothing to commit, working tree clean

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (RB1)
$ git checkout main
Switched to branch 'main'
Your branch is up to date with 'origin/main'.

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (main)
$ git add README.md

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (main)
$ git commit -m "Update README"
[main 4b6442b] Update README
 1 file changed, 3 insertions(+), 1 deletion(-)

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (main)
$ git push
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 8 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 306 bytes | 306.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0 (from 0)
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/Guled-Mahamud/Work-.git
   017a8a8..4b6442b  main -> main

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (main)
$ git checkout RB2
Switched to branch 'RB2'

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (RB2)
$ git push
fatal: The current branch RB2 has no upstream branch.
To push the current branch and set the remote as upstream, use

    git push --set-upstream origin RB2

To have this happen automatically for branches without a tracking
upstream, see 'push.autoSetupRemote' in 'git help config'.


Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (RB2)
$ git push --set-upstream origin RB2
Total 0 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
remote: 
remote: Create a pull request for 'RB2' on GitHub by visiting:
remote:      https://github.com/Guled-Mahamud/Work-/pull/new/RB2
remote:
To https://github.com/Guled-Mahamud/Work-.git
 * [new branch]      RB2 -> RB2
branch 'RB2' set up to track 'origin/RB2'.

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (RB2)
$ git pull
remote: Enumerating objects: 1, done.
remote: Counting objects: 100% (1/1), done.
remote: Total 1 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
Unpacking objects: 100% (1/1), 894 bytes | 298.00 KiB/s, done.
From https://github.com/Guled-Mahamud/Work-
   f7ac3f2..2f79572  RB1        -> origin/RB1
Already up to date.

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (RB2)
$ git checkout rb2
Switched to branch 'rb2'

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (rb2)
$ git pull
There is no tracking information for the current branch.
Please specify which branch you want to merge with.
See git-pull(1) for details.

    git pull <remote> <branch>

If you wish to set tracking information for this branch you can do so with:

    git branch --set-upstream-to=origin/<branch> rb2


Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (rb2)
$ git branch --set-upstream-to=origin/<branch> rb2
bash: branch: No such file or directory

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (rb2)
$ git push
fatal: The current branch rb2 has no upstream branch.
To push the current branch and set the remote as upstream, use

    git push --set-upstream origin rb2

To have this happen automatically for branches without a tracking
upstream, see 'push.autoSetupRemote' in 'git help config'.


Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (rb2)
$ git rebase main
Successfully rebased and updated refs/heads/rb2.

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (rb2)
$ git add README.md

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (rb2)
$ git rebease --continue
git: 'rebease' is not a git command. See 'git --help'.

The most similar command is
        rebase

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (rb2)
$ git rebase --continue
fatal: no rebase in progress

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (rb2)
$ git push --force-with-lease
fatal: The current branch rb2 has no upstream branch.
To push the current branch and set the remote as upstream, use

    git push --set-upstream origin rb2

To have this happen automatically for branches without a tracking
upstream, see 'push.autoSetupRemote' in 'git help config'.


Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (rb2)
