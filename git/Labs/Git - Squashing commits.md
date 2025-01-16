## Git - Sqauashing commits

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (rb2)
$ git branch SC

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (rb2)
$ git checkout SC
Switched to branch 'SC'

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (SC)
$ git checkout main
Switched to branch 'main'
Your branch is behind 'origin/main' by 2 commits, and can be fast-forwarded.
  (use "git pull" to update your local branch)

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (main)
$ git checkout SC
Switched to branch 'SC'

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (SC)
$ git add README.md

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (SC)
$ git commit -m "Update README"
[SC b7fb064] Update README
 1 file changed, 1 insertion(+), 1 deletion(-)

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (SC)
$ git add README.md

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (SC)
$ git commit -m "adding Inshallah"
[SC ddfb367] adding Inshallah
 1 file changed, 1 insertion(+), 1 deletion(-)

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (SC)
$ git push
fatal: The current branch SC has no upstream branch.
To push the current branch and set the remote as upstream, use

    git push --set-upstream origin SC

To have this happen automatically for branches without a tracking
upstream, see 'push.autoSetupRemote' in 'git help config'.
p ddfb367 adding Inshallah


Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (SC)
$ git push --set-upstream origin SC
Enumerating objects: 8, done.
Counting objects: 100% (8/8), done.
Delta compression using up to 8 threads
Compressing objects: 100% (4/4), done.
Writing objects: 100% (6/6), 522 bytes | 261.00 KiB/s, done.
Total 6 (delta 2), reused 0 (delta 0), pack-reused 0 (from 0)
remote: Resolving deltas: 100% (2/2), completed with 1 local object.
remote:
remote: Create a pull request for 'SC' on GitHub by visiting:
remote:      https://github.com/Guled-Mahamud/Work-/pull/new/SC
remote:
To https://github.com/Guled-Mahamud/Work-.git
 * [new branch]      SC -> SC
branch 'SC' set up to track 'origin/SC'.

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (SC)
$ git rebase -i HEAD~
Successfully rebased and updated refs/heads/SC.

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (SC)
$ git push
Everything up-to-date

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (SC)
$ git push --force-with
Everything up-to-date

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (SC)

$ history

    1  git branch RB1
    2  git checkout RB1
    3  git add README.md
    4  git commit -m "Update readme"
    5  git checkout main
    6  git add README.md
    7  git commit -m "update README"
    8  git push
    9  git checkout RB1
    10  git push
    11  git push --set-upstream origin RB1
    12  git branch RB2
    13  git branch RB2
    14  git add READ.md
    15  git add README.md
    16  git commit -m "update readme"
    17  git checkout main
    18  git add README.md
    19  git commit -m "Update README"
    20  git push
    21  git checkout RB2
    22  git push
    23  git push --set-upstream origin RB2
    24  git pull
    25  git checkout rb2
    26  git pull
    27  git branch --set-upstream-to=origin/<branch> rb2
    28  git push
    29  git rebase main
    30  git add README.md
    31  git rebease --continue
    32  git rebase --continue
    33  git push --force-with-lease
    34  clear
    35  git check main
    36  git pull
    37  git branch SC
    38  git checkout SC
    39  git checkout main
    40  git checkout SC
    41  git add README.md
    42  git commit -m "Update README"
    43  git add README.md
    44  git commit -m "adding Inshallah"
    45  git push
    46  git push --set-upstream origin SC
    47  git rebase -i HEAD~
    48  git push
    49  git push --force-with
    50  history

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (SC)
