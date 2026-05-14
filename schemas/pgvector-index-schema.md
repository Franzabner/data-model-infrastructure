# pgvector Index Schema

Status: scaffolded

This note describes a public-safe vector-index concept. It does not include embeddings from private corpora, endpoints, topology, credentials, unreleased metrics, or production index details.

| Field | Purpose |
| --- | --- |
| chunk_id | Synthetic chunk identifier |
| artifact_id | Synthetic artifact reference |
| embedding_model_class | Generic model class label |
| boundary_class | Public/private/sealed review state |

