%=====================================================================
% smallposter.cls
% Provide smallposter.cls class
%=====================================================================
\ProvidesClass{smallposter}[2019/02/01 Small advertisement poster]
\NeedsTeXFormat{LaTeX2e}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

\RequirePackage[%
top=2cm,right=3cm,bottom=2cm,left=3cm
]{geometry}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{fontspec}
\RequirePackage{graphicx}
\RequirePackage{pgfpages}
\RequirePackage{tikz}
\RequirePackage{pifont}
\RequirePackage{qrcode}

\pagenumbering{gobble}
\setlength{\parindent}{0pt}
\centering

\newcommand*{\setfontsize}[2]{\fontsize{#1}{#2}\selectfont}
\newcommand*{\image}[2]{\includegraphics[#1]{#2}}
\newcommand*{\overlayimage}[4]
{
  \begin{tikzpicture}[remember picture,overlay]
    \node[#2] at (current page.#1) {\image{#3}{#4}};
  \end{tikzpicture}
}
\newcommand*{\overlaytext}[4]
{
  \begin{tikzpicture}[remember picture,overlay]
    \node[#2] at (current page.#1)
    {\begin{minipage}{#3}#4\end{minipage}};
  \end{tikzpicture}
}
\newcommand*{\overlayqrcode}[4]
{
  \begin{tikzpicture}[remember picture,overlay]
    \node[#2] at (current page.#1) {\qrcode[#3]{#4}};
  \end{tikzpicture}
}
\newcommand*{\disclaimer}[1]
{
  \overlaytext{south}{anchor=south,above=3}{.8\paperwidth}{%
    \color{#1}\setmainfont{Noto Sans}
    \centering\setfontsize{6}{9}
    This flyer is published by OpenUTD, a registered student organization. This flyer is not an official publication of UT Dallas and does not represent the views of the university or its officers.
The University of Texas at Dallas is an Equal Opportunity/Affirmative Action University. Students with disabilities needing special assistance to attend please call (972-883-2946). Texas Relay Operation: 1-800-RELAYTX.
  }
}
