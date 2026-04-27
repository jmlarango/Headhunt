---
description: Exporta una HV a PDF usando md-to-pdf (ya instalado). Output va a Outputs/Empleo/HVs/ o la carpeta del proyecto correspondiente.
model: claude-haiku-4-5-20251001
---

Dependencia: `md-to-pdf` (instalado globalmente).
CSS: `Documentos Base/HV Generica/cv-style.css`

**HV genérica ES → PDF:**
```bash
md-to-pdf "Documentos Base/HV Generica/HV-generica-ES.md" \
  --stylesheet "Documentos Base/HV Generica/cv-style.css" \
  --pdf-options '{"format":"A4","margin":{"top":"18mm","bottom":"15mm","left":"20mm","right":"20mm"}}' \
  && mv "Documentos Base/HV Generica/HV-generica-ES.pdf" "Outputs/Empleo/HVs/"
```

**HV genérica EN → PDF:**
```bash
md-to-pdf "Documentos Base/HV Generica/CV-generic-EN.md" \
  --stylesheet "Documentos Base/HV Generica/cv-style.css" \
  --pdf-options '{"format":"A4","margin":{"top":"18mm","bottom":"15mm","left":"20mm","right":"20mm"}}' \
  && mv "Documentos Base/HV Generica/CV-generic-EN.pdf" "Outputs/Empleo/HVs/"
```

**HV adaptada a vacante → PDF:**
```bash
# Reemplazar [archivo] con el nombre del .md adaptado en Outputs/Empleo/HVs/
md-to-pdf "Outputs/Empleo/HVs/[archivo].md" \
  --stylesheet "Documentos Base/HV Generica/cv-style.css" \
  --pdf-options '{"format":"A4","margin":{"top":"18mm","bottom":"15mm","left":"20mm","right":"20mm"}}'
```

**SOP o HV Académica → PDF:**
```bash
md-to-pdf "Outputs/Estudio/SOPs/[archivo].md" \
  --stylesheet "Documentos Base/HV Generica/cv-style.css" \
  --pdf-options '{"format":"A4","margin":{"top":"18mm","bottom":"15mm","left":"20mm","right":"20mm"}}'
```

**Estructura de Outputs:**
- Empleo → `Outputs/Empleo/HVs/` (HVs) · `Outputs/Empleo/CoverLetters/` (cartas)
- Estudio → `Outputs/Estudio/SOPs/` · `Outputs/Estudio/Paquetes/`
- Coaching → `Outputs/Coaching/Propuestas/`

Outputs/ está en .gitignore — los PDFs no se suben a GitHub.
