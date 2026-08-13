# go-infra-labs

Public, testable labs for Go runtime behavior, algorithms, middleware failure
semantics, and distributed systems.

## Goals

- Observe Go runtime and concurrency behavior through reproducible experiments.
- Practice core algorithms and implement engineering-oriented data structures.
- Reproduce middleware and distributed-system failure modes.
- Turn each result into a tested conclusion that can be applied to infrastructure
  controllers.

## Repository Layout

```text
runtime/       Go scheduler, memory, GC, and diagnostics labs
concurrency/   Channels, synchronization, cancellation, and leak labs
middleware/    gRPC, Redis, Kafka, etcd, and PostgreSQL labs
distributed/   Deterministic protocol and failure simulations
algorithms/    Core problems, engineering implementations, and concept notes
docs/          Assessments, ADRs, and cross-project conclusions
```

Directories are added as their first lab starts. Empty placeholder directories
are intentionally not committed.

## Quality Gates

```bash
make test
make race
make lint
make verify
```

Engineering algorithm packages also provide benchmarks:

```bash
make bench
```

## Learning Rule

Each lab starts with a question and a failing test or benchmark. A completed lab
includes a reproducible result, at least one boundary or failure case, and notes
that explain how the conclusion applies to a real infrastructure project.

## License

Licensed under the Apache License 2.0. See [LICENSE](LICENSE).
