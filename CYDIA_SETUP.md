# Cydia/Sileo Repository Setup Guide

## 📋 What Was Created

✅ **GitHub Actions Workflow** (`.github/workflows/build-deb.yml`)
- Automatically builds .deb packages on each release
- Uploads .deb to GitHub Releases

✅ **APT Repository** (`repo/` folder)
- `Release` - Repository metadata
- `index.html` - Beautiful landing page
- `sileo-featured.json` - Sileo configuration

✅ **README.md** - Installation instructions for users

---

## 🚀 Setup Steps

### Step 1: Push Everything to GitHub

```bash
# Add all files
git add .
git commit -m "feat: Add Cydia/Sileo repository support"
git push origin main
```

### Step 2: Enable GitHub Pages

1. Go to your repo: `https://github.com/betillogalvanfbc/JailbreakDetection`
2. Click **Settings**
3. Scroll to **Pages** (left sidebar)
4. Under "Source", select: **Deploy from a branch**
5. Select branch: **main**
6. Select folder: **/repo**
7. Click **Save**

### Step 3: Wait ~2 minutes

GitHub Pages will build and deploy your repo to:
```
https://betillogalvanfbc.github.io/JailbreakDetection/
```

### Step 4: Create a Release

```bash
# Tag and push (this triggers .deb build)
git tag v1.0.0
git push origin v1.0.0
```

GitHub Actions will:
1. Build the app
2. Create .deb package
3. Upload to release

---

## 📱 User Installation

Once GitHub Pages is live, users can:

### Method 1: Add Repo to Cydia/Sileo

1. Open Cydia/Sileo/Zebra
2. Add source:
   ```
   https://betillogalvanfbc.github.io/JailbreakDetection/
   ```
3. Search "Jailbreak Detector"
4. Install

### Method 2: Direct Links

These work if clicked from iOS:

- **Cydia:** `cydia://url/https://cydia.saurik.com/api/share#?source=https://betillogalvanfbc.github.io/JailbreakDetection/`
- **Sileo:** `sileo://source/https://betillogalvanfbc.github.io/JailbreakDetection/`
- **Zebra:** `zbra://sources/add/https://betillogalvanfbc.github.io/JailbreakDetection/`

### Method 3: Manual .deb

1. Go to Releases
2. Download `.deb` file
3. Install with Filza or:
   ```bash
   dpkg -i jailbreakdetector_*.deb
   uicache -p /Applications/JailbreakDetector.app
   ```

---

## 🔧 Customization

### Update Maintainer Info

Edit `.github/workflows/build-deb.yml` line 33-34:
```yaml
Maintainer: Your Name <your@email.com>
Author: Your Name <your@email.com>
```

### Change Package ID

If you want a different package identifier, edit:
- `.github/workflows/build-deb.yml` line 30: `Package: com.yourname.app`
- `repo/sileo-featured.json` line 8: Update package ID

### Add Icons

1. Create `repo/icon.png` (512x512)
2. Create `repo/header.png` (1200x300)
3. Commit and push

---

## ✅ Verification

After setup, verify:

1. **GitHub Pages:** Visit `https://betillogalvanfbc.github.io/JailbreakDetection/`
2. **Actions:** Check `https://github.com/betillogalvanfbc/JailbreakDetection/actions`
3. **Release:** Check that .deb was uploaded

---

## 🎯 Next Steps

1. Push files to GitHub
2. Enable GitHub Pages (Settings → Pages)
3. Create v1.0.0 tag
4. Share repo URL with users

Your Cydia/Sileo repository will be live! 🎉
