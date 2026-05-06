# Review Journal

The review surface for `watch-move-fen-lab` is deliberately narrow: one fixture, one scoring rule, and one local check.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its chess and game engines focus without claiming live deployment or external usage.

## Cases

- `baseline`: `position pressure`, score 153, lane `ship`
- `stress`: `move ordering`, score 115, lane `watch`
- `edge`: `search width`, score 180, lane `ship`
- `recovery`: `endgame risk`, score 189, lane `ship`
- `stale`: `position pressure`, score 264, lane `ship`

## Note

This file is intentionally plain so the fixture remains the source of truth.
