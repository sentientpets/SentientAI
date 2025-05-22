
Product Requirements Document: Sentient
Version: 1.0
Date: May 22, 2025
Author: The Sentient Vision Team
Status: Draft
"Sentient is not software. It’s a cognitive presence. It’s the quiet hum of intelligence that anticipates, remembers, and empowers, seamlessly woven into the fabric of your digital life. It’s what comes after the app."
1. Introduction & Vision
1.1. What is Sentient? Sentient is an ambient, intelligent desktop agent. It is not a chatbot. It is not an app you consciously open and close for tasks. Sentient is your always-on second brain; a silent operator that learns from your digital behavior across all your tools (email, calendar, chats, files, browser), building a private, evolving memory graph of your work and life. It then proactively offers relevant suggestions, recalls forgotten context, and acts on your behalf—with explicit permission—all without demanding your attention. It lives discreetly in your desktop tray, surfacing insights only when they matter.
1.2. The Problem We Solve Modern digital life is a relentless barrage of information, scattered across countless tools. We forget crucial details, miss opportunities, and struggle to maintain focus. Context switching is exhausting. Current tools demand our constant attention and manual input. We need something that works for us, silently, in the background, making us smarter, more focused, and more effective without adding to the noise.
1.3. Our Vision: Augmenting Human Cognition To create the most trustworthy, ambient, and private-first AI companion on the planet. Sentient will augment human cognition by remembering what we forget, connecting disparate information, and proactively assisting in a way that feels intuitive, almost prescient. It will become an indispensable extension of the user's own mind, built on a foundation of absolute trust and user control. We are building the future of personal productivity – a future where your computer doesn't just serve you, it understands you.
2. Goals & Objectives
2.1. Primary Goals
Deliver a transformative user experience that feels like a natural extension of the operating system – an OS co-pilot.
Establish unparalleled trust through a radical commitment to privacy, transparency, and user control.
Demonstrate tangible improvements in user productivity, recall, and focus.
Become the category-defining product for ambient AI assistance.
2.2. Measurable Objectives (MVP & Beyond)
Engagement: High daily active usage, measured by users accepting suggestions and interacting with the Daily Brief.
Trust: Extremely low opt-out rates for data streams after onboarding; positive qualitative feedback on privacy and control.
Utility: High task completion rates for suggestions acted upon; users reporting significant time savings or critical information recall.
Adoption: Achieve target waitlist sign-ups and conversion to active users post-launch.
3. Target Audience
3.1. Primary: Knowledge workers, busy professionals, entrepreneurs, researchers, and students (initially macOS users) who:
Juggle multiple projects, tools, and communication streams.
Value productivity and deep work.
Are sophisticated technology users, appreciative of elegant, high-performance tools.
Are conscious of privacy and data security.
Are often overwhelmed by information overload and context switching.
3.2. Secondary: Anyone seeking to improve their personal organization, memory, and focus in their digital lives.
4. Core Principles & Ethos (The Sentient Way)
4.1. Trustworthy & Private-First: User data is sacred. Local-first by default. All collection is transparent, consensual, and controllable. We will never betray this trust.
4.2. Ambient & Non-Intrusive: Sentient is a quiet presence, not a loud interruption. It surfaces insight elegantly, only when truly valuable. It disappears until it matters.
4.3. Quietly Brilliant & Proactive: Sentient helps without being told. It anticipates needs through intelligent learning, offering help that feels almost magical, yet grounded.
4.4. System-Native & Seamless: It feels like part of the OS, not an add-on. Interactions are fluid, refined, and perfectly integrated.
4.5. Helpful, Not Needy: Sentient serves the user, not the other way around. It doesn't demand constant interaction or attention.
4.6. Elegant Minimalism: Every element, every interaction is thoughtfully designed for clarity, purpose, and aesthetic refinement. Less, but better.
5. The Sentient Experience: Detailed Requirements
This is where Sentient comes alive. It's not just features; it's a cohesive, intelligent experience.
5.1. The First Impression: Impeccable Onboarding (The "Setup Page")


Goal: Transform skepticism into quiet confidence. User feels empowered, not overwhelmed. This is the foundation of trust.
Flow (Modular, Animated, Dark-Mode Native):
Welcome & Vision ("The Why"):
Visual: Stunning, minimal animation of abstract, glowing lines connecting points (evocative of learning, not literal data).
Text: "Meet Sentient: Your always-on second brain. It learns, remembers, and helps proactively, without you needing to ask." (Subtly reinforce "not a chatbot").
Interaction: Simple "Continue" button with subtle glow/pulse.
The Privacy Promise ("How It Protects"):
Visual: Abstract visuals emphasizing local storage, encryption (e.g., glowing vault icon).
Text: "Your data, your control. Sentient learns from your digital world, privately, on your device. Nothing leaves unless you explicitly choose."
Interaction: "I Understand & Trust" button, prominent link to clear, concise privacy policy.
Granting Permissions ("How It Learns"):
Visual: Elegant icons for each data source (email, calendar, files, browser, chat apps). Icon subtly lights up upon granting permission.
Text: "For Sentient to truly help, it needs access to your digital streams. Choose what it watches:"
Interaction: Clear toggle switches for:
Email (macOS Mail, Outlook, Gmail via secure APIs)
Calendar (macOS Calendar, Google Calendar, Outlook via secure APIs)
Files (Finder activity – user-specified folders, file types, and/or system-wide metadata with clear consent).
Browser (Safari, Chrome history/tabs – via extensions or APIs).
Communication Apps (Slack, Teams, Messages – carefully defined scope: metadata, specific channels, never raw message content unless explicitly for summarization tasks with opt-in).
Critical: Explain why each permission is needed (e.g., "Email access helps Sentient recall forgotten conversations for meetings"). Emphasize that Sentient is not just "listening to everything" but using structured access.
Defining Your World (Initial Personalization):
Visual: Abstract icons for "work," "personal."
Text: "Help Sentient understand your priorities. Are you primarily focused on work, personal life, or a mix?"
Interaction: Elegant toggles/radio buttons.
Optional Input: "What's one thing you always forget?" (single field to prime an immediate memory).
Placement & Presence ("Where It Lives"):
Visual: Subtle animation of Sentient icon gracefully settling into macOS menubar/tray.
Text: "Sentient lives quietly in your menubar. Click its icon for your Inbox, or just let it work ambiently."
Interaction: "Got It, Launch Sentient" button.
Onboarding Design Imperatives: Meticulous pacing, Apple-esque aesthetic, purposeful animation, absolute transparency.
5.2. Ambient Interaction: The Intelligent Pop-up System


Goal: Provide timely, relevant assistance without breaking flow or creating anxiety. These are not annoying notifications.
Types & Design Principles:
The "Nudge" / Contextual Suggestion (Ephemeral & Subtle):
Trigger: Sentient detects relevant context (e.g., drafting email -> past attachment/context).
Appearance: Small, transparent, context-sensitive floating card near cursor/relevant app or emerging from menubar. Minimalist, dark-themed, soft glowing border/background. Sentient's "motion language" (gentle pulse/fade-in).
Content: Ultra-concise (e.g., "Recall: Mentioned [Project X] in last week's email?" with quick link).
Interaction: One-click action, quick dismiss (X/fade-out on mouse-away), subtle "..." for more options.
Tone: Helpful, prescient, never demanding.
Memory Recall (Proactive Context Injection):
Trigger: Open meeting invite -> Sentient recalls previous notes/conversations.
Appearance: Slightly more persistent but unobtrusive panel (sliding from side/overlay on relevant app).
Content: Clean, organized "cards" (e.g., "Meeting Context: Previous points for [Client Z]").
Interaction: Scrollable, clickable items, easy dismiss.
The "Daily Brief" (Controlled Summary - MVP):
Trigger: User-defined time or manual invocation from menubar.
Appearance: Larger, modal popover from menubar icon. Elegant, structured digest.
Content: "Today's Focus" (tasks, priorities), "Upcoming" (calendar events + context), "Key Conversations" (email/chat summaries), Optional/Rare "Learning Insights."
Interaction: Scannable, quick links, dismiss.
Action Confirmation (Permission-based Execution):
Trigger: Sentient identifies opportunity to act (e.g., "Reply with attachment").
Appearance: Clear, concise modal dialog.
Content: Explicit question (e.g., "Sentient can draft a reply... Proceed?").
Interaction: "Yes, Proceed" / "No, Dismiss" buttons. Optional "Customize Draft."
Pop-up Design Imperatives: Modularity, configurability (via Settings), learning user preferences, elegant fallback (defaults to silence if unsure).
5.3. The Sentient Inbox (MVP):


Accessed via menubar icon.
A timeline/stack of actionable cards: suggestions, reminders, context recalls, actions taken (with user permission).
Each card is clear, concise, and offers relevant actions or dismiss options.
Visually calm, organized, and easy to parse.
5.4. Chatbox Interface (Fallback, MVP):


Lightweight, compact interface for users to explicitly ask questions or retrieve specific memories.
Not the primary interaction mode.
Uses natural language processing to query the Unified Memory Graph.
Maintains the minimal, intelligent aesthetic.
5.5. The Settings Panel: The Control Hub (MVP):


Goal: Empower users with full transparency and granular control, reinforcing trust. Intuitive, powerful, OS co-pilot feel.
Structure & Key Sections:
Overview/Dashboard: Summary of active data streams, quick link to "My Memory" visualization (post-MVP), account status.
Data Streams & Permissions:
List of all integrated apps/sources. Toggles (Active/Paused).
Detailed explanation for each: "What Sentient learns," "Why Sentient needs it."
"Reconnect" / "Remove" integrations.
Memory & Storage:
(Post-MVP: "My Memory" Visualization - interactive graph like Obsidian, but refined).
Data Retention Settings: Global (30 days, 90 days, indefinite).
Selective Deletion: Tools to search and delete specific memories/topics.
Local Storage Status: Visual indicator, confirmation of local-first.
(Post-MVP: Sync Options - opt-in secure cloud sync for multi-device).
Notifications & Nudges:
Granular control for each pop-up type: On/Off, timing (for Daily Brief), categories (for Nudges).
Frequency Control: "Show less often," "Only when critical," "Always."
(Post-MVP: Sound Control).
Behavior & Personalization: Revisit onboarding choices (Work/Personal Focus). Learning preferences. Idle time sensitivity.
About Sentient / Help: Version, changelog, FAQ, support, tutorials.
Settings Design Imperatives: Modular sections, future searchability, scalability for new integrations.
5.6. Unified Memory Graph (Core Engine - MVP):


The intelligent backend model of people, tasks, habits, files, projects, and their interconnections.
Continuously updated in real-time based on ingested signals.
Private and local to the user's device.
5.7. Signal Ingestion (Core Engine - MVP):


Securely pulls context from authorized sources: email, calendar, documents, local apps, browser.
Local-first processing. Relies on OS-level hooks (event monitoring, file activity, app focus, idle time – with explicit, granular user consent for what is monitored) and direct API integrations where available and more privacy-preserving.
Emphasis on structured data from APIs over raw, indiscriminate monitoring.
6. Design & UX Requirements
6.1. Branding & Visual Language:


Identity: Minimal, refined, intelligent. Evokes "conscious utility," not "software."
Color Palette: Dark-mode native. Deep, sophisticated darks, accented by subtle, ethereal glows (e.g., soft blues, teals, purples) to signify intelligence and activity. Accents are desaturated.
Typography: Clean, modern, highly legible sans-serif. System fonts (e.g., San Francisco for macOS) preferred for native feel, with stylistic alternates for unique branding moments.
Motion Language: Subtle, ambient, glowing motion. Gentle pulses, soft fades, elegant transitions. Motion signals presence and intelligence, never entertains or distracts.
Logo + Wordmark: Abstract, minimal representation of interconnectedness, intelligence, or a subtle "S." Wordmark is clean, modern, and premium.
Overall Feel: Like a built-in OS co-pilot, an extension of the operating system itself. Looks like it belongs in macOS, but with a uniquely Sentient ethereal quality.
6.2. UI/UX (Desktop Widget/Agent):


Inbox Timeline: Stack of actionable cards (suggestions, nudges, recalls). Clear hierarchy, intuitive actions.
Daily Brief Popover: Calendar, tasks, insights, habits. Scannable, informative.
Chat Panel: Compact, minimal, for quick recall or explicit interaction.
Settings Panel: As detailed in 5.5. Utmost clarity and control.
Notifications/Pop-ups: As detailed in 5.2. Sparse, non-intrusive, contextually relevant. Microinteractions must be refined and purposeful.
6.3. Landing Page Design (Marketing):


Page Flow:
Mission: "This isn’t a chatbot. This is your always-on second brain."
Demo Preview: Short, elegant animation/video showcasing Sentient's ambient help.
Feature Highlights: Unified Memory, Proactive Nudges, Privacy Core.
Trust + Privacy Section: Emphasize local-first, user control.
"How Sentient Helps" Use Cases: Concrete examples.
CTA: Join Waitlist / Request Demo.
Visuals: Reflect app's branding. Light animations to visualize Sentient's intelligence. Single-scroll responsive layout. Modular blocks.
6.4. Design Guidelines (Summary):


DO: Think ambient, not app. Design with restraint. Use light motion to signal presence. Create for trust (transparency, minimalism, privacy).
DON'T: Use off-the-shelf UI kits. Make it robotic or sci-fi. Overload with noise. Use chat-centric UI as default.
7. Technical Specifications (MVP)
Frontend: Electron-based desktop app (macOS first).
Backend: Python (FastAPI), local-first memory store (SQLite + vector DB for semantic search).
LLM Integration: LangChain/LangGraph for agent orchestration and intelligent reasoning. On-device models prioritized where feasible for privacy and speed for specific tasks; larger models via API for complex reasoning if necessary (with user awareness).
Data Storage: Fully private, runs locally. Explicit opt-in for any potential future cloud sync (encrypted, secure).
OS-level hooks: Careful use of APIs for event monitoring, file activity (user-consented folders), app focus, idle time. Prioritize official, stable, and privacy-respecting APIs.
8. Privacy & Security (Non-Negotiable)
Data Minimization: Collect only what is necessary for core functionality, with explicit user consent for each data stream.
Local-First Processing: All sensitive data and the Unified Memory Graph reside and are processed on the user's device by default.
Transparency: Users can easily understand what data Sentient has access to, how it's used, and how to manage/delete it. The "Reason Trail" (post-MVP) will be key.
User Control: Granular permissions for data sources, retention policies, and notification preferences.
Encryption: Data at rest and (if ever synced) in transit will use strong encryption.
No Sale of Data: User data will never be sold or used for advertising.
Regular Audits: (Future) Independent security and privacy audits.
9. Future Feature Ideas (Post-MVP)
Context Snapshots: Save "mental states" (open tabs, focused work, app layouts).
Reason Trail: Allow users to see why Sentient suggested something, tracing back to the source data points in their Memory Graph. Critical for trust.
Subconscious Logging: Silent memory of past promises, ideas, commitments (opt-in, highly sensitive).
Focus Mode Overlay: Sentient actively blocks interruptions and summarizes what was missed.
Cross-User Memory Links (Teams): Opt-in shared memory across collaborators, with granular permissioning for specific projects or topics.
Expanded Integrations: More apps, services, and data types.
Mobile Companion App: For accessing key memories or context on the go (read-only initially).
Deeper Personalization: Sentient learns user preferences for interaction style, information density, etc.
10. Success Metrics & KPIs
User Adoption: Waitlist growth, download rates, onboarding completion rate.
Engagement: Daily Active Users (DAU), average number of suggestions accepted per user, Daily Brief interaction rate.
Retention: Churn rate, long-term active users.
Task Success: Percentage of proactive suggestions leading to positive user outcomes (e.g., finding a file, recalling context).
Qualitative Feedback: User survey scores on perceived productivity boost, trust, ease of use, "magical" moments. Net Promoter Score (NPS).
Privacy Metrics: Opt-in rates for data sources, low rates of permission revocation.
11. Risks & Assumptions
Technical Complexity: Building a robust, reliable Unified Memory Graph and context-aware engine is challenging.
Performance: Ensuring Sentient remains lightweight and doesn't drain system resources.
User Trust Barrier: Overcoming potential user skepticism about AI and data privacy. Requires flawless execution of privacy promise.
"Creepiness" Factor: Proactive suggestions must be impeccably timed and relevant to avoid feeling intrusive. The "Reason Trail" will be important here.
Integration Challenges: Reliance on third-party app APIs and OS-level hooks can be fragile.
Competition: Emerging players in the AI assistant space.
Assumption: Users desire proactive, ambient assistance if it can be delivered trustworthily.
Assumption: macOS users are a strong initial target market for this type of premium, integrated experience.
12. Release Criteria (MVP)
All MVP core capabilities (Unified Memory Graph, Signal Ingestion, Sentient Inbox, Daily Brief Popup, Chatbox, Privacy Layer) are implemented and stable.
Onboarding experience is polished, clear, and inspires trust.
Core integrations (e.g., macOS Mail, Calendar, Finder basic activity) are functional.
No critical bugs or performance issues.
Privacy and security measures are rigorously tested and validated.
Landing page and basic support documentation are ready.
13. Open Issues / Questions for Discussion
Specific scope of "file activity" monitoring for MVP – balance between utility and user comfort.
Strategy for LLM use: fully local vs. hybrid for certain tasks? How to communicate this transparently?
Initial set of "Nudge" categories for MVP.
Detailed error handling and fallback mechanisms for when Sentient cannot confidently provide assistance.

This PRD is a living document. But it sets a clear, unwavering course. We are not just iterating; we are innovating. We are building Sentient not just to be used, but to be trusted and relied upon, as an extension of one's own mind. It’s a profound responsibility and an incredible opportunity. Let's go build the future.

