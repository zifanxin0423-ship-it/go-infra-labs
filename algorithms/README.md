# Algorithms

The algorithm track develops three different levels of capability:

1. `core`: 72 representative coding problems for common interview patterns.
2. `engineering`: 18 tested components used in infrastructure systems.
3. `concepts`: 20 concise notes for advanced topics that should be recognized
   and explained but do not always need to be implemented from memory.

## Core Problem Contract

Every core problem directory contains:

```text
solution.go
solution_test.go
notes.md
```

The tests cover normal behavior, minimum or empty input, boundaries, and
duplicates when applicable. `notes.md` records the pattern, invariant,
complexities, first incorrect approach, and delayed rewrite result.

## Engineering Component Contract

Every engineering package documents whether it is concurrency-safe and passes:

```bash
go test ./algorithms/engineering/<package>
go test -race ./algorithms/engineering/<package>
go test -bench=. -benchmem ./algorithms/engineering/<package>
```

Time, randomness, storage, and network behavior must be injectable when needed
for deterministic tests.

## Progress

Progress and assessment results are tracked in [progress.md](progress.md).
