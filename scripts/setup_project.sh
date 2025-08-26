/bin/bash: line 1: wq: command not found
set -euo pipefail

# Determine project root directory
ROOT="$(cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd)"

# Create internal data pipeline directories
mkdir -p \
  "$ROOT/data/raw" \
  "$ROOT/data/interim" \
  "$ROOT/data/processed"

# Create support directories
mkdir -p \
  "$ROOT/notebooks" \
  "$ROOT/src" \

# Summary output
cat <<EOF
Project directories created:

  data/
    raw/                 — your own unprocessed inputs
    interim/             — notebook + script intermediate outputs
    processed/           — cleaned JSON/CSVs for production


  notebooks/             — exploratory .ipynb files
  src/                   — production scripts and modules
  
EOF

