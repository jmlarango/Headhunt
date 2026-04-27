---
description: Exporta la HV a PDF listo para enviar. Requiere Pandoc instalado.
model: claude-haiku-4-5-20251001
---

Fuente: `Documentos Base/HV Generica/HV-generica-ES.md` (por defecto) o el archivo que indique J.

**Paso 1 — Verificar dependencias:**
Ejecuta en terminal:
```
pandoc --version
```
Si no está instalado: instruir a J para instalarlo desde https://pandoc.org/installing.html
Si está instalado: continuar al paso 2.

**Paso 2 — Generar PDF:**
```bash
pandoc "Documentos Base/HV Generica/HV-generica-ES.md" \
  -o "Documentos Base/HV Generica/HV-generica-ES.pdf" \
  --pdf-engine=xelatex \
  -V geometry:margin=2cm \
  -V fontsize=11pt \
  -V mainfont="Calibri" \
  -V linestretch=1.15
```

Si xelatex no está disponible, usar wkhtmltopdf:
```bash
pandoc "Documentos Base/HV Generica/HV-generica-ES.md" \
  -o "Documentos Base/HV Generica/HV-generica-ES.pdf" \
  --pdf-engine=wkhtmltopdf
```

**Paso 3 — Verificar output:**
- Confirmar que el archivo PDF existe en la carpeta
- Indicar a J la ruta exacta del archivo generado
- Recordar que el PDF NO se sube a git (está en Documentos Base/ que es gitignoreado)

**Metadatos PDF a configurar (para ATS):**
Si J usa Adobe Acrobat o PDF-XChange Editor después:
- Title: Juan Manuel López Arango — Hoja de Vida
- Author: Juan Manuel López Arango
- Subject: Economista | Sistemas | Política Pública | IA
- Keywords: [keywords del rol específico — insertar antes de enviar]
- Creator: Claude Code — Anthropic

**Alternativa sin Pandoc:**
1. Abrir el .md en VS Code
2. Instalar extensión "Markdown PDF"
3. Click derecho → "Markdown PDF: Export (pdf)"
