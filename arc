
Sentient: The Genesis Plan – Architecture & Roadmap
Our guiding star is the Sentient Product Requirements Document (PRD). Every architectural choice and every phase of development serves its mission: "To augment human cognition by building the most trustworthy, ambient, and private-first AI companion on the planet."
I. The Sentient Architecture: Engineered from the PRD
The PRD mandates an architecture that is inherently private, intelligent, and seamless. It must embody "conscious utility," not "software."
Core Platform (As per PRD: "Platform & Architecture")


Frontend: Electron-based desktop app (macOS first)
Reasoning (PRD Alignment): Electron allows for rapid development of a rich UI, as demanded by the "Design Requirements" for the Inbox, Daily Brief, Chat, and Settings. "macOS first" aligns with delivering a premium, integrated experience on a platform known for design excellence, fitting the "looks like it belongs in macOS" mandate. The "system-native, not a floating app" feel will be paramount.
Backend: Python (FastAPI)
Reasoning (PRD Alignment): Python's strength in AI/ML and FastAPI's performance are ideal for the "Unified Memory Graph" and "Signal Ingestion" capabilities. This supports Sentient being "quietly brilliant."
LLM Integration: LangChain/LangGraph agent orchestration
Reasoning (PRD Alignment): Essential for the "Unified Memory Graph" to offer intelligent suggestions and for the "Chatbox Interface" to function. This allows for sophisticated reasoning, turning raw data into actionable insights, as envisioned by a "second brain."
Data Storage: Fully private, local-first memory store (SQLite + vector DB)
Reasoning (PRD Alignment): This is non-negotiable, directly fulfilling the "Privacy + Control Layer" requirement that "Users choose what’s watched, stored, retained, or deleted" and the ethos of "Trustworthy, never intrusive." SQLite handles structured metadata from the "Unified Memory Graph," while a vector DB enables semantic search for "recalls forgotten context."
OS-level hooks: Event monitoring, file activity, app focus, idle time
Reasoning (PRD Alignment): Critical for "Signal Ingestion" and enabling Sentient to learn "from your digital behavior" and be "always aware." This must be implemented with extreme care for the "Privacy + Control Layer," ensuring user consent for what is "watched."
Architectural Principles Derived from PRD Ethos & Design


Modularity for Evolution: The architecture must allow "Further Feature Ideas (Post-MVP)" (e.g., "Context Snapshots," "Reason Trail") to be integrated seamlessly. Each core capability (Memory Graph, Signal Ingestion, Inbox, etc.) will be a distinct module.
Local-First Processing Dominance: To be "Trustworthy" and "Private-First," the default operational mode for processing ingested signals and generating insights from the Memory Graph will be on-device. LLM usage will prioritize local models.
Efficiency for "Ambient" Presence: To be "quietly brilliant, not loud or overactive" and "ambient, always present, barely visible," all components must be highly performant and resource-efficient.
API-Driven Internal Communication: The Electron frontend will communicate with the Python backend via a well-defined local API, ensuring clean separation of concerns and enabling the "system-native, not a floating app" feel.











Conceptual Flow (Strictly PRD-based):
+-------------------------------------------------------------------+
| macOS User Environment                                            |
|                                                                   |
|  [Electron Frontend]  <---- Local API ---->  [Python Backend (FastAPI)] |
|  - Sentient Inbox                            - Signal Ingestion Modules |
|  - Daily Brief Popup                         - LLM Orchestration        |
|  - Chatbox Interface                           (LangChain/LangGraph)    |
|  - Settings Panel                            - Unified Memory Graph Logic|
|  - Notification Microinteractions                                   |
|        ^                                             |            |
|        | (OS Events, User Input)                     v            v
|        |                               [SQLite] + [Vector DB]   [OS-Level Hooks]
|        |                                (Local Memory Store)   (Consented Access)
|  (UI reflects Memory & Suggestions)                                   |
|                                                                   |
+-------------------------------------------------------------------+


This architecture is the direct translation of the PRD's vision into a technical blueprint, designed for trustworthiness and quiet brilliance.

II. The Sentient Development Roadmap: Precision & Pace
Timelines are aggressive, reflecting a focused, high-caliber team dedicated to realizing the PRD's vision swiftly without compromising the core tenets of quality and trust.
Phase 0: Foundation – The Unseen Engine (3-4 Months)
PRD Goal: Establish the core intelligence and privacy bedrock. This is "Sentient learning silently."
Focus (Directly from PRD "MVP: Core Capabilities" & "Platform"):
Basic Unified Memory Graph: Implement local SQLite + Vector DB. Design schema for "people, tasks, habits, files."
Core Signal Ingestion (Proof of Concept):
Develop initial Python modules for Calendar and limited, user-consented file activity (as per "OS-level hooks" and "Privacy + Control Layer").
Local Backend & API: FastAPI server, basic local API for internal testing.
Privacy Layer (V1): Implement foundational logic for consent and data isolation.
LLM Orchestration (Internal): LangChain/LangGraph setup with a local model to process ingested data and populate the Memory Graph.
Deliverable: A headless engine. No user-facing UI beyond development tools. Demonstrate basic, private learning.
PRD Alignment: "Builds live model," "Pulls context," "local-first memory store," "Privacy + Control Layer."
Phase 1: MVP – The Dawn of Sentient (4-6 Months after Phase 0)
PRD Goal: Deliver the "MVP: Core Capabilities" with the "Personality & Ethos" and "Design Requirements" fully embodied.
Focus (Directly from PRD "MVP: Core Capabilities" & "Design Requirements"):
Electron Frontend (macOS):
Sentient Inbox: "Timeline of suggestions, reminders, and actions."
Daily Brief Popup: "Smart digest of what matters."
Chatbox Interface: "Lightweight fallback."
Settings Panel (MVP): "Toggle data streams, permissions, memory control."
Notification Microinteractions: "Sparse, non-intrusive."
Refined Signal Ingestion: Expand to Email, more comprehensive Calendar, Browser context (all via explicit permissions outlined in PRD's "Onboarding" section).
Onboarding Experience ("The First Impression" from PRD): This is mission-critical for trust and must be polished.
Branding Kit Implementation: "Logo + wordmark," "Color palette," "Typography system," "Motion language" applied consistently. Dark-mode native.
Landing Page Design (from PRD "Design Requirements (Landing Page)"): Ready for waitlist/beta.
Deliverable: Polished Sentient MVP for macOS for private beta. All PRD "Design Team Deliverables" (App UX, Landing Page, Branding Kit) complete.
PRD Alignment: All MVP features, "Quietly brilliant," "System-native," "Minimal, refined, intelligent" design.
Phase 2: Intelligence Amplification & Trust Solidification (4-5 Months after Phase 1)
PRD Goal: Enhance Sentient's proactive help, deepen user trust, and incorporate initial "Further Feature Ideas."
Focus (From PRD "Further Feature Ideas" & refining MVP):
"Reason Trail" (High Priority Post-MVP): "Let users see why the agent suggested something." This is crucial for the "Trustworthy" ethos.
Smarter Nudges & Suggestions: Improve the relevance and timing of insights from the "Unified Memory Graph." Learn from user interactions with the "Sentient Inbox."
Expanded Signal Ingestion & Control: Add more integrations if they meet privacy standards, with enhanced granularity in the "Settings Panel."
Performance & Stability: Relentless optimization for an "ambient" feel.
"Context Snapshots" (Initial exploration/V1): Begin work on this "Further Feature Idea."
Iterate on all MVP features based on beta feedback, ensuring adherence to "Guidelines for Designers."
Deliverable: A more intelligent, transparent, and robust Sentient. Prepare for wider release or public beta.
PRD Alignment: Strengthens "Trustworthy," "Helpful," and "Quietly brilliant." Addresses "Further Feature Ideas."
Phase 3: Ubiquitous Cognition (Ongoing, from 6 Months after Phase 2)
PRD Goal: Make Sentient an indispensable, deeply integrated cognitive partner, fulfilling its "Core Mission."
Focus (From PRD "Further Feature Ideas" & long-term vision):
"Subconscious Logging" (Careful, opt-in exploration): If deemed viable within the "Trustworthy" framework.
"Focus Mode Overlay."
"Cross-User Memory Links (For teams - opt-in)."
Continued LLM advancement, especially on-device capabilities.
Deepen personalization based on evolving user "habits."
Constant refinement of the "ambient" experience.
Deliverable: Sentient continuously evolves, becoming more deeply intertwined with the user's ability to "act, remember, and focus better."
PRD Alignment: Full realization of Sentient as "Your always-on second brain" and "the smartest, most trusted ally you have."

This accelerated plan demands excellence at every turn. By strictly adhering to the PRD—its features, its ethos, its soul—we will build Sentient. Not just as envisioned, but as it must be: a quiet revolution in personal computing.

