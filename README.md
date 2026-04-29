# Claude Usage Tracker

A Chrome browser extension that tracks Claude.ai usage limits, token counts, and conversation costs in real time. Stats are injected directly into the Claude.ai interface.

## Features

- Real-time session and weekly usage tracking
- Per-model token counting (Opus, Sonnet, Haiku)
- Cost estimation with model weight multipliers
- Conversation cache expiration awareness
- Reset time countdowns
- Optional Anthropic API integration for precise token counts (bring your own key)
- Debug logs for troubleshooting

## Installation

1. Download or clone this repository
2. Open Chrome and go to `chrome://extensions` 
3. Enable **Developer mode** (top-right toggle)
4. Click **Load unpacked** and select the project folder
5. Visit [claude.ai](https://claude.ai) — usage stats appear automatically in the sidebar

## Optional: API Key Setup

For exact token counts (instead of local estimation), open the extension popup, click the API key field, and paste your Anthropic API key. The key is stored locally in browser storage and never transmitted anywhere except the official Anthropic API.

## Project Structure

- `background.js` — service worker, request interception
- `bg-components/` — token management, API logic, storage utilities
- `content-components/` — UI injection into Claude.ai
- `injections/` — webRequest polyfill
- `popup.html` / `popup.js` — extension popup
- `debug.html` / `debug.js` — debug log viewer

## Author

rizwanhasanbd

## Repository

https://github.com/rizwanhasanbd/
