---
description: Prepara y empaqueta archivos para subir como fuentes a NotebookLM. Enriquece el perfil con evidencia documental.
model: claude-haiku-4-5-20251001
---

NotebookLM puede ingerir tus documentos y responder preguntas sobre ellos para enriquecer HVs,
cover letters y el perfil de coaching. Este comando prepara el paquete correcto.

**Paso 1 — Verificar qué hay en NotebookLM/**
Lista los PDFs disponibles en la carpeta `NotebookLM/` y confirma cuáles son fuentes activas.

**Paso 2 — Empaquetar perfil y sesiones para NotebookLM**
Copia los siguientes archivos a `NotebookLM/export-YYYY-MM-DD/`:

Siempre incluir:
- `Documentos Base/HV Generica/cv.md` → como contexto base del perfil
- `Perfil/perfil.md` → automodelo completo
- `Perfil/Aprendizajes.md` → insights de coaching

Incluir opcionalmente según el objetivo:
- `sessions/` → sesiones recientes (últimas 5) si el trabajo es de coaching
- `tracking/vacantes.md` → si el trabajo es de búsqueda de empleo

**Paso 3 — Instrucciones para NotebookLM**
Indicar a J:
1. Ir a notebooklm.google.com
2. Crear o abrir el notebook "Headhunter"
3. Subir los archivos del export como nuevas fuentes
4. Usar los prompts sugeridos abajo para enriquecer el perfil

**Prompts sugeridos para usar en NotebookLM:**

Para enriquecer el perfil:
- "¿Cuáles son mis logros más cuantificables según los documentos?"
- "¿Qué patrones de trabajo se repiten en mis experiencias?"
- "¿Qué habilidades están subrepresentadas en mi HV actual comparadas con lo que hago de verdad?"
- "¿Cómo describirías mi perfil a un reclutador de [tipo de organización]?"

Para preparar cover letters:
- "Con base en mi perfil, redacta un primer párrafo de cover letter para una posición de [cargo] en [organización]"

Para coaching:
- "¿Qué temas se repiten en las sesiones de coaching? ¿Hay un patrón?"
- "¿Qué insight de Aprendizajes.md es más relevante para el tema de [tema]?"

**Fuentes ya disponibles en NotebookLM/:**
(leer la carpeta y listarlas aquí al ejecutar)
