#!/bin/sh
# Render the Sandbar Digital client documents to PDF with headless Chrome.
set -e
cd "$(dirname "$0")"
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
PORT=8731

python3 -m http.server "$PORT" --bind 127.0.0.1 >/dev/null 2>&1 &
SRV=$!
trap 'kill $SRV 2>/dev/null' EXIT
sleep 1

render() {
  "$CHROME" --headless --disable-gpu --no-pdf-header-footer --no-sandbox \
    --virtual-time-budget=10000 \
    --print-to-pdf="$2" "http://127.0.0.1:$PORT/src/$1" >/dev/null 2>&1
  echo "  → $2"
}

render proposal.html   "CEA Website Audit and Project Proposal.pdf"
render investment.html "CEA Scope of Work and Deliverables - Final .pdf"
