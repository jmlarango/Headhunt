# BOOTSTRAP — Primer prompt para Claude Code

> Este archivo contiene el prompt exacto que vas a pegar en Claude Code la primera vez.
> Después de la primera ejecución, este archivo deja de ser necesario (puedes borrarlo o dejarlo como referencia histórica).

---

## Pasos previos a abrir Claude Code

1. Confirma que en `C:\Users\juanl\Documents\Claude-projects\Headhunter\` ya existen:
   - `CLAUDE.md` (este sistema te lo entregó).
   - `perfil-psicologico.md` (este sistema te lo entregó).
   - `perfil.md` (tu archivo original — déjalo en la raíz por ahora).
   - `confrontacion.md` (tu archivo original — déjalo en la raíz por ahora).
   - `Documentos Base/` (con tu contenido confidencial).
   - `NotebookLM/` (con tus PDFs).

2. Abre terminal en esa carpeta.
3. Ejecuta: `claude`
4. Pega el prompt de abajo.

---

## Prompt de inicialización (pégalo tal cual)

```
Estás iniciando el sistema Headhunter. Lee primero `CLAUDE.md` para entender la arquitectura completa, luego ejecuta el siguiente bootstrap:

1. Crea la carpeta `Perfil/` si no existe. Mueve los siguientes archivos de la raíz a `Perfil/`:
   - `perfil-psicologico.md`
   - `perfil.md`
   - `confrontacion.md`

2. Crea esta estructura de carpetas si no existe:
   - `sessions/`
   - `sessions/_archive/`
   - `tracking/`
   - `coaching/`

3. Crea los siguientes archivos con las plantillas que aparecen al final de este prompt:
   - `Perfil/Aprendizajes.md`
   - `tracking/vacantes.md`
   - `tracking/maestrias.md`
   - `tracking/becas.md`
   - `tracking/coaching.md`
   - `coaching/esquema-metodologico.md`
   - `coaching/promocion.md`
   - `.gitignore`

4. Verifica que `Documentos Base/` y `NotebookLM/` existan. Lista los archivos que ves en cada una (no los abras, solo nómbralos) para confirmar que tienes acceso de lectura.

5. NO toques `Documentos Base/` ni `NotebookLM/`. Solo lectura.

6. Cuando termines, repórtame:
   - Carpetas creadas vs. ya existentes.
   - Archivos creados.
   - Lista de Documentos Base detectados.
   - Lista de NotebookLM detectados.
   - Cualquier cosa que falte o se vea rara.

No me cuentes lo que vas a hacer. Hazlo y reporta. Si algo te bloquea, dilo en una línea.

---

PLANTILLAS para los archivos:

### `Perfil/Aprendizajes.md`
```
# Aprendizajes — Coach de vida

> Insights que el Coach-Desarrollo registra después de cada sesión de trabajo sobre el método de coaching.
> El Director lo consulta para no repetir terreno.

## Formato de cada entrada

### YYYY-MM-DD — [tema breve]
- **Contexto:** qué se estaba trabajando.
- **Insight:** lo que se aprendió.
- **Implicación metodológica:** qué cambia en el método de coaching.
- **Vínculos:** [[sesión-relacionada]]

---

*Aún no hay aprendizajes registrados.*
```

### `tracking/vacantes.md`
```
# Tracking — Vacantes (Empleo Economista)

| Fecha | Cargo | Organización | Alias email | Estado | Próximo paso | Plazo |
|---|---|---|---|---|---|---|

## Estados posibles
Identificada · En análisis · Preparando · Auditando · Enviada · En proceso · Entrevista · Resultado · Descartada
```

### `tracking/maestrias.md`
```
# Tracking — Maestrías y posgrados

| Programa | Universidad | País | Plazo aplicación | Financiamiento | Alias email | Estado | Próximo paso |
|---|---|---|---|---|---|---|---|

## Estados posibles
Identificada · En análisis · Preparando · Auditando · Enviada · En proceso · Admitido · Rechazado · Descartada
```

### `tracking/becas.md`
```
# Tracking — Becas y cursos

| Beca/Curso | Entidad | Tipo | Plazo | Alias email | Estado | Próximo paso |
|---|---|---|---|---|---|---|

## Tipo
Beca larga · Beca corta · Curso certificación · Diplomado · Workshop

## Estados posibles
Identificada · En análisis · Preparando · Auditando · Enviada · En proceso · Resultado · Descartada
```

### `tracking/coaching.md`
```
# Tracking — Coaching (negocio)

## Personas en proceso de captación

| Fecha contacto | Nombre | Canal | Etapa | Próximo paso |
|---|---|---|---|---|

## Sesiones realizadas

| Fecha | Cliente | Sesión # | Tema | Tarifa | Pago confirmado |
|---|---|---|---|---|---|

## Métricas

- Personas contactadas mes:
- Conversión a sesión:
- Sesiones realizadas mes:
- Ingreso mes:
```

### `coaching/esquema-metodologico.md`
```
# Esquema metodológico — Coaching de propósito

> Documento vivo. El Coach-Desarrollo lo actualiza con cada iteración.

## Marco integrador
- Jungiano (sombra, individuación)
- Gestalt (presencia, contacto, integración)
- Sistémico (constelaciones, lealtades invisibles)
- NLP / Hipnosis ericksoniana (lenguaje, estados)
- Cosmovisión indígena (chakana, medicina náhuatl)

## Estructura de sesión propuesta

*Pendiente — primer trabajo del Coach-Desarrollo.*

## Tipos de proceso ofrecidos

*Pendiente.*

## Duración y frecuencia

*Pendiente.*

## Tarifas

*Pendiente.*
```

### `coaching/promocion.md`
```
# Estrategia de promoción — Coaching

> Documento vivo. El Coach-Promoción lo actualiza.

## Principio rector
J no quiere salir mucho en redes. Toda la estrategia respeta esto.

## Canales priorizados

*Pendiente — primer trabajo del Coach-Promoción.*

## Contenidos propuestos

*Pendiente.*

## Métodos de pago

*Pendiente.*

## Mecanismos de captación

*Pendiente.*
```

### `.gitignore`
```
# Headhunter — exclusiones de privacidad

# Documentos confidenciales
Documentos Base/
NotebookLM/

# Sesiones (privadas, contienen reflexiones personales)
sessions/

# Perfil completo (privado)
Perfil/

# Trackers (datos personales y datos sensibles de terceros)
tracking/

# Variables de entorno
.env
.env.local

# Archivos de sistema
.DS_Store
Thumbs.db
desktop.ini
```
```

---

## Después del bootstrap

Cuando Claude Code termine de reportar, prueba con un comando simple para validar:

```
/StatusGlobal
```

Debería decirte que aún no hay aplicaciones, sesiones ni clientes — y proponerte por dónde empezar. Si te da un sermón motivacional, algo está mal con la lectura del perfil.
