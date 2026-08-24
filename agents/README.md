# Agentic Coding

## Skills

- `wayfinder` (m): Plan a huge chunk of work (more than one agent session can hold) as a shared map of decision tickets on your issue tracker, and resolve them one at a time until the way to the destination is clear.
  - `research` (a): Investigate a question against high-trust primary sources and capture the findings as a Markdown file in the repo. Use when the user wants a topic researched, docs or API facts gathered, or reading legwork delegated to a background agent.
- `grill-with-docs` (m): A relentless interview to sharpen a plan or design, which also creates docs (ADR's and glossary) as we go.
  - `grilling` (a): Grill the user relentlessly about a plan, decision, or idea. Use when the user wants to stress-test their thinking, or uses any 'grill' trigger phrases.
  - `domain-modeling` (a): Build and sharpen a project's domain model. Use when discussing codebase terminology, writing or editing a CONTEXT.md, or recording or editing an ADR.
- `to-spec` (m): "Turn the current conversation into a spec and publish it to the project issue tracker: no interview, just synthesis of what you've already discussed."
- `to-tickets` (m): Break a plan, spec, or the current conversation into a set of tracer-bullet tickets, each declaring its blocking edges, published to the configured tracker (edges as text in one file per ticket locally, or native blocking links on a real tracker).
- `implement` (m): Implement a piece of work based on a spec or set of tickets.
  - `tdd` (a): Test-driven development. Use when the user wants to build features or fix bugs test-first, mentions "red-green-refactor", or wants integration tests.
  - `code-review` (a): 'Review the changes since a fixed point (commit, branch, tag, or merge-base) along two axes: Standards (does the code follow this repo''s documented coding standards?) and Spec (does the code match what the originating issue/spec asked for?). Runs both reviews in parallel sub-agents and reports them side by side. Use when the user wants to review a branch, a PR, work-in-progress changes, or asks to "review since X".'
- `improve-codebase-architecture` (m): Scan a codebase for deepening opportunities, present them as a visual HTML report, then grill through whichever one you pick.
  - `codebase-design` (a): Shared vocabulary for designing deep modules. Use when the user wants to design or improve a module's interface, find deepening opportunities, decide where a seam goes, make code more testable or AI-navigable, or when another skill needs the deep-module vocabulary.
- `unslop` (a): Cut AI tells from any writing. Must always apply.

> References: [mattpocock - skills](https://github.com/mattpocock/skills), [pstack - skills](https://github.com/cursor/plugins/tree/main/pstack/skills).

### The Flow

- `/wayfinder`: Multi-session planning. A greenfield project, or a build spanning many sessions, with the route still unclear.
  1. `/wayfinder` + Idea.
  2. `/wayfinder` + Unresolved decision ticket (each in a new session).
  3. `/to-spec` + The map (in a new session).
  4. `/to-tickets`
  5. `/implement` + Implementation ticket (each in a new session).
  6. Human review.

- `/grill-with-docs`: Single-session planning. A well-scoped feature you can settle in one sitting.
  1. `/grill-with-docs` + Idea.
  2. `/to-spec`
  3. `/to-tickets`
  4. `/implement` + Implementation ticket (each in a new session).
  5. Human review.

  > Skip `2.` and `3.`, and run `4.` in the same session if you think the work is small enough.
