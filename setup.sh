#!/bin/bash
# ═══════════════════════════════════════════════════════════════
# setup.sh — Portfolio Collection Repository Setup Script
# Moe Kyaw Aung · မိုးကျော်အောင် · Dev-moe-kyawaung
# ═══════════════════════════════════════════════════════════════
# Run this once after cloning to organize files properly.
# Usage: chmod +x setup.sh && ./setup.sh

set -e

echo ""
echo "════════════════════════════════════════════════════════"
echo "  🎨 Moe Kyaw Aung — Portfolio Collection Setup"
echo "  မိုးကျော်အောင် · Senior Android Developer · Microsoft"
echo "════════════════════════════════════════════════════════"
echo ""

# Create theme subdirectories
echo "📁 Creating theme directories..."
mkdir -p v1 v2 v3 v4 v5 v6 v7
echo "  ✅ v1/ v2/ v3/ v4/ v5/ v6/ v7/ created"

# Create asset directories
echo ""
echo "📁 Creating asset directories..."
mkdir -p assets/images assets/favicon assets/og
echo "  ✅ assets/ directories created"

# Create GitHub Actions directory
echo ""
echo "📁 Creating .github/workflows/..."
mkdir -p .github/workflows
echo "  ✅ .github/workflows/ created"

# Rename files (if using downloaded filenames)
echo ""
echo "📋 Checking for portfolio files to rename..."

if [ -f "portfolio-v1-obsidian-brutalist.html" ]; then
  mv portfolio-v1-obsidian-brutalist.html v1/index.html
  echo "  ✅ V1 Obsidian → v1/index.html"
fi

if [ -f "portfolio-v2-aurora-luxury.html" ]; then
  mv portfolio-v2-aurora-luxury.html v2/index.html
  echo "  ✅ V2 Aurora → v2/index.html"
fi

if [ -f "portfolio-v3-cyberpunk-matrix.html" ]; then
  mv portfolio-v3-cyberpunk-matrix.html v3/index.html
  echo "  ✅ V3 Cyberpunk → v3/index.html"
fi

if [ -f "portfolio-v4-japandi-zen.html" ]; then
  mv portfolio-v4-japandi-zen.html v4/index.html
  echo "  ✅ V4 Japandi → v4/index.html"
fi

if [ -f "portfolio-v5-royal-velvet-gold.html" ]; then
  mv portfolio-v5-royal-velvet-gold.html v5/index.html
  echo "  ✅ V5 Royal Gold → v5/index.html"
fi

if [ -f "portfolio-v6-holographic.html" ]; then
  mv portfolio-v6-holographic.html v6/index.html
  echo "  ✅ V6 Holographic → v6/index.html"
fi

if [ -f "portfolio-v7-bagan-midnight.html" ]; then
  mv portfolio-v7-bagan-midnight.html v7/index.html
  echo "  ✅ V7 Bagan → v7/index.html"
fi

if [ -f "moe-kyaw-aung-portfolio-v8.html" ]; then
  cp moe-kyaw-aung-portfolio-v8.html index.html
  echo "  ✅ Main V8 → index.html"
fi

# Move deploy workflow
if [ -f "deploy.yml" ]; then
  mv deploy.yml .github/workflows/deploy.yml
  echo "  ✅ deploy.yml → .github/workflows/deploy.yml"
fi

# Rename docs
[ -f "README_collection.md" ]    && mv README_collection.md README.md     && echo "  ✅ README.md ready"
[ -f "CHANGELOG_collection.md" ] && mv CHANGELOG_collection.md CHANGELOG.md && echo "  ✅ CHANGELOG.md ready"
[ -f "CONTRIBUTING_collection.md" ] && mv CONTRIBUTING_collection.md CONTRIBUTING.md && echo "  ✅ CONTRIBUTING.md ready"
[ -f "LICENSE_collection" ]      && mv LICENSE_collection LICENSE         && echo "  ✅ LICENSE ready"
[ -f "SECURITY.md" ]             && echo "  ✅ SECURITY.md ready"
[ -f "gitignore_collection" ]    && mv gitignore_collection .gitignore     && echo "  ✅ .gitignore ready"

echo ""
echo "════════════════════════════════════════════════════════"
echo "  ✅ Setup complete! Repository structure:"
echo "════════════════════════════════════════════════════════"
echo ""
find . -name "*.html" -not -path "*/node_modules/*" | sort | while read f; do
  echo "  📄 $f"
done
echo ""
echo "  Next steps:"
echo "  1. git init"
echo "  2. git add ."
echo '  3. git commit -m "feat: Premium Portfolio Collection — 7 themes"'
echo "  4. git branch -M main"
echo "  5. git remote add origin https://github.com/Dev-moe-kyawaung/Moe-Kyaw-Aung-Portfolio-V-8.git"
echo "  6. git push -u origin main"
echo "  7. Enable GitHub Pages: Settings → Pages → main branch"
echo ""
echo "  🌐 Your live URL will be:"
echo "  https://dev-moe-kyawaung.github.io/Moe-Kyaw-Aung-Portfolio-V-8/"
echo ""
echo "  မိုးကျော်အောင် · Moe Kyaw Aung · Tachileik, Myanmar 🇲🇲"
echo ""
