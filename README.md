# watch-move-fen-lab

`watch-move-fen-lab` keeps a focused Elixir implementation around chess and game engines. The project goal is to build an Elixir toolkit that studies fen behavior through negative fixtures, with human-readable error snapshots and no network dependency.

## Reason For The Project

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Watch Move Fen Lab Review Notes

For a quick review, compare `position pressure` with `move ordering` before reading the middle cases.

## What It Does

- `fixtures/domain_review.csv` adds cases for position pressure and move ordering.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/watch-move-fen-walkthrough.md` walks through the case spread.
- The Elixir code includes a review path for `position pressure` and `move ordering`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## How It Is Put Together

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The Elixir code keeps the review rule close to the tests.

## Run It

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Check It

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Boundaries

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.
