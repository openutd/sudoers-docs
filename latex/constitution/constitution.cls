%=====================================================================
% constitution.cls
% Provide constitution.cls class
%=====================================================================

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{constitution}[2019/03/06 Basic constitution template]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}[11pt]

\RequirePackage[utf8]{inputenc}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{hyperref}

\hypersetup{%
  colorlinks=true,
  linkcolor=RoyalBlue,
  urlcolor=RoyalBlue,
  citecolor=RoyalBlue,
}

\renewcommand{\labelenumi}{(\arabic{enumi})}
\renewcommand{\labelenumii}{\alph{enumii}}
\renewcommand{\labelenumiii}{\roman{enumiii}}
\renewcommand{\section}{\@startsection{section}{1}{0mm}{-\baselineskip}{0.5\baselineskip}{\normalfont\Large\bf}}
