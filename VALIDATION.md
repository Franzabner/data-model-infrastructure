# Validation

Status: scaffolded

## Required Commands

```bash
test -f README.md
test -f PUBLIC_BOUNDARY.md
test -f scripts/validate-public-boundary.sh
bash scripts/validate-public-boundary.sh
rg -n "planned|scaffolded|published|released|private/not-public|private corpora|copyrighted material|customer data|Foundation-private|private weights|adapters|training logs|endpoints|topology|credentials|unreleased metrics|validation|review" .
git diff --check
git status --short
```

## Manual Review

| Review | Required result |
| --- | --- |
| Provenance review | Source capture, OCR, metadata, rights posture, and review state are explicit. |
| Data boundary review | No private corpora, copyrighted material without rights, customer data, Foundation-private data, private prompts, or private eval outputs. |
| Infrastructure boundary review | No endpoints, topology, credentials, private object-store details, private vector-store details, or operational storage details. |
| Model boundary review | No private weights, adapters, training logs, released model claims, released dataset claims, or unreleased metrics. |

