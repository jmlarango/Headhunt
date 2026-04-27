---
description: Contexto de dominio para trabajo de búsqueda de empleo y aplicaciones
triggers:
  - vacante
  - aplicación
  - cover letter
  - hoja de vida
  - HV
  - cargo
  - entrevista
  - reclutador
  - job
  - position
---

# Skill: Empleo

## Documentos a cargar para este dominio

Lee SOLO estos archivos — no cargar Perfil/ ni Documentos Base/ completos:

1. `Documentos Base/HV Generica/cv.md` — fuente canónica del CV
2. `tracking/vacantes.md` — estado del pipeline de vacantes
3. `yo/perfil-profesional.md` — criterios de filtro y salario objetivo

Cargar adicionalmente SOLO si la tarea lo requiere:
- `Perfil/perfil-psicologico.md` §1 y §8 — si hay que ajustar tono o hay señales de evasión
- `Perfil/confrontacion.md` — SOLO si el Coach de Sombra es invocado

## Reglas de operación para este dominio

- **Outputs**: guardar en `Outputs/Empleo/HVs/` (HVs adaptadas), `Outputs/Empleo/CoverLetters/` (cartas), `Outputs/Empleo/Reportes/` (informes)
- **Naming**: `HV-[Organización]-[YYYY-MM-DD].md`, `CL-[Organización]-[YYYY-MM-DD].md`
- **Alias email**: siempre proponer `jm.lopezarango+[org]@gmail.com`
- **Score mínimo**: no preparar aplicación con score < B (4.0)
- **Excluidos**: Palladium Group en cualquier convocatoria

## Formato de output de vacante

Al registrar una vacante en `tracking/vacantes.md`:
```
| Fecha | Cargo | Organización | Score | Plataforma | Alias email | Estado | Próximo paso | Plazo |
```
