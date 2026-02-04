# Resume

A version-controlled resume built with [RenderCV](https://github.com/rendercv/rendercv).

## Structure

```
resume/
├── resume.yaml          # Resume content + design settings
└── rendercv_output/     # Generated files
    ├── *.pdf            # Final PDF
    ├── *.html           # HTML version
    ├── *.md             # Markdown version
    └── *.png            # Page previews
```

## Setup

### Requirements

- Python 3.12+
- RenderCV

### Installation

```bash
pip install "rendercv[full]"
```

## Usage

Edit `resume.yaml` and render:

```bash
rendercv render resume.yaml
```

## Theme

Using the [sb2nov](https://github.com/sb2nov/resume) theme - a clean, single-column format popular for software engineering resumes.
