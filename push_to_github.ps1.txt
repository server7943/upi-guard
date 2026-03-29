# push_to_github.ps1
# -------------------------------------------------
# Push the current project to the remote GitHub repo
# -------------------------------------------------

# Make sure we are in the project folder
Set-Location "C:\Final Project"

Write-Host "`n=== Git remote configuration ==="
git remote -v

Write-Host "`n=== Current branch ==="
git branch

# Ensure the branch is named 'main' (GitHub default)
Write-Host "`n=== Renaming branch to 'main' (if needed) ==="
git branch -M main

Write-Host "`n=== Staging all files (respecting .gitignore) ==="
git add .

Write-Host "`n=== Creating a commit (if there are changes) ==="
# The `--allow-empty` flag makes the commit succeed even if nothing changed,
# which is useful for debugging.
git commit -m "Initial commit of UPI Guard project" --allow-empty

Write-Host "`n=== Pushing to GitHub ==="
git push -u origin main

Write-Host "`n=== Done ==="
