# Vadim's Homebrew Taps

## How do I install these formulae?

`brew install velikodniy/tap/<formula>`

Or `brew tap velikodniy/tap` and then `brew install <formula>`.

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "velikodniy/tap"
brew "<formula>"
```

This tap's `node` formula is a drop-in fallback for platforms core no longer ships a
Node bottle for (e.g. Intel macOS). On Homebrew versions that enforce tap trust,
authorize it first:

```sh
brew trust --formula velikodniy/tap/node
```

## Available Formulae

| Formula | Description | Install |
| --- | --- | --- |
| [antigravity-cli](https://antigravity.google/) | Google Antigravity CLI (`agy`) | `brew install velikodniy/tap/antigravity-cli` |
| [cgt-tool](https://github.com/velikodniy/cgt-tool) | CLI for UK Capital Gains Tax calculation | `brew install velikodniy/tap/cgt-tool` |
| [node](https://nodejs.org/) | Node.js runtime from upstream prebuilt binaries | `brew install velikodniy/tap/node` |
| [opencode](https://github.com/anomalyco/opencode) | AI-powered development tool | `brew install velikodniy/tap/opencode` |
| [openspec](https://openspec.dev) | Spec-driven development for AI coding assistants | `brew install velikodniy/tap/openspec` |
| [qmd](https://github.com/tobi/qmd) | On-device hybrid search for Markdown files | `brew install velikodniy/tap/qmd` |
| [termshark](https://github.com/gcla/termshark) | Terminal UI for tshark, inspired by Wireshark | `brew install velikodniy/tap/termshark` |

## Available Casks

| Cask | Description | Install |
| --- | --- | --- |
| [unsloth](https://unsloth.ai/) | Local interface for running and training AI models | `brew install --cask velikodniy/tap/unsloth` |
