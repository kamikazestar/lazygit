# 🎨 Lazygit Configuration with Catppuccin Mocha Theme

![Made with Lazygit](https://img.shields.io/badge/Made%20with-Lazygit-1F6FEB?logo=git&logoColor=white)
![Enhanced by Delta](https://img.shields.io/badge/Enhanced%20by-Delta-4CAF50?logo=diff&logoColor=white)
![Catppuccin Mocha](https://img.shields.io/badge/Theme-Catppuccin%20Mocha-cba6f7?logo=catppuccin&logoColor=white)
![MIT License](https://img.shields.io/badge/license-MIT-blue.svg)

A production-ready Lazygit configuration featuring the beautiful **Catppuccin Mocha** theme with optimized delta integration and custom file icons. Fully compatible with Lazygit v0.55.1+.

## ✨ Features

- 🎨 **Complete Catppuccin Mocha theme** - Consistent colors throughout the UI
- 🚀 **Performance optimizations** - Faster startup and smoother operation
- 🌳 **Enhanced file tree view** - Better file organization and navigation
- 💎 **Optimized delta integration** - Beautiful, themed diff viewer with proper Catppuccin colors
- 📁 **Custom file icons** - Color-coded file types with Nerd Fonts support
- ⚡ **Default keybindings preserved** - No learning curve for existing users
- ⚙️ **Ready to use** - Pre-configured and optimized for v0.55.1+

## 🖼️ Theme Colors

This configuration uses the full Catppuccin Mocha palette:

- **Active borders**: `#cba6f7` (mauve) - Bold and prominent
- **Inactive borders**: `#6c7086` (overlay1) - Subtle and clean
- **Selected items**: `#313244` (surface0) - Comfortable highlighting
- **Text colors**: `#cdd6f4` (text) - Crisp and readable
- **Options**: `#89b4fa` (blue) - Clear navigation hints
- **Unstaged changes**: `#f38ba8` (red) - Attention-grabbing
- **Search highlights**: `#f9e2af` (yellow) - Easy to spot

## 🚀 Quick Setup

### Prerequisites

Ensure you have these installed:

```fish
# Install Lazygit (choose your package manager)
sudo apt install lazygit          # Debian/Ubuntu
sudo pacman -S lazygit            # Arch Linux
sudo dnf install lazygit          # Fedora
brew install lazygit              # macOS

# Install Delta for enhanced diffs
sudo apt install git-delta        # Debian/Ubuntu
sudo pacman -S git-delta          # Arch Linux
sudo dnf install git-delta        # Fedora
brew install git-delta            # macOS

# Optional: Install bat for enhanced syntax highlighting
sudo apt install bat              # Debian/Ubuntu
sudo pacman -S bat                # Arch Linux
```

### Installation

1. **Backup your existing configuration** (if any):
   ```fish
   mv ~/.config/lazygit/config.yml ~/.config/lazygit/config.yml.backup
   ```

2. **Copy this configuration**:
   ```fish
   # Copy the optimized configuration
   cp config.yml ~/.config/lazygit/config.yml
   ```

3. **Configure delta with Catppuccin Mocha theme**:
   ```fish
   # Set up delta to use Catppuccin Mocha colors
   git config --global core.pager "delta"
   git config --global delta.features "catppuccin-mocha"
   git config --global delta.navigate true
   git config --global interactive.diffFilter "delta --color-only"
   ```

   Or manually add to your `~/.gitconfig`:
   ```toml
   [core]
       pager = delta

   [delta]
       features = catppuccin-mocha
       navigate = true

   [interactive]
       diffFilter = delta --color-only
   ```

4. **Launch Lazygit**:
   ```fish
   lazygit
   ```

### Using Utility Scripts

For convenience, you can use the included scripts:

- **`setup-catppuccin.fish`**: Automatically configures git delta with Catppuccin Mocha theme
  ```fish
  ./setup-catppuccin.fish
  ```

- **`test-config.fish`**: Validates your configuration and checks for common issues
  ```fish
  ./test-config.fish
  ```

> **Note**: This configuration is already optimized and ready to use. No additional setup scripts needed!

## 🎯 What's Optimized

### UI Enhancements
- **File tree view enabled** - Better organization of changed files
- **Rounded borders** - Modern, clean aesthetic
- **Random tips disabled** - Cleaner startup experience
- **Enhanced author colors** - Personalized commit attribution

### Performance Improvements
- **Optimized refresh intervals** - Balanced responsiveness and resource usage
- **Efficient git log commands** - Faster history loading
- **Smart graph rendering** - Only when maximized to save resources
- **Streamlined command logging** - Reduced memory footprint

### Delta Integration
The delta configuration provides:
- **Catppuccin Mocha colors** throughout diffs
- **Enhanced line numbering** with themed colors
- **Optimized hyperlinks** for file navigation
- **Syntax highlighting** with bat integration
- **Performance optimizations** for large diffs

## 🛠️ Customization

### Personal Author Colors
Add your email to get a personalized color in commit logs:

```yaml
authorColors:
  '*': '#b4befe'  # lavender (default)
  'your-email@example.com': '#a6e3a1'  # green
```

### Editor Configuration
The configuration assumes Neovim. To use a different editor:

```yaml
os:
  edit: 'code'  # VS Code
  editAtLine: 'code --goto {{filename}}:{{line}}'
```

### Custom Commands
The configuration includes a Commitizen integration. Add more custom commands:

```yaml
customCommands:
  - key: "z"
    command: "git cz"
    context: "files"
    loadingText: "Opening commitizen commit tool"
    output: terminal

  # Add your own custom commands here
  - key: "ctrl+t"
    command: "git log --oneline -10"
    context: "global"
    loadingText: "Showing recent commits"
    output: "commandOutput"
```

## 📁 Files Structure

```
~/.config/lazygit/
├── config.yml                    # Main optimized configuration
├── README.md                     # This documentation
├── LICENSE                       # MIT License
└── .gitignore                    # Git ignore rules
```

**Utility scripts**:
```
├── setup-catppuccin.fish        # Delta configuration helper script
└── test-config.fish              # Configuration validation script
```

## 🎨 Alternative Diff Tools

While delta is excellent, here are other options you might consider:

1. **[Difftastic](https://github.com/Wilfred/difftastic)** - Structural diff tool
2. **[diff-so-fancy](https://github.com/so-fancy/diff-so-fancy)** - Good default colors
3. **[ydiff](https://github.com/ymattw/ydiff)** - Side-by-side terminal diff

To switch to difftastic, for example:
```yaml
git:
  paging:
    pager: "difft --color=always"
```

## 🐛 Troubleshooting

### Colors not showing correctly
- Ensure your terminal supports 24-bit color
- Try setting `COLORTERM=truecolor` in your shell profile
- Use a modern terminal like Alacritty, kitty, or WezTerm

### Delta not working
- Verify delta is in your PATH: `which delta`
- Check git configuration: `git config --get core.pager`
- Test delta directly: `git log -p | delta`

### Performance issues
- Reduce refresh intervals in the config
- Disable file tree view if you have many files
- Consider excluding large binary files in `.gitignore`

## 🤝 Contributing

This is a personal configuration shared for inspiration. Feel free to:

- Fork and adapt for your own use
- Open issues for questions or suggestions
- Share your own improvements or variations

## 📝 License

MIT License - see [LICENSE](LICENSE) for details.

---
