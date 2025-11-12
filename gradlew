#!/usr/bin/env bash
set -e
DIR="$(cd "$(dirname "$0")" && pwd)"
JAVA=$(command -v java || true)
if [ -z "$JAVA" ]; then echo "Java not found in PATH"; exit 1; fi
exec "$JAVA" -jar "$DIR/gradle/wrapper/gradle-wrapper.jar" "$@"
