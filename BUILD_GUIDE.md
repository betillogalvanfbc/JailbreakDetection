# Manual Build Guide - Release 1.0.0

## ⚠️ xcodebuild requiere Xcode completo

El comando `xcodebuild` desde terminal requiere Xcode completo, no solo Command Line Tools.

## 🎯 Opciones para Generar el Release 1.0.0

### Opción 1: Build Manual desde Xcode (Recomendado)

1. **Abrir proyecto:**
   ```bash
   open JailbreakDetector.xcodeproj
   ```

2. **En Xcode:**
   - Product → Archive
   - Espera a que termine el build
   - Window → Organizer
   - Selecciona el archive
   - Click "Distribute App"
   - Selecciona "Ad Hoc" o "Development"
   - Export

3. **El .ipa estará en:**
   - Carpeta que elijas en el export
   - Nombrar: `JailbreakDetector-1.0.0.ipa`

### Opción 2: Usar GitHub Actions (Automático) ⭐

**Pasos:**

```bash
# 1. Agregar archivos pendientes
git add .github/
git add JailbreakDetector/JailbreakDetector/App/PersistentJailbreakOverlay.swift
git add JailbreakDetector/JailbreakDetector/App/JailbreakOverlay.swift
git add RELEASE_GUIDE.md

# 2. Commit
git commit -m "feat: Add jailbreak detection features and release automation

- Add persistent jailbreak overlay modal
- Fix false positives for Xcode debugging
- Add iOS 16/17/18 compatibility
- Setup GitHub Actions for automated releases
- Remove sensitive development team ID"

# 3. Push
git push origin main

# 4. Crear tag para release
git tag v1.0.0

# 5. Push del tag (esto activa GitHub Actions)
git push origin v1.0.0
```

**GitHub Actions automáticamente:**
- ✅ Compilará la app en macOS runner
- ✅ Generará el archive
- ✅ Creará el release en GitHub
- ✅ Subirá los archivos

**Ver progreso:**
- Ve a tu repo → Actions tab
- Verás "iOS Release Build" ejecutándose
- Tarda ~5-10 minutos

### Opción 3: Build Simplificado (Simulador)

Si solo quieres verificar que compila:

```bash
# Abrir Xcode
open JailbreakDetector.xcodeproj

# Luego en Xcode:
# 1. Selecciona un simulador (iPhone 15)
# 2. Product → Build (⌘B)
# 3. Si compila sin errores, está listo
```

## 📋 Preparación Pre-Release Checklist

- [x] Código limpio de información sensible
- [x] .gitignore actualizado
- [x] GitHub Actions configurado
- [x] Archivos overlay agregados
- [ ] Commit realizado
- [ ] Push a GitHub
- [ ] Tag v1.0.0 creado
- [ ] Release generado

## 🚀 Comandos Rápidos para Release

```bash
# Todo en uno - ejecutar desde /Users/fly/Desktop/jailbreak
git add .
git commit -m "feat: Release 1.0.0 - Jailbreak Detector with auto-modal"
git push origin main
git tag v1.0.0
git push origin v1.0.0

# Luego ve a GitHub Actions para ver el build
```

## 📦 Contenido del Release 1.0.0

**Features:**
- ✅ Modal de jailbreak que aparece siempre al abrir la app
- ✅ 8 técnicas de detección (OWASP MSTG compliant)
- ✅ Widget iOS en 3 tamaños
- ✅ Fix de falsos positivos (libViewDebuggerSupport)
- ✅ Compatibilidad iOS 16, 17, 18+
- ✅ Sin información sensible en el código

**Archivos en el release:**
- Source code (zip y tar.gz) - Automático por GitHub
- build-info.txt - Información del build
- JailbreakDetector-1.0.0.xcarchive.zip - Archive de Xcode

## 🎯 Recomendación

**Usa GitHub Actions (Opción 2)** porque:
- ✅ Es automático
- ✅ No requiere Xcode local
- ✅ Build limpio en entorno fresco
- ✅ Crea el release automáticamente
- ✅ Gratis en repos públicos

Simplemente ejecuta los comandos git y deja que GitHub haga el resto.

---

**Versión:** 1.0.0  
**Fecha:** 2026-02-11
