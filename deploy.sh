#!/bin/bash

echo "🏀 BBV Prüfungs-App - GitHub Pages Deployment"
echo "=============================================="
echo ""

# Prüfe ob Git installiert ist
if ! command -v git &> /dev/null; then
    echo "❌ Git ist nicht installiert!"
    echo "Bitte installiere Git: https://git-scm.com/downloads"
    exit 1
fi

# Frage nach Repository-Infos
echo "📝 Bitte gib deine GitHub-Informationen ein:"
echo ""
read -p "GitHub Username: " username
read -p "Repository Name (z.B. bbv-pruefung): " reponame

echo ""
echo "🔧 Initialisiere Git Repository..."
git init

echo "➕ Füge Dateien hinzu..."
git add index.html manifest.json sw.js README.md icon.svg .gitignore

echo "💾 Erstelle Commit..."
git commit -m "Initial commit: BBV Prüfungs-App"

echo "🌐 Verbinde mit GitHub..."
git remote add origin "https://github.com/$username/$reponame.git"

echo "📤 Branch umbenennen..."
git branch -M main

echo "🚀 Push zu GitHub..."
git push -u origin main

echo ""
echo "✅ Deployment abgeschlossen!"
echo ""
echo "📱 Deine App wird in 1-2 Minuten verfügbar sein unter:"
echo "   https://$username.github.io/$reponame/"
echo ""
echo "⚙️  Vergiss nicht, GitHub Pages zu aktivieren:"
echo "   1. Gehe zu https://github.com/$username/$reponame/settings/pages"
echo "   2. Wähle Branch 'main' und Folder '/ (root)'"
echo "   3. Klicke 'Save'"
echo ""
echo "🎉 Viel Erfolg bei der Prüfung!"
