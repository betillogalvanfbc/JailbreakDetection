# 🛡️ Jailbreak Detector - Cydia/Sileo Repository

Advanced iOS jailbreak detection app with 8 security techniques compliant with OWASP MSTG-RESILIENCE-1.

---

## 📱 Installation (Cydia/Sileo/Zebra)

### Method 1: Add Repository (Recommended)

1. **Open Cydia, Sileo, or Zebra**
2. **Go to Sources/Repos**
3. **Add this repository:**
   ```
   https://betillogalvanfbc.github.io/jailbreakdetection/
   ```
4. **Search for "Jailbreak Detector"**
5. **Install**

### Method 2: Download .deb Manually

1. **Go to [Releases](https://github.com/betillogalvanfbc/jailbreakdetection/releases)**
2. **Download latest `.deb` file**
3. **Install with Filza or terminal:**
   ```bash
   dpkg -i jailbreakdetector_*.deb
   uicache -p /Applications/JailbreakDetector.app
   ```

---

## 🔍 Features

- ✅ **8 Detection Techniques**
  - File system checks
  - URL scheme detection
  - Sandbox integrity
  - Dynamic library injection
  - Fork restrictions
  - Symbolic links
  - System call interception
  - Environment variables

- ✅ **Always-On Detection Modal**
  - Shows security status every time app opens
  - Clear threat count and warnings
  - Secure/Jailbroken visual indicators

- ✅ **iOS Widget Support**
  - Small, Medium, and Large sizes
  - Real-time security status
  - Threat counter

- ✅ **iOS 16, 17, 18+ Compatible**
  - Modern SwiftUI design
  - Optimized for latest iOS versions

---

## 📦 Package Information

- **Package ID:** `com.security.jailbreakdetector`
- **Version:** See [Releases](https://github.com/betillogalvanfbc/jailbreakdetection/releases)
- **Size:** ~2MB
- **Dependencies:** iOS/iPadOS 16.0+
- **Architecture:** arm64 (iPhone 5s and newer)

---

## 🔧 For Developers

### Build from Source

```bash
# Clone repository
git clone https://github.com/betillogalvanfbc/jailbreakdetection.git
cd jailbreakdetection

# Open in Xcode
open JailbreakDetector.xcodeproj

# Build and run
# Product → Run (⌘R)
```

### Create Custom .deb

```bash
# Build app first in Xcode
# Then package:
./scripts/build-deb.sh
```

---

## 📖 Documentation

- **OWASP MSTG Compliance:** MSTG-RESILIENCE-1
- **Detection Techniques:** Based on MITRE ATT&CK Mobile Framework
- **Security Logger:** Tracks all detection attempts
- **Widget Integration:** Uses App Groups for data sharing

---

## 🆘 Support

- **Issues:** [GitHub Issues](https://github.com/betillogalvanfbc/jailbreakdetection/issues)
- **Discussions:** [GitHub Discussions](https://github.com/betillogalvanfbc/jailbreakdetection/discussions)

---

## 📜 License

This project is open source. See [LICENSE](LICENSE) for details.

---

## ⚠️ Disclaimer

This app is for **educational and security research purposes**. It demonstrates jailbreak detection techniques as documented in OWASP Mobile Security Testing Guide.

---

**Repository URL:** `https://betillogalvanfbc.github.io/jailbreakdetection/`

Add this to Cydia/Sileo/Zebra to install and receive updates automatically.
