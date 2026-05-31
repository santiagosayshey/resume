// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Samuel Chau",
  title: "Samuel Chau - CV",
  footer: context { [#emph[Samuel Chau -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in May 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "us-letter",
  page-top-margin: 0.7in,
  page-bottom-margin: 0.7in,
  page-left-margin: 0.7in,
  page-right-margin: 0.7in,
  page-show-footer: true,
  page-show-top-note: true,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 79, 144),
  colors-headline: rgb(0, 79, 144),
  colors-connections: rgb(0, 79, 144),
  colors-section-titles: rgb(0, 79, 144),
  colors-links: rgb(0, 79, 144),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "Source Sans 3",
  typography-font-family-name: "Source Sans 3",
  typography-font-family-headline: "Source Sans 3",
  typography-font-family-connections: "Source Sans 3",
  typography-font-family-section-titles: "Source Sans 3",
  typography-font-size-body: 10pt,
  typography-font-size-name: 30pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.4em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: true,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: false,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: false,
  header-connections-separator: "",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_partial_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.3em,
  sections-space-between-regular-entries: 1.2em,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0.2cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: true,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0cm,
  entries-highlights-bullet:  "•" ,
  entries-highlights-nested-bullet:  "•" ,
  entries-highlights-space-left: 0.15cm,
  entries-highlights-space-above: 0cm,
  entries-highlights-space-between-items: 0cm,
  entries-highlights-space-between-bullet-and-text: 0.5em,
  date: datetime(
    year: 2026,
    month: 5,
    day: 31,
  ),
)


= Samuel Chau

#connections(
  [#connection-with-icon("location-dot")[Adelaide, SA]],
  [#link("mailto:schau22@pm.me", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[schau22\@pm.me]]],
  [#link("tel:+61-413-867-624", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[0413 867 624]]],
  [#link("https://linkedin.com/in/samuel-chau-7324a0305", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[samuel-chau-7324a0305]]],
  [#link("https://github.com/santiagosayshey", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[santiagosayshey]]],
)


== Summary

Computer Science graduate and maintainer of Profilarr, an open-source configuration-as-code tool for self-hosted media servers with 3.5M+ downloads and 2,400 stars. Experienced across full-stack web development (SvelteKit, Deno, TypeScript), systems programming, and cybersecurity, with a track record of designing developer tools that scale.

== Education

#education-entry(
  [
    #strong[University of Adelaide], Computer Science, Major in Cybersecurity

    - GPA: #strong[6.4\/7.0] — Achieved 13 High Distinctions

    - Top Results: Databases & Ethical Data (96), Web & Database Computing (95), Algorithm & Data Structure Analysis (93), Software Engineering & Project (92)

  ],
  [
    Adelaide, SA

    Feb 2022 – Dec 2025

  ],
  degree-column: [
    #strong[Bachelor]
  ],
)

== Experience

#regular-entry(
  [
    #strong[#link("https://github.com/Dictionarry-Hub")[Profilarr]], Maintainer & Lead Developer

    #summary[Open-source tool that brings configuration-as-code to self-hosted media servers.]

    - Designed a #strong[CRDT-inspired, event-sourced configuration system] — config is stored as operations rather than final state, so upstream curators and local users can edit independently and merge without conflict; value guards catch same-field edits before they silently overwrite.

    - Architected and built a #strong[100K+ line SvelteKit\/Deno\/TypeScript\/SQLite app solo], including a Terraform-style sync engine (idempotent, retry-safe, with drift detection), a crash-recoverable job queue, and a fully type-safe data layer generated directly from the database schema and queried through Kysely.

    - Built a reusable #strong[component library] that leverages semantic CSS tokens to create a consistently styled, themable, and polished design, enabling rapid UI development. Enforced using custom Svelte-AST lint rules that ban raw HTML and hardcoded styles.

    - Designed a #strong[defense-in-depth security model that keeps raw secrets off the web surface entirely] — authenticated or not: clients receive presence flags rather than values, the app's own API key is hashed like a password (shown once, never retrievable), and backup downloads are credential-stripped before reaching the browser, leaving the filesystem as the only trust boundary for full-fidelity data. Layered with independent OWASP Top 10 protections: sanitized markdown, path-traversal and reverse-proxy-aware CSRF handling, and persistent rate limiting.

    - Built a #strong[CI\/CD release pipeline] running build, lint, type checks, unit + integration tests against the production binary, Semgrep SAST, and Playwright E2E auth flows on every change.

    - Grew to #strong[3.5M+ downloads and 2,400 GitHub stars]; ran all support, beta coordination, and contribution guidelines for a 2,000+ member community.

  ],
  [
    Apr 2023 – present

    

    3 years 3 months

  ],
)

== Projects

#regular-entry(
  [
    #strong[#link("https://github.com/SynapsisAI")[Synapsis]]

    #summary[AI Research Paper Video Platform]

    - Built full-stack platform using Grobid for paper parsing, LLMs for summarization\/image generation, and FFmpeg for video synthesis.

    - Pitched at #strong[Tech eChallenge] startup competition; ranked #strong[Top 5] out of 50+ teams.

  ],
  [
    React, Express, LLMs, FFmpeg

  ],
)

#regular-entry(
  [
    #strong[#link("https://github.com/santiagosayshey/OMesh")[OMesh]]

    #summary[Secure Messaging Platform]

    - Built end-to-end encrypted messaging platform using low-level socket programming and custom protocol design.

    - Implemented RSA\/AES-GCM cryptographic pipeline for secure key exchange and message encryption.

    - Deployed multi-server architecture with Docker Compose; real-time communication via WebSockets.

  ],
  [
    Python, Docker, WebSockets

  ],
)

#regular-entry(
  [
    #strong[#link("https://github.com/santiagosayshey/Rogue")[Rogue]]

    #summary[Procedural Roguelike Game]

    - Built turn-based roguelike with procedural map generation and entity component system architecture.

    - Implemented design patterns (Factory, Observer, State) for extensible game object behavior.

  ],
  [
    C++, SFML

  ],
)

== Skills

#strong[Languages:] TypeScript, Python, C++, C\#, SQL, HTML\/CSS

#strong[Technologies:] SvelteKit, Deno, Docker, Git, Linux, SQLite, Kysely, Discord.js, FFmpeg

#strong[Practices:] GitOps, Event Sourcing, API Design, Open Source Development

#strong[Interests:] Self-Hosting, Homelabbing, Media Archival, Basketball, Technical Writing
