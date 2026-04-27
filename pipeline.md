# Pipeline de trabajo — Headhunter

> Documento de referencia. Muestra el flujo completo de cada proyecto.
> Actualizar cuando cambie el proceso.

---

## Proyecto 1 — Búsqueda de Empleo

```
IDENTIFICAR → ANALIZAR → PREPARAR → AUDITAR → ENVIAR → SEGUIR
```

| Etapa | Quién | Herramienta | Output | Carpeta |
|---|---|---|---|---|
| **1. Identificar** | Buscador-Empleo | Plataformas (We Work Remotely, Remote OK, etc.) | Fila en `tracking/vacantes.md` | — |
| **2. Analizar** | Analista-Empleo | `/analista-cv [vacante]` | Score A-F + recomendación | — |
| **3. Preparar** | Preparador-Empleo | `/analista-cv` → genera HV adaptada | `Outputs/Empleo/HVs/HV-[Org]-[fecha].md` | `Outputs/Empleo/HVs/` |
| **4. Cover Letter** | Preparador-Empleo | `/CoverLET [vacante]` | `Outputs/Empleo/CoverLetters/CL-[Org]-[fecha].md` | `Outputs/Empleo/CoverLetters/` |
| **5. Auditar** | Auditor-Empleo | `/Audit [paquete]` + EnhanceCV | Paquete aprobado o con correcciones | — |
| **6. Exportar PDF** | Sistema | `/exportar-pdf` | `Outputs/Empleo/HVs/HV-[Org]-[fecha].pdf` | `Outputs/Empleo/HVs/` |
| **7. Enviar** | J (acción humana) | Email con alias `jm.lopezarango+[org]@gmail.com` | Estado → "Enviada" en tracker | — |
| **8. Seguir** | Seguimiento-Empleo | `/Status` | Actualización de `tracking/vacantes.md` | — |

### Reglas del pipeline de empleo
- No preparar HV si score < B (4.0). Descartar o re-evaluar.
- El alias de email se define en la etapa de Preparación y no cambia.
- Palladium Group: excluido de todas las etapas.
- EnhanceCV: usar siempre en etapa 5 contra la JD real.

---

## Proyecto 2 — Búsqueda de Estudio

```
IDENTIFICAR → ANALIZAR → PREPARAR → AUDITAR → ENVIAR → SEGUIR
```

| Etapa | Quién | Herramienta | Output | Carpeta |
|---|---|---|---|---|
| **1. Identificar** | Buscador-Estudio | `/MaestriaSearch` o `/BecaSearch` | Fila en `tracking/maestrias.md` o `tracking/becas.md` | — |
| **2. Analizar** | Analista-Estudio | Evaluación fit perfil vs. programa | Score + decisión aplicar/no | — |
| **3. SOP** | Preparador-Estudio | `/SOP [programa]` | `Outputs/Estudio/SOPs/SOP-[Prog]-[fecha].md` | `Outputs/Estudio/SOPs/` |
| **4. HV Académica** | Preparador-Estudio | `/AcadHV [programa]` | `Outputs/Estudio/HVs-Academicas/HV-Acad-[Prog]-[fecha].md` | `Outputs/Estudio/HVs-Academicas/` |
| **5. Auditar** | Auditor-Estudio | `/AuditEstudio [paquete]` | Paquete aprobado | — |
| **6. Exportar** | Sistema | `/exportar-pdf` o `/exportar-latex` | PDF o .tex | `Outputs/Estudio/Paquetes/` |
| **7. Enviar** | J (acción humana) | Portal de la institución | Estado → "Enviada" en tracker | — |
| **8. Seguir** | Seguimiento-Estudio | `/StatusEstudio` | Actualización del tracker | — |

---

## Proyecto 3 — Coaching (negocio)

### Sub-pipeline A: Captación de clientes
```
ESTRATEGIA → CONTENIDO → CONTACTO → PROPUESTA → SESIÓN → SEGUIMIENTO
```

| Etapa | Quién | Herramienta | Output | Carpeta |
|---|---|---|---|---|
| **1. Estrategia** | Coach-Promoción | `/PromoCoach` | Actualización de `coaching/promocion.md` | — |
| **2. Contenido** | Coach-Promoción | `/Contenido [tema]` | `Outputs/Coaching/Contenido/[tema]-[fecha].md` | `Outputs/Coaching/Contenido/` |
| **3. Propuesta** | Coach-Promoción | `/CoachPlan` | `Outputs/Coaching/Propuestas/Propuesta-[cliente]-[fecha].md` | `Outputs/Coaching/Propuestas/` |
| **4. Sesión** | Coach-Desarrollo | Sesión real | Nota en `tracking/coaching.md` | — |
| **5. Aprendizaje** | Coach-Desarrollo | `/Aprendo [insight]` | Entrada en `Perfil/Aprendizajes.md` | — |

### Sub-pipeline B: Desarrollo metodológico
```
REVISIÓN → ACTUALIZACIÓN → DOCUMENTACIÓN
```

| Etapa | Quién | Herramienta | Output | Carpeta |
|---|---|---|---|---|
| **1. Revisión** | Coach-Desarrollo | `/CoachPlan` | Diagnóstico del método actual | — |
| **2. Actualización** | Coach-Desarrollo | Edición de `coaching/esquema-metodologico.md` | Método actualizado | — |
| **3. Herramientas** | Coach-Desarrollo | Creación de materiales | `Outputs/Coaching/Herramientas/[herramienta]-[fecha].md` | `Outputs/Coaching/Herramientas/` |

---

## Convenciones de naming

| Tipo | Formato |
|---|---|
| HV adaptada (ES) | `HV-[Organización]-[YYYY-MM-DD].md` |
| HV adaptada (EN) | `CV-[Organization]-[YYYY-MM-DD].md` |
| Cover letter | `CL-[Organización]-[YYYY-MM-DD].md` |
| SOP | `SOP-[Programa]-[Universidad]-[YYYY-MM-DD].md` |
| HV académica | `HV-Acad-[Programa]-[YYYY-MM-DD].md` |
| Contenido coaching | `[tema-slug]-[YYYY-MM-DD].md` |
| Propuesta coaching | `Propuesta-[cliente]-[YYYY-MM-DD].md` |

---

## Cadencia recomendada

| Frecuencia | Acción |
|---|---|
| Diaria | `/orientacion-busqueda` — estado del pipeline |
| Diaria | Búsqueda en 2-3 plataformas (rotación semanal) |
| Semanal | `/Status` — reporte de empleo |
| Semanal | `/StatusEstudio` — reporte de estudio |
| Mensual | `/estratega-carrera` — análisis de trayectoria |
| Cuando aplique | `/team-decision` — ante decisiones importantes |
| Cuando aplique | `/Sombra` — ante bloqueos reales |
