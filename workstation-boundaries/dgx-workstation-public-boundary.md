# DGX Workstation Public Boundary

Status: scaffolded
Publication state: public scaffold
Release state: not released

## Purpose

This boundary defines how AI workstation documentation can be described in public without exposing private infrastructure or implying validated model operations.

## Public-Safe Scope

Allowed public material:

- generic workstation documentation taxonomy;
- synthetic runbook sections;
- hardware-neutral capability categories;
- boundary labels for public, private, sealed, and mixed artifacts;
- review gates for model, dataset, evaluation, and runtime claims.

## Held Out

Do not include topology, hostnames, IPs, endpoints, ports, private URLs, credentials, tokens, private source paths, private corpora, weights, adapters, run logs, training logs, private eval outputs, benchmark results, deployment claims, production-readiness claims, or proof-completion claims.

## Review Gate

Before any workstation note is made public, confirm that it is a synthetic documentation pattern and not a map of a real environment. If the note needs real infrastructure context to make sense, hold it for private review instead of publishing a redacted substitute.
