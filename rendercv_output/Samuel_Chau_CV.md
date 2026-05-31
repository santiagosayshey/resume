# Samuel Chau's CV

- Phone: +61 413 867 624
- Email: [schau22@pm.me](mailto:schau22@pm.me)
- Location: Adelaide, SA
- LinkedIn: [samuel-chau-7324a0305](https://linkedin.com/in/samuel-chau-7324a0305)
- GitHub: [santiagosayshey](https://github.com/santiagosayshey)


# Summary
Computer Science graduate and maintainer of Profilarr, an open-source configuration-as-code tool for self-hosted media servers with 3.5M+ downloads and 2,400 stars. Experienced across full-stack web development (SvelteKit, Deno, TypeScript), systems programming, and cybersecurity, with a track record of designing developer tools that scale.

# Education
## **University of Adelaide**
*Adelaide, SA*


*Feb 2022 – Dec 2025*

*Bachelor* *in* *Computer Science, Major in Cybersecurity*

- GPA: **6.4/7.0** — Achieved 13 High Distinctions

- Top Results: Databases & Ethical Data (96), Web & Database Computing (95), Algorithm & Data Structure Analysis (93), Software Engineering & Project (92)



# Experience
## **Maintainer & Lead Developer**

*Apr 2023 – present*

*[Profilarr](https://github.com/Dictionarry-Hub)*

Open-source tool that brings configuration-as-code to self-hosted media servers.

- Designed a **CRDT-inspired, event-sourced configuration system** — config is stored as operations rather than final state, so upstream curators and local users can edit independently and merge without conflict; value guards catch same-field edits before they silently overwrite.

- Architected and built a **100K+ line SvelteKit/Deno/TypeScript/SQLite app solo**, including a Terraform-style sync engine (idempotent, retry-safe, with drift detection), a crash-recoverable job queue, and a fully type-safe data layer generated directly from the database schema and queried through Kysely.

- Built a reusable **component library** that leverages semantic CSS tokens to create a consistently styled, themable, and polished design, enabling rapid UI development. Enforced using custom Svelte-AST lint rules that ban raw HTML and hardcoded styles.

- Designed a **defense-in-depth security model that keeps raw secrets off the web surface entirely** — authenticated or not: clients receive presence flags rather than values, the app's own API key is hashed like a password (shown once, never retrievable), and backup downloads are credential-stripped before reaching the browser, leaving the filesystem as the only trust boundary for full-fidelity data. Layered with independent OWASP Top 10 protections: sanitized markdown, path-traversal and reverse-proxy-aware CSRF handling, and persistent rate limiting.

- Built a **CI/CD release pipeline** running build, lint, type checks, unit + integration tests against the production binary, Semgrep SAST, and Playwright E2E auth flows on every change.

- Grew to **3.5M+ downloads and 2,400 GitHub stars**; ran all support, beta coordination, and contribution guidelines for a 2,000+ member community.



# Projects
## **[Synapsis](https://github.com/SynapsisAI)**

*React, Express, LLMs, FFmpeg*

AI Research Paper Video Platform

- Built full-stack platform using Grobid for paper parsing, LLMs for summarization/image generation, and FFmpeg for video synthesis.

- Pitched at **Tech eChallenge** startup competition; ranked **Top 5** out of 50+ teams.



## **[OMesh](https://github.com/santiagosayshey/OMesh)**

*Python, Docker, WebSockets*

Secure Messaging Platform

- Built end-to-end encrypted messaging platform using low-level socket programming and custom protocol design.

- Implemented RSA/AES-GCM cryptographic pipeline for secure key exchange and message encryption.

- Deployed multi-server architecture with Docker Compose; real-time communication via WebSockets.



## **[Rogue](https://github.com/santiagosayshey/Rogue)**

*C++, SFML*

Procedural Roguelike Game

- Built turn-based roguelike with procedural map generation and entity component system architecture.

- Implemented design patterns (Factory, Observer, State) for extensible game object behavior.



# Skills
**Languages:** TypeScript, Python, C++, C#, SQL, HTML/CSS

**Technologies:** SvelteKit, Deno, Docker, Git, Linux, SQLite, Kysely, Discord.js, FFmpeg

**Practices:** GitOps, Event Sourcing, API Design, Open Source Development

**Interests:** Self-Hosting, Homelabbing, Media Archival, Basketball, Technical Writing
