# Samuel Chau's CV

- Phone: +61 413 867 624
- Email: [schau22@pm.me](mailto:schau22@pm.me)
- Location: Adelaide, SA
- LinkedIn: [samuel-chau-7324a0305](https://linkedin.com/in/samuel-chau-7324a0305)
- GitHub: [santiagosayshey](https://github.com/santiagosayshey)


# Summary
Computer Science graduate and maintainer of Profilarr, an open-source media automation tool with 3.5M+ downloads and 2,400 stars. Experienced across full-stack web development (SvelteKit, Deno, TypeScript), systems programming, and cybersecurity, with a track record of designing developer tools that scale.

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

*Profilarr ([GitHub](https://github.com/Dictionarry-Hub), [Website](https://dictionarry.dev/))*

- Self-hosted media server applications often require complex, interdependent configuration that is tedious to set up by hand and painful to keep consistent across multiple instances. Profilarr brings Terraform-style configuration-as-code practices to application-level configuration by letting users link version-controlled configuration databases, make local adjustments, and sync everything to target applications without losing local changes when upstream updates.

- Designed an event-sourced data format inspired by CRDTs to solve the core problem of letting multiple parties edit the same data independently without breaking each other. Configuration is stored as a sequence of operations rather than final state — changes to different fields never conflict, and changes to the same field are detected by value guards before they can silently overwrite.

- Built and architected a 100K+ line SvelteKit, Deno, TypeScript, and SQLite application as the sole engineer. Developed a reusable component library that enforces consistent UI patterns across the app, an interactive onboarding system that walks users through real UI elements instead of static documentation, a background job queue that recovers from crashes and process restarts, an idempotent sync engine that can be safely retried without duplicating work, drift detection that alerts users when their servers diverge from expected configuration, and schema-driven type generation that derives TypeScript interfaces directly from the database so types never fall out of sync.

- Secured with a defense-in-depth approach built around the assumption that self-hosted web applications may be exposed to the internet. Rather than relying solely on authentication, the architecture removes secrets from the web-accessible surface where possible; API keys are hashed and never stored as plaintext, backup downloads strip credentials before archives reach the browser, and the filesystem remains the only trust boundary for full-fidelity data. Added independent protections for OWASP Top 10 risks, including authentication and rate limiting, sanitized markdown rendering, path traversal prevention, reverse-proxy-aware CSRF handling, and secret exposure controls.

- Built a CI/CD pipeline that acts as a release safety net for a production open-source app used across heterogeneous self-hosted environments. Every code change passes build, formatting, lint, Svelte/TypeScript type checks, unit tests, Semgrep SAST, integration tests against the compiled production binary, and Playwright E2E authentication flows before release. This catches regressions in core logic, security-sensitive paths, auth/proxy behavior, and browser workflows before they reach users.

- Grew to 3.5M+ downloads, 50,000+ active users, and 2,400 GitHub stars. Published long-form dev logs and technical deep dives breaking down architecture decisions, data modeling tradeoffs, and domain concepts for a community of 2,000+ members. Handled all user support, coordinated beta releases with community tester signoff, and maintained contribution guidelines.



# Projects
## **Synapsis ([GitHub](https://github.com/SynapsisAI))**

*React, Express, LLMs, FFmpeg*

AI Research Paper Video Platform

- Built full-stack platform using Grobid for paper parsing, LLMs for summarization/image generation, and FFmpeg for video synthesis.

- Pitched at **Tech eChallenge** startup competition; ranked **Top 5** out of 50+ teams.



## **OMesh ([GitHub](https://github.com/santiagosayshey/OMesh))**

*Python, Docker, WebSockets*

Secure Messaging Platform

- Built end-to-end encrypted messaging platform using low-level socket programming and custom protocol design.

- Implemented RSA/AES-GCM cryptographic pipeline for secure key exchange and message encryption.

- Deployed multi-server architecture with Docker Compose; real-time communication via WebSockets.



## **Rogue ([GitHub](https://github.com/santiagosayshey/Rogue))**

*C++, SFML*

Procedural Roguelike Game

- Built turn-based roguelike with procedural map generation and entity component system architecture.

- Implemented design patterns (Factory, Observer, State) for extensible game object behavior.



# Skills
**Languages:** TypeScript, Python, C++, C#, SQL, HTML/CSS

**Technologies:** SvelteKit, Deno, Docker, Git, Linux, SQLite, Discord.js, FFmpeg

**Practices:** GitOps, Event Sourcing, API Design, Open Source Development

**Interests:** Self-Hosting, Homelabbing, Media Archival, Basketball, Technical Writing
