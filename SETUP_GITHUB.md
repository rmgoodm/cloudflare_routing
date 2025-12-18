# Setting Up GitHub Repository

Follow these steps to create your GitHub repository:

## Step 1: Configure Git Identity

Run these commands (replace with your actual name and email):

```powershell
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

Or for this repository only:

```powershell
git config user.name "Your Name"
git config user.email "your.email@example.com"
```

## Step 2: Make Initial Commit

```powershell
git add .
git commit -m "Initial commit"
```

## Step 3: Authenticate with GitHub CLI

```powershell
gh auth login
```

Follow the prompts to authenticate (you can choose browser or token authentication).

## Step 4: Create GitHub Repository

Once authenticated, run:

```powershell
gh repo create cloudflare_routing --public --source=. --remote=origin --push
```

Or for a private repository:

```powershell
gh repo create cloudflare_routing --private --source=. --remote=origin --push
```

## Alternative: Manual Setup

If you prefer to create the repository manually:

1. Go to https://github.com/new
2. Repository name: `cloudflare_routing`
3. Choose Public or Private
4. **DO NOT** initialize with README, .gitignore, or license
5. Click "Create repository"
6. Then run:

```powershell
git remote add origin https://github.com/YOUR_USERNAME/cloudflare_routing.git
git branch -M main
git push -u origin main
```

