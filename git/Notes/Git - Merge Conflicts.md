## Git - Merge Conflicts

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (main)
$ git pull
Already up to date.

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (main)
$ git branch MergeConflict

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (main)
$ git checkout MergeConflict
Switched to branch 'MergeConflict'

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (MergeConflict)
$ git add READ.md
fatal: pathspec 'READ.md' did not match any files

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (MergeConflict)
$ git add README.md

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (MergeConflict)
$ git commit -m "Update README"
[MergeConflict d2d1148] Update README
 1 file changed, 1 insertion(+)

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (MergeConflict)
$ git checkout main
Switched to branch 'main'
Your branch is up to date with 'origin/main'.

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (main)
$ git add README.md

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (main)
$ git commit -m "UPDATE README"
[main 947d1f1] UPDATE README
 1 file changed, 1 insertion(+)

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (main)
$ git push
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 8 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 285 bytes | 285.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0 (from 0)
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/Guled-Mahamud/Work-.git
   558d26e..947d1f1  main -> main

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (main)
$ git checkout MergeConflict
Switched to branch 'MergeConflict'

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (MergeConflict)
$ git push
fatal: The current branch MergeConflict has no upstream branch.
To push the current branch and set the remote as upstream, use

    git push --set-upstream origin MergeConflict

To have this happen automatically for branches without a tracking
upstream, see 'push.autoSetupRemote' in 'git help config'.


Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (MergeConflict)
$ git push --set-upstream origin MergeConflict
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 8 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 299 bytes | 299.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0 (from 0)
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
remote:
remote: Create a pull request for 'MergeConflict' on GitHub by visiting:
remote:      https://github.com/Guled-Mahamud/Work-/pull/new/MergeConflict
remote:
To https://github.com/Guled-Mahamud/Work-.git
 * [new branch]      MergeConflict -> MergeConflict
branch 'MergeConflict' set up to track 'origin/MergeConflict'.

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (MergeConflict)
$ git checkout main
Switched to branch 'main'
Your branch is up to date with 'origin/main'.

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (main)
$ git pull
remote: Enumerating objects: 8, done.
remote: Counting objects: 100% (8/8), done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 4 (delta 1), reused 0 (delta 0), pack-reused 0 (from 0)
Unpacking objects: 100% (4/4), 1.81 KiB | 80.00 KiB/s, done.
From https://github.com/Guled-Mahamud/Work-
   947d1f1..f7ac3f2  main       -> origin/main
Updating 947d1f1..f7ac3f2
Fast-forward
 README.md | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

Guled@DESKTOP-9OO19FU MINGW64 ~/Work--1 (main)