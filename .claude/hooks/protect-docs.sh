#!/bin/bash
# Hook: PreToolCall — Protege Documentos Base/ y Perfil/ contra escritura accidental.
# Exit 2 = bloquear la acción completamente.
# Exit 0 = permitir.

# Leer el input JSON de stdin
INPUT=$(cat)

# Extraer el path del tool call (Write o Edit)
TOOL_NAME=$(echo "$INPUT" | python3 -c "import sys,json; d=json.load(sys.stdin); print(d.get('tool_name',''))" 2>/dev/null)
FILE_PATH=$(echo "$INPUT" | python3 -c "import sys,json; d=json.load(sys.stdin); p=d.get('tool_input',{}); print(p.get('file_path', p.get('path','')))" 2>/dev/null)

# Solo actuar en Write y Edit
if [[ "$TOOL_NAME" != "Write" && "$TOOL_NAME" != "Edit" ]]; then
  exit 0
fi

# Rutas protegidas (solo lectura)
PROTECTED=(
  "Documentos Base/"
  "NotebookLM/"
)

for PROTECTED_PATH in "${PROTECTED[@]}"; do
  if [[ "$FILE_PATH" == *"$PROTECTED_PATH"* ]]; then
    echo "BLOQUEADO: '$PROTECTED_PATH' es una carpeta de solo lectura (Regla 3 del sistema)."
    echo "Para crear outputs de aplicaciones, usar 'Outputs/' en su lugar."
    echo "Si necesitas actualizar una fuente base, hazlo manualmente fuera del sistema."
    exit 2
  fi
done

exit 0
