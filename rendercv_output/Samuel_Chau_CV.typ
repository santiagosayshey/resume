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
    day: 25,
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

Computer Science graduate and software engineer who builds open-source developer tools. Creator and maintainer of Profilarr, a media-automation tool used by tens of thousands of people, with experience across full-stack web development, systems programming, and cybersecurity.

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

    - Open-source configuration management tool for media server automation. Syncs version-controlled profiles to Radarr\/Sonarr, preserves user customizations across upstream updates, and minimizes merge conflicts. Built with #strong[SvelteKit] and #strong[Deno].

    - Scaled to #strong[3.5M+ downloads], #strong[50,000+ active users], and #strong[2,300+ GitHub stars]. Built active community with #strong[2000+ members] contributing bug reports, feature requests, and documentation.

    - Designed #strong[OSQL] (Operational SQL)—an append-only format where databases are stored as replayable SQL operations rather than state. User customizations stored as discrete operations with value hashes, so changes to different fields never conflict. Enables git-native version control without specialized tooling.

    - Integrated testing system using actual Radarr\/Sonarr C\# parser code extracted as a microservice—validates custom formats against real parsing logic, not approximations. Regex testing via regex101 API with immutable versioned IDs.

    - Ecosystem includes documentation site (Svelte), Discord bot with bidirectional GitHub issue sync (TypeScript), database schema specification, and wiki with technical articles on encoding efficiency and quality metrics.

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
