# Public-Safe AI Workstation Runbook Template

Status: scaffolded
Publication state: public scaffold
Release state: not released

## Purpose

This template provides a public-safe shape for workstation documentation. It is not an operational runbook and does not describe a live system.

## Template Fields

| Field | Public-safe entry rule |
| --- | --- |
| Workstation role | Use a generic category such as `local model experimentation host` or `documentation workstation`. |
| Artifact boundary | Mark public, private, sealed, or mixed. |
| Input materials | Use synthetic examples or reviewed public references only. |
| Output materials | Describe report or note types, not private logs or measured results. |
| Review status | Use `planned`, `scaffolded`, `public scaffold`, or `not released`. |

## Exclusions

Do not add topology, endpoints, ports, credentials, private URLs, tokens, private source paths, private corpora, private weights, adapters, run logs, training logs, benchmark results, deployment claims, production workflow claims, production-readiness claims, or proof-completion claims.

## Reviewer Checklist

- The runbook can be understood without a real host map.
- All examples are synthetic.
- No model, dataset, benchmark, deployment, or production status is implied.
- Human review remains upstream of any public release decision.
