#!/usr/bin/env bash
set -u

missing=0

required_files=(
  "AGENTS.md"
  "README.md"
  "STATUS.md"
  "PUBLIC_BOUNDARY.md"
  "CLAIMS.md"
  "VALIDATION.md"
  "ARTIFACT_REGISTER.md"
  "REVIEW_LOG.md"
  "requirements.txt"
  "schemas/README.md"
  "schemas/postgres-artifact-schema.md"
  "schemas/pgvector-index-schema.md"
  "source-capture/README.md"
  "source-capture/public-safe-source-to-model-workflow.md"
  "source-capture/physical-source-capture-policy.md"
  "ocr-extraction/README.md"
  "ocr-extraction/ocr-extraction-policy.md"
  "metadata-tagging/README.md"
  "metadata-tagging/metadata-template.json"
  "metadata-tagging/metadata-tagging-rules.md"
  "normalization/README.md"
  "normalization/normalization-rules.md"
  "deduplication/README.md"
  "deduplication/deduplication-policy.md"
  "chunking/README.md"
  "chunking/chunking-policy.md"
  "quality-scoring/README.md"
  "quality-scoring/quality-scoring-rubric.md"
  "datasets/README.md"
  "datasets/synthetic-dataset-versioning.md"
  "dataset-cards/README.md"
  "dataset-cards/dataset-card-template.md"
  "model-cards/README.md"
  "model-cards/model-card-template.md"
  "vector-index-notes/README.md"
  "vector-index-notes/qdrant-pgvector-boundary.md"
  "artifact-storage/README.md"
  "artifact-storage/minio-object-storage-boundary.md"
  "cache-and-queues/README.md"
  "cache-and-queues/redis-cache-boundary.md"
  "dvc-versioning/README.md"
  "dvc-versioning/dvc-public-safe-policy.md"
  "fine-tuning-runs/README.md"
  "fine-tuning-runs/public-safe-fine-tuning-run-note-template.md"
  "dgx-workflows/README.md"
  "dgx-workflows/public-safe-dgx-workflow-notes.md"
  "evals/README.md"
  "evals/eval-boundary-template.md"
  "rag-substrates/README.md"
  "rag-substrates/retrieval-substrate-boundary.md"
  "forgejo-github-provenance/README.md"
  "forgejo-github-provenance/provenance-boundary.md"
  "diagrams/README.md"
  "diagrams/source-to-model-flow.mmd"
  "diagrams/data-boundary-map.mmd"
  "templates/source-record-template.md"
  "templates/artifact-review-template.md"
  "scripts/validate-public-boundary.sh"
)

for file in "${required_files[@]}"; do
  if [ -f "$file" ]; then
    printf "PASS %s\n" "$file"
  else
    printf "FAIL %s\n" "$file"
    missing=$((missing + 1))
  fi
done

required_terms=(
  "planned"
  "scaffolded"
  "published"
  "released"
  "private/not-public"
  "private corpora"
  "copyrighted material"
  "customer data"
  "Foundation-private"
  "private weights"
  "adapters"
  "training logs"
  "endpoints"
  "topology"
  "credentials"
  "unreleased metrics"
  "validation"
  "review"
)

for term in "${required_terms[@]}"; do
  if rg -q "$term" .; then
    printf "PASS term: %s\n" "$term"
  else
    printf "FAIL term: %s\n" "$term"
    missing=$((missing + 1))
  fi
done

blocked_files="$(find . -path ./.git -prune -o \( -iname '*.parquet' -o -iname '*.feather' -o -iname '*.sqlite' -o -iname '*.db' -o -iname '*.pkl' -o -iname '*.joblib' -o -iname '*.safetensors' -o -iname '*.pt' -o -iname '*.gguf' -o -iname '*.onnx' \) -print)"
if [ -z "$blocked_files" ]; then
  printf "PASS blocked private-data/model artifact scan\n"
else
  printf "FAIL blocked private-data/model artifact scan\n%s\n" "$blocked_files"
  missing=$((missing + 1))
fi

if [ "$missing" -eq 0 ]; then
  printf "Result: PASS - data/model public boundary scaffold is complete.\n"
else
  printf "Result: FAIL - %s required checks failed.\n" "$missing"
fi

exit "$missing"
