---
description: Push project to GitHub repository https://github.com/server7943/upi-guard.git
---
1. Open a terminal (PowerShell or Command Prompt) and navigate to the project directory:
   ```
   cd "C:\Final Project"
   ```
2. Verify the remote URL is correct (optional):
   ```
   git remote -v
   ```
   If it does not show `https://github.com/server7943/upi-guard.git`, set it:
   ```
   git remote set-url origin https://github.com/server7943/upi-guard.git
   ```
3. Ensure the current branch is `main` (GitHub default):
   ```
   git branch -M main
   ```
4. Stage all files (respecting `.gitignore`):
   ```
   git add .
   ```
5. Commit the changes (use `--allow-empty` to avoid errors if nothing changed):
   ```
   git commit -m "Initial commit of UPI Guard project" --allow-empty
   ```
6. Push to the remote repository:
   ```
   git push -u origin main
   ```
7. If authentication is required, provide your GitHub username and a personal access token (or password if 2‑FA is disabled).

**Troubleshooting**
- *Authentication error*: generate a personal access token on GitHub (Settings → Developer settings → Personal access tokens) and use it as the password.
- *Remote URL mismatch*: run step 2 again with the correct URL.
- *Already up‑to‑date*: the push will report `Everything up‑to‑date` – the code is already on GitHub.

You can also run the provided `push.bat` or `push_to_github.ps1` scripts in the project folder to automate these steps.
