#!/usr/bin/env python3

import re
import sys
from pathlib import Path

CASK_PATH = Path("Casks/imhex.rb")
VERSION_PATTERN = re.compile(
    r"[0-9]+\.[0-9]+\.[0-9]+(?:-[0-9A-Za-z.-]+)?(?:\+[0-9A-Za-z.-]+)?"
)
CASK_VERSION_PATTERN = re.compile(
    r'^  version "[^"]+"$',
    re.MULTILINE,
)
CASK_SHA256_ARM_PATTERN = re.compile(
    r'^(  sha256 arm:\s+)"[a-f0-9]{64}",$',
    re.MULTILINE,
)
CASK_SHA256_INTEL_PATTERN = re.compile(
    r'^(         intel:\s+)"[a-f0-9]{64}"$',
    re.MULTILINE,
)


def main() -> None:
    if len(sys.argv) != 4:
        raise SystemExit(
            "Usage: update-imhex-cask.py <version> <sha256_arm64> <sha256_intel>"
        )

    version, sha256_arm64, sha256_intel = sys.argv[1:]
    if VERSION_PATTERN.fullmatch(version) is None:
        raise SystemExit(f"Invalid ImHex version: {version}")
    if re.fullmatch(r"[a-f0-9]{64}", sha256_arm64) is None:
        raise SystemExit(f"Invalid ARM64 SHA-256: {sha256_arm64}")
    if re.fullmatch(r"[a-f0-9]{64}", sha256_intel) is None:
        raise SystemExit(f"Invalid Intel SHA-256: {sha256_intel}")

    content = CASK_PATH.read_text()
    content, version_count = CASK_VERSION_PATTERN.subn(
        lambda _: f'  version "{version}"',
        content,
    )
    content, arm_count = CASK_SHA256_ARM_PATTERN.subn(
        rf'\g<1>"{sha256_arm64}",',
        content,
    )
    content, intel_count = CASK_SHA256_INTEL_PATTERN.subn(
        rf'\g<1>"{sha256_intel}"',
        content,
    )

    if (version_count, arm_count, intel_count) != (1, 1, 1):
        raise SystemExit(
            "Expected one version, arm64 SHA-256, and intel SHA-256 replacement, "
            f"got {version_count}, {arm_count}, and {intel_count}"
        )

    CASK_PATH.write_text(content)


if __name__ == "__main__":
    main()
