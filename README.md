# PowerShell & VS Code Configuration Setup

This repository contains custom PowerShell profiles and VS Code settings to enhance your development workflow with shortcuts and personalized configurations.

## 📁 Repository Structure

```
WindowsPowerShell/
├── Microsoft.PowerShell_profile.ps1    # PowerShell profile for all PowerShell hosts
├── Microsoft.VSCode_profile.ps1        # PowerShell profile for VS Code integrated terminal
├── setting.json                         # VS Code editor settings
└── README.md                           # This file
```

## 🚀 Setup Instructions

### Method 1: Using Notepad

#### For PowerShell Profile:
1. Open Notepad as Administrator
2. Copy the path: 
3. Go to **File → Open** and paste the path
4. Make your changes and save
5. Restart PowerShell to apply changes

**Quick Access via Terminal:**
```powershell
# Edit main PowerShell profile
code $PROFILE.CurrentUserAllHosts

# Edit VS Code specific profile
code $PROFILE.CurrentUserCurrentHost
```

#### For VS Code Settings:
1. In VS Code, press `Ctrl+Shift+P`
2. Type: "Preferences: Open User Settings (JSON)"
3. The settings file will open directly
4. Edit and save (changes apply immediately)



**Example Usage:**
```powershell
ga .
gcommit Updated README file
gpush
```

## 🎨 VS Code Theme & Extensions

The `setting.json` configures VS Code with:
- **Font**: Fira Code with ligatures
- **Theme**: Oscura Midnight
- **Icons**: Symbols icon theme
- **Product Icons**: Fluent Icons

### Required Extensions:
- **Prettier** (`esbenp.prettier-vscode`) - Code formatter
- **Symbols** - Icon theme pack
- **Fluent Icons** - Product icon theme
- **Oscura Midnight** - Color theme

## 📝 Customization Guide

### Adding New Functions

1. Open the appropriate profile file
2. Add your function using this template:
```powershell
function YourFunctionName {
    your-command @args
}
```
3. Save the file
4. Reload profile: `. $PROFILE` or restart terminal

### Modifying VS Code Settings

1. Open settings: `Ctrl+Shift+P` → "Preferences: Open User Settings (JSON)"
2. Modify any setting
3. Changes apply immediately (no restart needed)

## 🔄 Syncing Profiles Across Machines

### Using Git (Recommended):
```powershell
# In this directory
ginit
ga .
gcommit Initial commit
# Add remote and push
git remote add origin <your-repo-url>
gpush
```

### On New Machine:
1. Clone repository
2. Create symbolic links or copy files to PowerShell directory:
```powershell
# Navigate to PowerShell documents folder
cd $HOME\Documents\WindowsPowerShell

# Copy from cloned repo
copy <cloned-repo-path>\*.ps1 .
```

## 🛠️ Troubleshooting

### Profile Not Loading
```powershell
# Check execution policy
Get-ExecutionPolicy

# If restricted, set to RemoteSigned
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

### Functions Not Working
```powershell
# Reload profile manually
. $PROFILE

# Check if profile exists
Test-Path $PROFILE
```

### VS Code Settings Not Applying
- Ensure JSON syntax is valid
- Check for conflicting workspace settings
- Reload VS Code window: `Ctrl+Shift+P` → "Developer: Reload Window"


