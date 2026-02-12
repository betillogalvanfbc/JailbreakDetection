#!/bin/bash

# Release 1.0.0 - Automated Script
# Este script prepara y crea el release 1.0.0

set -e  # Exit on error

echo "🚀 Preparando Release 1.0.0 de Jailbreak Detector"
echo ""

# 1. Agregar todos los archivos nuevos
echo "📦 Agregando archivos..."
git add .github/workflows/release.yml
git add JailbreakDetector/JailbreakDetector/App/PersistentJailbreakOverlay.swift
git add JailbreakDetector/JailbreakDetector/App/JailbreakOverlay.swift
git add RELEASE_GUIDE.md
git add BUILD_GUIDE.md
git add .gitignore
git add JailbreakDetector.xcodeproj/project.pbxproj
git add JailbreakDetector/JailbreakDetector/Detection/JailbreakDetector.swift
git add JailbreakDetector/JailbreakWidget/JailbreakWidget.swift
git add JailbreakDetector/JailbreakDetector/App/JailbreakDetectorApp.swift

echo "✅ Archivos agregados"
echo ""

# 2. Mostrar estado
echo "📋 Estado actual:"
git status --short
echo ""

# 3. Commit
echo "💾 Creando commit..."
git commit -m "feat: Release 1.0.0 - Jailbreak Detector

Features:
- Always-show jailbreak detection modal on app launch
- 8 detection techniques (OWASP MSTG-RESILIENCE-1 compliant)
- iOS Widget support (Small, Medium, Large sizes)
- Fixed false positives for Xcode debugging tools
- iOS 16, 17, and 18+ compatibility
- GitHub Actions automated release workflow

Security:
- Removed hardcoded development team ID
- Enhanced .gitignore configuration
- No sensitive information in repository

Technical:
- Swift 5.9+
- iOS 16.0+ deployment target
- Widget extension with App Groups
- Persistent overlay using ViewModifier"

echo "✅ Commit creado"
echo ""

# 4. Push
echo "⬆️  Pusheando a GitHub..."
git push origin main

echo "✅ Código pusheado"
echo ""

# 5. Crear tag
echo "🏷️  Creando tag v1.0.0..."
git tag -a v1.0.0 -m "Release 1.0.0 - Jailbreak Detector

First stable release with:
- Jailbreak detection modal
- Widget support
- iOS 16-18 compatibility
- Automated CI/CD"

echo "✅ Tag creado"
echo ""

# 6. Push del tag (esto activa GitHub Actions)
echo "⬆️  Pusheando tag (esto activará GitHub Actions)..."
git push origin v1.0.0

echo ""
echo "✅ ¡Release 1.0.0 iniciado!"
echo ""
echo "📊 Próximos pasos:"
echo "1. Ve a: https://github.com/TU_USUARIO/TU_REPO/actions"
echo "2. Verás el workflow 'iOS Release Build' ejecutándose"
echo "3. Espera ~5-10 minutos"
echo "4. El release estará en: https://github.com/TU_USUARIO/TU_REPO/releases"
echo ""
echo "🎉 Done!"
