@echo off
rem Push the current project to GitHub

rem Ensure we are on the main branch
git branch -M main

rem Stage all files (respecting .gitignore)
git add .

rem Commit changes if there are any
git commit -m "Initial commit of UPI Guard project"

rem Push to remote origin
git push -u origin main

pause
