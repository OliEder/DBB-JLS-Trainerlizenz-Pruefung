# BBV JLS Prüfungsvorbereitung

Progressive Web App zur Vorbereitung auf die BBV Jugendleiter Basketball Prüfung mit allen 185 Fragen.

## 🎯 Features

- ✅ Prüfungssimulation (25 zufällige Fragen)
- ⚠️ Intelligentes Problemfragen-Tracking
- 📚 Alle 185 Fragen mit Erklärungen
- 📖 Themenbasiertes Lernen
- 🔀 Zufallsmodus
- 💾 Offline-fähig (PWA)
- 📱 Responsive Design
- 🎨 Fortschrittsanzeige

## 🚀 GitHub Pages Deployment

### Schritt 1: Repository erstellen

1. Gehe zu [github.com](https://github.com) und erstelle ein neues Repository
2. Name z.B.: `bbv-pruefung` oder `basketball-apps`
3. Mache es **Public** (für kostenlose GitHub Pages)
4. **NICHT** "Initialize with README" aktivieren (wir haben schon eine README)

### Schritt 2: Dateien hochladen

#### Option A: Via GitHub Web Interface

1. Klicke auf "uploading an existing file"
2. Ziehe diese Dateien in den Browser:
   - `index.html`
   - `manifest.json`
   - `sw.js`
   - `README.md`
   - `icon.svg`
3. Klicke "Commit changes"

#### Option B: Via Git Command Line

```bash
# In das Verzeichnis mit den Dateien wechseln
cd /pfad/zu/den/dateien

# Git initialisieren
git init

# Dateien hinzufügen
git add index.html manifest.json sw.js README.md icon.svg

# Commit erstellen
git commit -m "Initial commit: BBV Prüfungs-App"

# Remote hinzufügen (ersetze USERNAME und REPO-NAME)
git remote add origin https://github.com/USERNAME/REPO-NAME.git

# Branch umbenennen (falls nötig)
git branch -M main

# Pushen
git push -u origin main
```

### Schritt 3: GitHub Pages aktivieren

1. Gehe zu deinem Repository auf GitHub
2. Klicke auf **Settings** (Zahnrad-Icon)
3. Scrolle links zu **Pages**
4. Unter "Source" wähle:
   - Branch: `main`
   - Folder: `/ (root)`
5. Klicke **Save**
6. Nach 1-2 Minuten ist deine App verfügbar unter:
   - `https://USERNAME.github.io/REPO-NAME/`

### Schritt 4: Icons erstellen (Optional, aber empfohlen)

Die App verwendet aktuell ein SVG als Platzhalter. Für eine bessere PWA-Erfahrung solltest du echte PNG-Icons erstellen:

#### Icons mit Online-Tools erstellen:

1. Gehe zu [favicon.io](https://favicon.io/favicon-generator/) oder [realfavicongenerator.net](https://realfavicongenerator.net/)
2. Lade das Basketball-Emoji 🏀 hoch oder erstelle ein eigenes Design
3. Generiere Icons in folgenden Größen:
   - `icon-192.png` (192x192)
   - `icon-512.png` (512x512)
4. Lade die Icons in dein Repository hoch (gleiche Ebene wie index.html)

#### Oder mit ImageMagick (falls installiert):

```bash
# SVG zu PNG konvertieren
convert icon.svg -resize 192x192 icon-192.png
convert icon.svg -resize 512x512 icon-512.png
```

## 📱 Als App installieren

Nach dem Deployment können Nutzer die App auf dem Smartphone installieren:

**iOS (Safari):**
1. Öffne die URL
2. Tippe auf das Teilen-Icon
3. "Zum Home-Bildschirm"

**Android (Chrome):**
1. Öffne die URL
2. Menü (3 Punkte)
3. "App installieren" oder "Zum Startbildschirm hinzufügen"

## 🔄 Updates veröffentlichen

Wenn du Änderungen machst:

```bash
git add .
git commit -m "Beschreibung der Änderung"
git push
```

Die Seite wird automatisch nach 1-2 Minuten aktualisiert.

## 📂 Dateistruktur

```
/
├── index.html          # Haupt-App
├── manifest.json       # PWA-Manifest
├── sw.js              # Service Worker (Offline-Modus)
├── icon.svg           # Icon (Platzhalter)
├── icon-192.png       # Icon 192x192 (optional)
├── icon-512.png       # Icon 512x512 (optional)
└── README.md          # Diese Datei
```

## 🔧 Lokale Entwicklung

Öffne einfach `index.html` in einem Browser. Die App funktioniert komplett offline nach der ersten Nutzung.

## 📊 Daten

Alle Lernfortschritte und Problemfragen werden im LocalStorage des Browsers gespeichert. Die Daten bleiben erhalten, auch wenn du die Seite schließt.

## 🎓 Prüfungsinformation

- **Bestanden:** 72% (18/25 Fragen richtig)
- **Gut bestanden:** 88% (22/25 Fragen richtig)
- **Gesamt:** 185 Fragen aus allen Themenbereichen

## 📝 Lizenz

Diese App wurde für private Lernzwecke erstellt. Die Inhalte basieren auf den offiziellen BBV Jugendleiter-Schulungsunterlagen.

## 🤝 Beitragen

Fehler gefunden? Verbesserungsvorschläge? Erstelle ein Issue oder Pull Request!

---

**Viel Erfolg bei der Prüfung! 🍀🏀**
