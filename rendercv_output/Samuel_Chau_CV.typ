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
  colors-name: rgb(0, 0, 0),
  colors-headline: rgb(0, 0, 0),
  colors-connections: rgb(0, 0, 0),
  colors-section-titles: rgb(0, 0, 0),
  colors-links: rgb(0, 0, 0),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "Aptos",
  typography-font-family-name: "Aptos",
  typography-font-family-headline: "Aptos",
  typography-font-family-connections: "Aptos",
  typography-font-family-section-titles: "Aptos",
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
  links-underline: true,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: false,
  header-connections-display-urls-instead-of-usernames: true,
  header-connections-separator: "•",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_full_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.3em,
  sections-space-between-regular-entries: 1.2em,
  entries-date-and-location-width: 6cm,
  entries-side-space: 0.2cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: false,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0cm,
  entries-highlights-bullet:  "◦" ,
  entries-highlights-nested-bullet:  "◦" ,
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
  [Adelaide, SA],
  [#link("mailto:schau22@pm.me", icon: false, if-underline: false, if-color: false)[schau22\@pm.me]],
  [#link("tel:+61-413-867-624", icon: false, if-underline: false, if-color: false)[0413 867 624]],
  [#link("https://linkedin.com/in/samuel-chau-7324a0305", icon: false, if-underline: false, if-color: false)[linkedin.com\/in\/samuel-chau-7324a0305]],
  [#link("https://github.com/santiagosayshey", icon: false, if-underline: false, if-color: false)[github.com\/santiagosayshey]],
)


== Summary

Computer Science graduate and lead maintainer of Profilarr, an open-source configuration-as-code tool for self-hosted media servers (3.5M+ downloads, 2,400 stars). Full-stack web developer with a strong frontend sensibility, seeking frontend or full-stack roles building products people actually like using.

== Education

#education-entry(
  [
    #strong[University of Adelaide]

    #emph[Bachelor] #emph[in] #emph[Computer Science, Major in Cybersecurity]

  ],
  [
    #emph[Adelaide, SA]

    #emph[Feb 2022 – Dec 2025]

  ],
  main-column-second-row: [
    - GPA: #strong[6.4\/7.0] — Achieved 13 High Distinctions

    - Top Results: Databases & Ethical Data (96), Web & Database Computing (95), Algorithm & Data Structure Analysis (93), Software Engineering & Project (92)

  ],
)

== Experience

#regular-entry(
  [
    #strong[Maintainer & Lead Developer]

  ],
  [
    #emph[Apr 2023 – present]

  ],
  main-column-second-row: [
    #emph[#link("https://github.com/Dictionarry-Hub")[Profilarr]]

    #summary[Open-source tool that brings configuration-as-code to self-hosted media servers.]

    - Designed a #strong[CRDT-inspired, event-sourced configuration system] — config is stored as operations rather than final state, so upstream curators and local users can edit independently and merge without conflict; value guards catch same-field edits before they silently overwrite.

    - Architected and solo-built a #strong[100K+ line SvelteKit\/Deno\/TypeScript\/SQLite application] with a fully type-safe data layer generated from the database schema and queried through Kysely.

    - Built a #strong[Terraform-style sync engine] — idempotent, retry-safe, with drift detection — backed by a crash-recoverable job queue.

    - Built a reusable #strong[component library] that leverages semantic CSS tokens to create a consistently styled, themable, and polished design, enabling rapid UI development. Enforced using custom Svelte-AST lint rules that ban raw HTML and hardcoded styles.

    - Designed a #strong[defense-in-depth security model that keeps raw secrets off the web surface entirely]: clients receive presence flags instead of values, API keys are hashed like passwords, and backups are credential-stripped before download. Hardened against OWASP Top 10 (sanitized markdown, CSRF, path-traversal, rate limiting).

    - Built a #strong[CI\/CD release pipeline] running build, lint, type checks, unit + integration tests against the production binary, Semgrep SAST, and Playwright E2E auth flows on every change.

    - Grew to #strong[3.5M+ downloads and 2,400 GitHub stars]; ran all support, beta coordination, and contribution guidelines for a 2,000+ member community.

  ],
)

== Projects

#regular-entry(
  [
    #strong[#link("https://github.com/SynapsisAI")[Synapsis]]

  ],
  [
    #emph[React, Express, LLMs, FFmpeg]

  ],
  main-column-second-row: [
    #summary[AI Research Paper Video Platform]

    - Built full-stack platform using Grobid for paper parsing, LLMs for summarization\/image generation, and FFmpeg for video synthesis.

    - Pitched at #strong[Tech eChallenge] startup competition; ranked #strong[Top 5] out of 50+ teams.

  ],
)

#regular-entry(
  [
    #strong[#link("https://github.com/santiagosayshey/OMesh")[OMesh]]

  ],
  [
    #emph[Python, Docker, WebSockets]

  ],
  main-column-second-row: [
    #summary[Secure Messaging Platform]

    - Built end-to-end encrypted messaging platform using low-level socket programming and custom protocol design.

    - Implemented RSA\/AES-GCM cryptographic pipeline for secure key exchange and message encryption.

    - Deployed multi-server architecture with Docker Compose; real-time communication via WebSockets.

  ],
)

#regular-entry(
  [
    #strong[#link("https://github.com/santiagosayshey/Rogue")[Rogue]]

  ],
  [
    #emph[C++, SFML]

  ],
  main-column-second-row: [
    #summary[Procedural Roguelike Game]

    - Built turn-based roguelike with procedural map generation and entity component system architecture.

    - Implemented design patterns (Factory, Observer, State) for extensible game object behavior.

  ],
)

== Skills

#strong[Languages:] TypeScript, Python, C++, C\#, SQL, HTML\/CSS

#strong[Technologies:] SvelteKit, Deno, Docker, Git, Linux, SQLite, Kysely, Discord.js, FFmpeg

#strong[Practices:] GitOps, Event Sourcing, API Design, Open Source Development

#strong[Interests:] Self-Hosting, Homelabbing, Media Archival, Basketball, Technical Writing
