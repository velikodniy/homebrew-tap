#!/usr/bin/env python3

import re
import sys
from pathlib import Path

FORMULA_PATH = Path("Formula/qmd.rb")
TARBALL_URL_PATTERN = re.compile(
    r"https://registry\.npmjs\.org/@tobilu/qmd/-/qmd-"
    r"[0-9]+\.[0-9]+\.[0-9]+(?:-[0-9A-Za-z.-]+)?(?:\+[0-9A-Za-z.-]+)?\.tgz"
)
FORMULA_URL_PATTERN = re.compile(
    r'^  url "https://registry\.npmjs\.org/@tobilu/qmd/-/qmd-[^"]+\.tgz"$',
    re.MULTILINE,
)
FORMULA_SHA256_PATTERN = re.compile(
    r'^  sha256 "[a-f0-9]{64}"$',
    re.MULTILINE,
)


def main() -> None:
    if len(sys.argv) != 3:
        raise SystemExit("Usage: update-qmd-formula.py <tarball-url> <sha256>")

    tarball_url, sha256 = sys.argv[1:]
    if TARBALL_URL_PATTERN.fullmatch(tarball_url) is None:
        raise SystemExit(f"Invalid qmd tarball URL: {tarball_url}")
    if re.fullmatch(r"[a-f0-9]{64}", sha256) is None:
        raise SystemExit(f"Invalid SHA-256: {sha256}")

    content = FORMULA_PATH.read_text()
    content, url_count = FORMULA_URL_PATTERN.subn(
        lambda _: f'  url "{tarball_url}"',
        content,
    )
    content, sha256_count = FORMULA_SHA256_PATTERN.subn(
        lambda _: f'  sha256 "{sha256}"',
        content,
    )
    if (url_count, sha256_count) != (1, 1):
        raise SystemExit(
            f"Expected one URL and SHA-256 replacement, got {url_count} and {sha256_count}"
        )

    FORMULA_PATH.write_text(content)


if __name__ == "__main__":
    main()
