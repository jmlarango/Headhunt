#!/bin/bash
# Hook: Stop — Muestra un resumen breve al finalizar la sesión.

echo ""
echo "─────────────────────────────────────────"
echo "  Headhunter — Sesión finalizada"
echo "─────────────────────────────────────────"
echo ""

# Contar outputs generados hoy
TODAY=$(date +%Y-%m-%d)
OUTPUTS_TODAY=$(find "Outputs/" -newer "CLAUDE.md" -type f 2>/dev/null | wc -l)
SESSIONS_TODAY=$(find "sessions/" -name "${TODAY}*.md" 2>/dev/null | wc -l)

if [ "$OUTPUTS_TODAY" -gt 0 ]; then
  echo "  Outputs generados esta sesión: $OUTPUTS_TODAY"
fi

if [ "$SESSIONS_TODAY" -gt 0 ]; then
  echo "  Sesiones guardadas: $SESSIONS_TODAY"
fi

echo ""
echo "  Próximo paso recomendado:"
echo "  /orientacion-busqueda — para ver el estado del pipeline"
echo ""
