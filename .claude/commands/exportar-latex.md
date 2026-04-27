---
description: Convierte la HV a LaTeX para importar en Overleaf. Produce un .tex listo para compilar.
model: claude-sonnet-4-6
---

Fuente: `Documentos Base/HV Generica/cv.md`

Lee el archivo cv.md completo y genera un documento LaTeX con la siguiente estructura.
Guarda el output como `Documentos Base/HV Generica/CV-overleaf.tex`.

**Plantilla LaTeX a usar:**

```latex
\documentclass[11pt, a4paper]{article}

% Paquetes
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage[margin=2cm]{geometry}
\usepackage{hyperref}
\usepackage{enumitem}
\usepackage{titlesec}
\usepackage{parskip}
\usepackage{xcolor}

% Colores
\definecolor{accent}{RGB}{30, 80, 140}

% Formato de secciones
\titleformat{\section}{\large\bfseries\color{accent}}{}{0em}{}[\titlerule]
\titleformat{\subsection}{\normalsize\bfseries}{}{0em}{}

% Sin numeración de páginas
\pagestyle{empty}

\begin{document}

% HEADER
{\LARGE\bfseries Juan Manuel López Arango}\\[4pt]
{\small Bogotá, D.C., Colombia \textbar\ 317 402 7328 \textbar\
\href{mailto:jm.lopezarango@gmail.com}{jm.lopezarango@gmail.com}\\
\href{https://www.linkedin.com/in/jmlopez-systemsthink/}{linkedin.com/in/jmlopez-systemsthink} \textbar\
\href{https://github.com/jmlarango}{github.com/jmlarango}}

\vspace{8pt}
\hrule
\vspace{8pt}

% PERFIL
\section*{Perfil profesional}
[perfil del cv.md]

% EXPERIENCIA
\section*{Experiencia profesional}

\subsection*{[Empresa] \hfill [Fechas]}
\textit{[Descripción empresa]}\\
\textbf{[Cargo]}
\begin{itemize}[noitemsep, topsep=2pt, leftmargin=*]
  \item [bullet 1]
  \item [bullet 2]
\end{itemize}

[repetir para cada experiencia]

% EDUCACIÓN
\section*{Formación académica}
[educación]

% CERTIFICACIONES
\section*{Formación complementaria}
[certificaciones en lista compacta]

% PUBLICACIONES
\section*{Publicaciones}
[publicaciones]

% CONFERENCIAS
\section*{Conferencias}
[conferencias]

% HABILIDADES
\section*{Herramientas y habilidades}
[skills organizados por categoría]

% IDIOMAS
\section*{Idiomas}
Español (nativo) \textbar\ Inglés (avanzado — B2/C1)

\vspace{12pt}
{\tiny Desarrollado con asistencia de Claude Code (Anthropic) | Optimizado para ATS e IA}

\end{document}
```

**Instrucciones para Overleaf:**
1. Ir a overleaf.com → New Project → Upload Project
2. Subir el archivo `CV-overleaf.tex`
3. Compilar con XeLaTeX (Settings → Compiler → XeLaTeX)
4. Si hay errores de fuentes, cambiar a pdfLaTeX
5. Descargar el PDF compilado

**Nota:** El .tex se puede editar directamente en Overleaf para ajustes finos de diseño.
