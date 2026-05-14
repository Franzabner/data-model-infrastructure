# Data Model Infrastructure

Status: scaffolded
Publication state: public scaffold
Release state: not released

## What This Repo Is

`data-model-infrastructure` is a published Phase 4 public scaffold for public-safe data/model infrastructure architecture and templates. It covers source capture, OCR/extraction, metadata, normalization, deduplication, chunking, quality scoring, database insertion, vector indexing, dataset versioning, fine-tuning content generation, evaluation boundaries, cards, RAG substrates, artifact storage, and DGX workflow boundaries.

## What This Repo Is Not

This repo is not a model release, dataset release, Hugging Face Space, private training log, production data platform, customer data store, or benchmark result. It does not contain private corpora, copyrighted material without rights, customer data, Foundation-private data, private weights, adapters, private training logs, endpoints, topology, credentials, unreleased metrics, private prompts, private eval outputs, model releases, dataset releases, or Hugging Face metadata changes.

## Current Status

| Field | Value |
| --- | --- |
| Status | scaffolded |
| Publication state | public scaffold |
| Release state | not released |
| Public GitHub repo | published scaffold |
| First artifact | `source-capture/public-safe-source-to-model-workflow.md` scaffolded |
| Published artifact | scaffolded |
| Profile routing | planned |
| Proof-stack routing | planned |
| Hugging Face metadata | not changed |

## Data / Model Infrastructure Scope

- Engineering database schemas.
- Physical-source capture policy.
- OCR and extraction workflow notes.
- Metadata tagging, cleaning, normalization, deduplication, chunking, and quality scoring.
- Database insertion and vector indexing notes.
- Dataset versioning and artifact-storage boundaries.
- Fine-tuning content generation and DGX workflow boundaries.
- Model/dataset card and eval report templates.

## Tools And Stack

Postgres, pgvector, Qdrant, MinIO/object storage, Redis, DVC, Python, Jupyter where useful, public-safe OCR/extraction notes, DGX / NVIDIA AI Workbench / NeMo-style workflow notes where public-safe, Hugging Face card templates, and Forgejo/GitHub provenance notes.

## Source-To-Model Workflow

The public-safe workflow is:

`physical books / manuals / datasheets / notes -> scanning or digital capture -> OCR / extraction -> metadata tagging -> cleaning and normalization -> deduplication -> chunking -> quality scoring -> database insertion -> vector indexing -> dataset versioning -> fine-tuning content generation -> evaluation -> model/dataset cards -> DGX fine-tuning workflow boundaries`

## Schemas And Metadata

Schema notes are conceptual and synthetic. Metadata templates describe source class, rights posture, review state, and boundary class without storing private source records.

## Cleaning, Deduplication, Chunking, And Quality Scoring

These sections define reviewable process rules only. They do not include private corpora, copyrighted content without rights, customer records, internal dataset statistics, private eval outputs, or unreleased metrics.

## Database, Vector, Object Storage, And Cache Boundaries

Database, vector, object-storage, and cache notes are boundary notes only. They must not include endpoints, topology, credentials, bucket names, connection strings, operational storage details, or private index contents.

## Dataset Versioning And Cards

Dataset versioning and cards are templates unless later human review approves a public release. No dataset release is claimed.

## Fine-Tuning And DGX Workflow Boundaries

Fine-tuning and DGX notes are public-safe workflow boundaries only. No private weights, adapters, training logs, endpoints, topology, credentials, private corpora, runtime details, or unreleased metrics are included.

## Evaluation Boundaries

Eval templates may define report structure and review questions. They do not claim benchmark results, model quality, dataset quality, released metrics, or proof completion.

## Forgejo / GitHub Provenance

Forgejo is canonical private source where private or sealed source applies. GitHub hosts this public scaffold after review. This repo does not change Hugging Face metadata.

## Hugging Face Release-Surface Discipline

Hugging Face references are card and release-surface discipline only. This repo does not publish models, datasets, Spaces, cards, collections, or metadata.

## Public / Private / Sealed Boundary

This repository contains public-safe data/model infrastructure architecture and templates only. It does not contain private corpora, copyrighted material without rights, customer data, Foundation-private data, private weights, adapters, private training logs, endpoints, topology, credentials, unreleased metrics, private prompts, private eval outputs, model releases, dataset releases, or Hugging Face metadata changes. Hugging Face content in this repository is card and release-surface discipline only unless a later human-reviewed release explicitly approves a public model, dataset, Space, or metadata update.

## Links Back After Public Creation

Profile routing and proof-stack routing are planned. Any `Franzabner` or `franzabner-proof-stack` link must be handled in a separate reviewed routing patch. This repo must not be marked released or proof-complete.

## First Build Task

Published artifact: scaffolded. `source-capture/public-safe-source-to-model-workflow.md` includes a problem statement, synthetic source context, source-to-model workflow, Mermaid workflow diagram, validation questions, what this proves, what this does not prove, public/private/sealed checklist, and `Status: scaffolded`.
