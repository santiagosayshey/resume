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

Computer Science graduate and maintainer of Profilarr, an open-source media automation tool with 3.5M+ downloads and 2,400 stars. Experienced across full-stack web development (SvelteKit, Deno, TypeScript), systems programming, and cybersecurity, with a track record of designing developer tools that scale.

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
    #emph[Profilarr (#link("https://github.com/Dictionarry-Hub")[GitHub], #link("https://dictionarry.dev/")[Website])]

    - Self-hosted media server applications often require complex, interdependent configuration that is tedious to set up by hand and painful to keep consistent across multiple instances. Profilarr brings Terraform-style configuration-as-code practices to application-level configuration by letting users link version-controlled configuration databases, make local adjustments, and sync everything to target applications without losing local changes when upstream updates.

    - Designed an event-sourced data format inspired by CRDTs to solve the core problem of letting multiple parties edit the same data independently without breaking each other. Configuration is stored as a sequence of operations rather than final state — changes to different fields never conflict, and changes to the same field are detected by value guards before they can silently overwrite.

    - Built and architected a 100K+ line SvelteKit, Deno, TypeScript, and SQLite application as the sole engineer. Developed a reusable component library that enforces consistent UI patterns across the app, an interactive onboarding system that walks users through real UI elements instead of static documentation, a background job queue that recovers from crashes and process restarts, an idempotent sync engine that can be safely retried without duplicating work, drift detection that alerts users when their servers diverge from expected configuration, and schema-driven type generation that derives TypeScript interfaces directly from the database so types never fall out of sync.

    - Secured with a defense-in-depth approach built around the assumption that self-hosted web applications may be exposed to the internet. Rather than relying solely on authentication, the architecture removes secrets from the web-accessible surface where possible; API keys are hashed and never stored as plaintext, backup downloads strip credentials before archives reach the browser, and the filesystem remains the only trust boundary for full-fidelity data. Added independent protections for OWASP Top 10 risks, including authentication and rate limiting, sanitized markdown rendering, path traversal prevention, reverse-proxy-aware CSRF handling, and secret exposure controls.

    - Built a CI\/CD pipeline that acts as a release safety net for a production open-source app used across heterogeneous self-hosted environments. Every code change passes build, formatting, lint, Svelte\/TypeScript type checks, unit tests, Semgrep SAST, integration tests against the compiled production binary, and Playwright E2E authentication flows before release. This catches regressions in core logic, security-sensitive paths, auth\/proxy behavior, and browser workflows before they reach users.

    - Grew to 3.5M+ downloads, 50,000+ active users, and 2,400 GitHub stars. Published long-form dev logs and technical deep dives breaking down architecture decisions, data modeling tradeoffs, and domain concepts for a community of 2,000+ members. Handled all user support, coordinated beta releases with community tester signoff, and maintained contribution guidelines.

  ],
)

== Projects

#regular-entry(
  [
    #strong[Synapsis (#link("https://github.com/SynapsisAI")[GitHub])]

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
    #strong[OMesh (#link("https://github.com/santiagosayshey/OMesh")[GitHub])]

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
    #strong[Rogue (#link("https://github.com/santiagosayshey/Rogue")[GitHub])]

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

#strong[Technologies:] SvelteKit, Deno, Docker, Git, Linux, SQLite, Discord.js, FFmpeg

#strong[Practices:] GitOps, Event Sourcing, API Design, Open Source Development

#strong[Interests:] Self-Hosting, Homelabbing, Media Archival, Basketball, Technical Writing
