# LaTeX Resume

A version-controlled LaTeX resume with modular sections.

## Structure

This resume is organized into separate files for easy maintenance:

- `main.tex` - The primary file that imports all sections
- `sections/` - Directory containing separate section files:
  - `education.tex` - Academic background
  - `experience.tex` - Work and professional experience
  - `projects.tex` - Course and personal projects
  - `skills.tex` - Technical and soft skills

## Setup

### Requirements

- LaTeX distribution (TeX Live, MiKTeX, etc.)
- LaTeX packages:
  - fullpage
  - titlesec
  - marvosym
  - color
  - verbatim
  - enumitem
  - hyperref
  - fancyhdr
  - babel
  - tabularx
  - fontawesome5
  - multicol
  - graphicx
  - changepage
  - xcolor

### Compilation

To compile the resume into a PDF:

```bash
pdflatex main.tex
```

## Customization

- Update your personal information in the `main.tex` file
- Modify section content in the corresponding files under `sections/`
- Adjust colors by changing the color definitions in `main.tex`

## PDF Output

The latest compiled PDF version is included in this repository for easy viewing.

## License

Feel free to use and modify this template for your personal use.
