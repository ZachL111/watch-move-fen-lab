# Watch Move Fen Lab Walkthrough

The fixture is intentionally compact, so the review starts with the cases that pull farthest apart.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | position pressure | 153 | ship |
| stress | move ordering | 115 | watch |
| edge | search width | 180 | ship |
| recovery | endgame risk | 189 | ship |
| stale | position pressure | 264 | ship |

Start with `stale` and `stress`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

`stale` is the optimistic case; use it to make sure the scoring path still rewards strong signal.
