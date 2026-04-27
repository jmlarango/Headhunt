---
description: Exporta la HV a PDF usando md-to-pdf (ya instalado). Listo en segundos.
model: claude-haiku-4-5-20251001
---

Dependencia: `md-to-pdf` (ya instalado globalmente).
CSS: `Documentos Base/HV Generica/cv-style.css`

**Generar PDF en español:**
```bash
cd "Documentos Base/HV Generica"
md-to-pdf "HV-generica-ES.md" --stylesheet "cv-style.css" --pdf-options '{"format":"A4","margin":{"top":"18mm","bottom":"15mm","left":"20mm","right":"20mm"}}'
```

**Generar PDF en inglés:**
```bash
cd "Documentos Base/HV Generica"
md-to-pdf "CV-generic-EN.md" --stylesheet "cv-style.css" --pdf-options '{"format":"A4","margin":{"top":"18mm","bottom":"15mm","left":"20mm","right":"20mm"}}'
```

**Generar versión adaptada a una vacante específica:**
Primero ejecutar `/analista-cv` para obtener la versión adaptada en markdown,
guardarla como `HV-[organización]-[fecha].md` en `Documentos Base/HV Generica/`,
luego ejecutar:
```bash
cd "Documentos Base/HV Generica"
md-to-pdf "HV-[organización]-[fecha].md" --stylesheet "cv-style.css" --pdf-options '{"format":"A4","margin":{"top":"18mm","bottom":"15mm","left":"20mm","right":"20mm"}}'
```

**Output:** el PDF queda en la misma carpeta que el .md fuente.
No se sube a git (Documentos Base/ está en .gitignore).

**Ajustar diseño:** editar `cv-style.css` para cambiar fuente, colores o márgenes.
Color actual: azul #1e508c para headers. Fuente: Calibri/Arial, 11pt.
