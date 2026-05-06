# watch-move-fen-lab

`watch-move-fen-lab` is a focused Elixir codebase around build an Elixir toolkit that studies fen behavior through negative fixtures, with human-readable error snapshots and no network dependency. It is meant to be easy to inspect, run, and extend without a hosted service.

## Watch Move Fen Lab Walkthrough

I would read the project from the outside in: command, fixture, model, then roadmap. That keeps the chess and game engines idea grounded in files that can be checked locally.

## Reason For The Project

This project keeps the domain idea close to the tests. That makes it useful as a reference implementation, a small experiment, or a starting point for a more specialized tool.

## Where Things Live

- `lib`: library code
- `test`: language test directory
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## Capabilities

- Includes extended examples for turn flow, including `recovery` and `degraded`.
- Documents search limits tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.
- Stores project constants and verification metadata in `metadata/project.json`.
- Adds a repository audit script that checks structure before running the language verifier.

## How It Is Put Together

The core is a scoring model over demand, capacity, latency, risk, and weight. That keeps position state, move ranking, and turn flow in one explicit decision path. The threshold is 163, with risk penalty 7, latency penalty 2, and weight bonus 4. The Elixir project uses Mix and ExUnit with clear data maps for each scenario.

## Getting It Running

The only required setup is the local Elixir toolchain. After cloning, stay in the repo root so fixture paths resolve correctly.

## Data Notes

`examples/extended_cases.csv` adds six named cases. I kept the names plain so failures are easy to read in a terminal: baseline, pressure, surge, degraded, recovery, and boundary.

## Command Examples

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Check The Work

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Possible Extensions

- Add a short report command that prints the score breakdown for a single scenario.
- Add malformed input fixtures so the failure path is as visible as the happy path.
- Split the scoring constants into a typed configuration object and validate it before use.
- Add one more chess and game engines fixture that focuses on a malformed or borderline input.

## Tradeoffs

The examples cover useful edges, not every edge. A larger version would add malformed-input tests, richer reports, and deeper domain parsers.
