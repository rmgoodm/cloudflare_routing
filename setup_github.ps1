# Setup script for creating GitHub repository
# Run this script after configuring your git identity

Write-Host "Setting up GitHub repository for cloudflare_routing..." -ForegroundColor Green

# Check if git user is configured
$gitName = git config --get user.name
$gitEmail = git config --get user.email

if (-not $gitName -or -not $gitEmail) {
    Write-Host "`nGit user identity not configured. Please run:" -ForegroundColor Yellow
    Write-Host "  git config --global user.name `"Your Name`"" -ForegroundColor Cyan
    Write-Host "  git config --global user.email `"your.email@example.com`"" -ForegroundColor Cyan
    Write-Host "`nOr for this repository only:" -ForegroundColor Yellow
    Write-Host "  git config user.name `"Your Name`"" -ForegroundColor Cyan
    Write-Host "  git config user.email `"your.email@example.com`"" -ForegroundColor Cyan
    exit 1
}

Write-Host "Git user: $gitName <$gitEmail>" -ForegroundColor Green

# Make initial commit if not already done
$commitCount = (git rev-list --count HEAD 2>$null)
if ($commitCount -eq 0) {
    Write-Host "`nMaking initial commit..." -ForegroundColor Yellow
    git add .
    git commit -m "Initial commit"
    Write-Host "Initial commit created." -ForegroundColor Green
}

# Check if GitHub CLI is available
$ghAvailable = Get-Command gh -ErrorAction SilentlyContinue
if ($ghAvailable) {
    Write-Host "`nGitHub CLI detected. Creating repository..." -ForegroundColor Yellow
    gh repo create cloudflare_routing --public --source=. --remote=origin --push
    Write-Host "`nRepository created successfully!" -ForegroundColor Green
    Write-Host "View at: https://github.com/$((gh api user -q .login))/cloudflare_routing" -ForegroundColor Cyan
} else {
    Write-Host "`nGitHub CLI not found. Please follow these steps:" -ForegroundColor Yellow
    Write-Host "`n1. Go to https://github.com/new" -ForegroundColor Cyan
    Write-Host "2. Repository name: cloudflare_routing" -ForegroundColor Cyan
    Write-Host "3. Choose Public or Private" -ForegroundColor Cyan
    Write-Host "4. DO NOT initialize with README, .gitignore, or license" -ForegroundColor Cyan
    Write-Host "5. Click 'Create repository'" -ForegroundColor Cyan
    Write-Host "`n6. Then run these commands:" -ForegroundColor Yellow
    Write-Host "   git remote add origin https://github.com/YOUR_USERNAME/cloudflare_routing.git" -ForegroundColor Cyan
    Write-Host "   git branch -M main" -ForegroundColor Cyan
    Write-Host "   git push -u origin main" -ForegroundColor Cyan
}

