---
description: Exporta una HV a PDF usando md-to-pdf. Dos estilos disponibles: profesional y académico.
model: claude-haiku-4-5-20251001
---

Dependencia: `md-to-pdf` (instalado globalmente).

## CSS disponibles

| Archivo | Uso |
|---|---|
| `cv-style-profesional.css` | HV genérica ES y EN — estilo moderno, headers azules |
| `cv-style-academica.css` | HV académica ES y EN — estilo Harvard, serif, centrado |
| `cv-style.css` | CSS original (fallback) |

Todos en: `Documentos Base/HV Generica/`

---

## HV genérica ES → PDF (estilo profesional)

```bash
md-to-pdf "Documentos Base/HV Generica/HV-generica-ES.md" \
  --stylesheet "Documentos Base/HV Generica/cv-style-profesional.css" \
  --pdf-options '{"format":"A4","margin":{"top":"18mm","bottom":"15mm","left":"20mm","right":"20mm"}}' \
  && mv "Documentos Base/HV Generica/HV-generica-ES.pdf" "Outputs/Empleo/HVs/"
```

## CV genérico EN → PDF (estilo profesional)

```bash
md-to-pdf "Documentos Base/HV Generica/CV-generic-EN.md" \
  --stylesheet "Documentos Base/HV Generica/cv-style-profesional.css" \
  --pdf-options '{"format":"A4","margin":{"top":"18mm","bottom":"15mm","left":"20mm","right":"20mm"}}' \
  && mv "Documentos Base/HV Generica/CV-generic-EN.pdf" "Outputs/Empleo/HVs/"
```

## HV académica ES → PDF (estilo académico)

```bash
md-to-pdf "Documentos Base/HV Generica/HV-academica-ES.md" \
  --stylesheet "Documentos Base/HV Generica/cv-style-academica.css" \
  --pdf-options '{"format":"A4","margin":{"top":"20mm","bottom":"18mm","left":"22mm","right":"22mm"}}' \
  && mv "Documentos Base/HV Generica/HV-academica-ES.pdf" "Outputs/Estudio/HVs-Academicas/"
```

## CV académico EN → PDF (estilo académico)

```bash
md-to-pdf "Documentos Base/HV Generica/CV-academic-EN.md" \
  --stylesheet "Documentos Base/HV Generica/cv-style-academica.css" \
  --pdf-options '{"format":"A4","margin":{"top":"20mm","bottom":"18mm","left":"22mm","right":"22mm"}}' \
  && mv "Documentos Base/HV Generica/CV-academic-EN.pdf" "Outputs/Estudio/HVs-Academicas/"
```

## HV adaptada a vacante → PDF

```bash
# Reemplazar [archivo] con el nombre del .md adaptado en Outputs/Empleo/HVs/
md-to-pdf "Outputs/Empleo/HVs/[archivo].md" \
  --stylesheet "Documentos Base/HV Generica/cv-style-profesional.css" \
  --pdf-options '{"format":"A4","margin":{"top":"18mm","bottom":"15mm","left":"20mm","right":"20mm"}}'
```

## SOP o HV Académica adaptada → PDF

```bash
md-to-pdf "Outputs/Estudio/SOPs/[archivo].md" \
  --stylesheet "Documentos Base/HV Generica/cv-style-academica.css" \
  --pdf-options '{"format":"A4","margin":{"top":"20mm","bottom":"18mm","left":"22mm","right":"22mm"}}'
```

---

## Estructura de Outputs

- Empleo → `Outputs/Empleo/HVs/` (HVs) · `Outputs/Empleo/CoverLetters/`
- Estudio → `Outputs/Estudio/SOPs/` · `Outputs/Estudio/HVs-Academicas/` · `Outputs/Estudio/Paquetes/`
- Coaching → `Outputs/Coaching/Propuestas/`

Outputs/ está en .gitignore — los PDFs no se suben a GitHub.
