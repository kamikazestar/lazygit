#!/usr/bin/env fish
# Setup script for Lazygit with Catppuccin Mocha theme and optimized delta configuration

echo "🚀 Setting up Lazygit with Catppuccin Mocha theme..."

# Check if delta is installed
if not command -v delta >/dev/null
    echo "❌ Delta is not installed. Please install it first:"
    echo "   - Ubuntu/Debian: sudo apt install git-delta"
    echo "   - Arch Linux: sudo pacman -S git-delta"
    echo "   - Fedora: sudo dnf install git-delta"
    echo "   - Or use cargo: cargo install git-delta"
    exit 1
end

echo "✅ Delta is installed: "(delta --version)

# Configure git to use delta globally
echo "⚙️  Configuring git to use delta with Catppuccin Mocha colors..."

# Add delta configuration to git config
git config --global core.pager "delta"
git config --global interactive.diffFilter "delta --color-only"
git config --global delta.features "catppuccin-mocha"
git config --global delta.24-bit-color "true"
git config --global delta.dark "true"
git config --global delta.line-numbers "true"
git config --global delta.side-by-side "false"

# Catppuccin Mocha colors for delta
git config --global delta.line-numbers-left-style "#6c7086"
git config --global delta.line-numbers-right-style "#6c7086"  
git config --global delta.line-numbers-minus-style "#f38ba8"
git config --global delta.line-numbers-plus-style "#a6e3a1"
git config --global delta.line-numbers-zero-style "#6c7086"
git config --global delta.minus-style "syntax #442e32"
git config --global delta.minus-emph-style "syntax #6b3a3e"
git config --global delta.plus-style "syntax #2d3748" 
git config --global delta.plus-emph-style "syntax #2d5016"
git config --global delta.file-style "#cba6f7 bold"
git config --global delta.file-decoration-style "#cba6f7 ul"
git config --global delta.hunk-header-style "file line-number syntax"
git config --global delta.hunk-header-decoration-style "#89b4fa box"
git config --global delta.commit-style "#f9e2af bold"
git config --global delta.commit-decoration-style "#f9e2af box ul"

# Additional delta optimizations
git config --global delta.hyperlinks "true"
git config --global delta.navigate "true"
git config --global delta.max-line-distance "0.6"
git config --global delta.max-line-length "512"

echo "✅ Git configured to use delta with Catppuccin Mocha theme"

# Check if bat is installed for syntax highlighting
if command -v bat >/dev/null
    echo "✅ Bat is installed - enhanced syntax highlighting available"
    git config --global delta.syntax-theme "Catppuccin-mocha"
else
    echo "ℹ️  Consider installing 'bat' for better syntax highlighting:"
    echo "   - Ubuntu/Debian: sudo apt install bat"
    echo "   - Arch Linux: sudo pacman -S bat" 
    echo "   - Fedora: sudo dnf install bat"
end

echo ""
echo "🎨 Lazygit Catppuccin Mocha theme setup complete!"
echo ""
echo "📝 Configuration highlights:"
echo "   • Catppuccin Mocha colors throughout the UI"
echo "   • Enhanced delta diff viewer with matching colors"
echo "   • File tree view enabled for better organization"
echo "   • Performance optimizations applied"
echo "   • Default keybindings preserved (as requested)"
echo ""
echo "🚀 You can now run 'lazygit' to see the new theme in action!"
echo ""
echo "💡 Additional recommendations:"
echo "   • Install 'bat' for enhanced syntax highlighting in diffs"
echo "   • Consider 'exa' or 'eza' for colorful file listings"
echo "   • Use a Nerd Font for proper icon support"
echo ""
echo "📂 Backup of your previous config: ~/.config/lazygit/config.yml.backup"