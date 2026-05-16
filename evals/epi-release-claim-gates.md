# EPI Release Claim Gates

Status: scaffolded
Publication state: public scaffold
Release state: not released

## Purpose

This file defines public-safe review gates for Energy Per Intelligence (EPI) method, benchmark, model, dataset, and artifact claims.

It does not approve a model release, dataset release, benchmark result, external artifact, deployment, production use, or proof completion.

## Claim Gate Matrix

| Claim type | Public-safe default | Required before stronger claim |
| --- | --- | --- |
| Method claim | Describe as a scaffolded method family or hypothesis only. | Human-reviewed evidence packet, implementation boundary review, and public-claim approval. |
| Result claim | State that no evaluated public result is released. | Reviewed result artifact, provenance, method notes, limitations, and approved publication language. |
| Benchmark claim | State that no validated benchmark is released. | Benchmark definition, synthetic or reviewed data boundary, reproducibility notes, and human approval. |
| Model claim | State that no model weights or adapters are released by this scaffold. | Model-release review, rights review, safety review, and release-surface approval. |
| Dataset claim | State that no dataset is released by this scaffold. | Dataset-card review, rights/provenance review, privacy review, and release-surface approval. |
| Artifact claim | State that any artifact is template or scaffold only unless separately approved. | Artifact register entry, evidence review, and public boundary review. |
| External release surface | State only that external release surfaces require separate human review. | Separate release decision and approved metadata. |

## Required Exclusions

Do not include:

- private corpora;
- private workloads;
- private weights or adapters;
- private training logs;
- raw traces;
- benchmark outputs;
- result values;
- model identifiers;
- endpoints or topology;
- credentials;
- unreviewed release metadata.

## Status Language

Use these public-safe statuses unless a later human-reviewed release packet approves stronger language:

| Status field | Public-safe language |
| --- | --- |
| Method status | Scaffolded; not released. |
| Benchmark status | Not validated; no benchmark output released. |
| Result status | No evaluated public result released. |
| Model status | No model weights or adapters released by this scaffold. |
| Dataset status | No dataset released by this scaffold. |
| External release status | No external release activity represented by this scaffold. |

## Review Rule

If a future artifact attempts to move from scaffold language to evidence language, stop and route it through public boundary review before publication.
