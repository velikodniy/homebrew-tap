#!/usr/bin/env python3

import re
import sys
from pathlib import Path

CASK_PATH = Path("Casks/unsloth.rb")
VERSION_PATTERN = re.compile(
    r"[0-9]+\.[0-9]+\.[0-9]+(?:-[0-9A-Za-z.-]+)?(?:\+[0-9A-Za-z.-]+)?"
)
CASK_VERSION_PATTERN = re.compile(
    r'^  version "[^"]+"$',
    re.MULTILINE,
)
CASK_SHA256_PATTERN = re.compile(
    r'^  sha256 "[a-f0-9]{64}"$',
    re.MULTILINE,
)


def main() -> None:
    if len(sys.argv) != 3:
        raise SystemExit("Usage: update-unsloth-cask.py <version> <sha256>")

    version, sha256 = sys.argv[1:]
    if VERSION_PATTERN.fullmatch(version) is None:
        raise SystemExit(f"Invalid Unsloth version: {version}")
    if re.fullmatch(r"[a-f0-9]{64}", sha256) is None:
        raise SystemExit(f"Invalid SHA-256: {sha256}")

    content = CASK_PATH.read_text()
    content, version_count = CASK_VERSION_PATTERN.subn(
        lambda _: f'  version "{version}"',
        content,
    )
    content, sha256_count = CASK_SHA256_PATTERN.subn(
        lambda _: f'  sha256 "{sha256}"',
        content,
    )
    if (version_count, sha256_count) != (1, 1):
        raise SystemExit(
            "Expected one version and SHA-256 replacement, "
            f"got {version_count} and {sha256_count}"
        )

    CASK_PATH.write_text(content)


if __name__ == "__main__":
    main()
