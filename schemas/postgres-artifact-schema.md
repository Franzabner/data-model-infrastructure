# Postgres Artifact Schema

Status: scaffolded

This is a conceptual schema note, not production database source.

| Field | Purpose | Boundary |
| --- | --- | --- |
| artifact_id | Synthetic identifier | No customer identifier |
| source_class | Public-safe source category | No private corpus reference |
| rights_posture | Review field for usage rights | No copyrighted material without rights |
| boundary_class | Public/private/sealed status | Review required |
| review_state | Human review state | Scaffolded |

