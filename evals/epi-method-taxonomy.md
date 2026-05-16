# EPI Method Taxonomy

Status: scaffolded
Publication state: public scaffold
Release state: not released

## Purpose

This file defines public-safe taxonomy for Energy Per Intelligence (EPI) method discussion. It is migrated as generic research vocabulary from legacy EPI scaffold review, not as implementation evidence.

The taxonomy supports comparison language for future public-safe notes without claiming a released method, validated result, model release, dataset release, deployment, production readiness, or proof completion.

## Public-Safe Method Categories

| Category | Public-safe definition | Boundary |
| --- | --- | --- |
| Attention-head intervention | A generic category for studying whether changing attention-head participation affects useful work per energy unit. | No working intervention workflow, benchmark output, model identifier, private workload, or measured energy result is included. |
| Mixed quantization | A generic category for studying how different precision classes across model regions might affect size, speed, accuracy, and energy tradeoffs. | No quantization recipe, model artifact, runtime command, private corpus, or result value is included. |
| Expert pruning | A generic category for studying whether sparse-model expert participation changes useful work per energy unit. | No expert-removal workflow, router analysis, model weights, adapter, private harness, or result value is included. |
| EPI comparison frame | A generic frame for separating quality, throughput, and energy questions before making any public claim. | No validated EPI score, benchmark, raw trace, or production measurement is included. |

## Allowed Use

This taxonomy may be used to:

- name public-safe method families;
- separate hypothesis language from evidence language;
- define non-evidence method status;
- support synthetic study design in `engineering-simulation-lab`;
- support claim-gate language in `engineering-standards-and-validation`.

## Not Evidence

This taxonomy is not:

- a released method;
- a validated result;
- a benchmark output;
- a model release;
- a dataset release;
- a deployment record;
- production readiness evidence;
- proof completion.

## Review Boundary

Human review is required before any public artifact uses this taxonomy to support a stronger claim about method performance, model behavior, dataset suitability, EPI improvement, measured energy reduction, or external release activity.
