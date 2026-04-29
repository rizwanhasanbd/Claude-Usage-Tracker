<div align="center">

# 📊 Claude Usage Tracker

**A lightweight Chrome extension that shows your Claude.ai usage limits, token counts, and costs in real time — right inside the Claude interface.**

[![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)](https://github.com/rizwanhasanbd/Claude-Usage-Tracker/releases)
[![Manifest](https://img.shields.io/badge/manifest-v3-green.svg)](https://developer.chrome.com/docs/extensions/mv3/intro/)

</div>

---

## ✨ Why use it?

If you've ever hit a Claude rate limit mid-conversation and wondered *"how close was I?"* — this extension solves that. It quietly tracks your session and weekly usage, breaks down tokens per model, and shows everything inline so you never have to guess again.

## 🚀 Features

- 🔴 **Real-time tracking** — session and weekly usage updated as you chat
- 🧠 **Per-model breakdown** — separate counters for Opus, Sonnet, and Haiku
- 💰 **Cost estimation** — applies official model weight multipliers
- ⏱️ **Reset countdowns** — know exactly when your limits refresh
- 💾 **Cache awareness** — accounts for conversation cache expiration
- 🔑 **Optional API integration** — bring your own Anthropic key for exact token counts
- 🐛 **Debug logs** — built-in viewer for troubleshooting
- 🛡️ **100% local** — no tracking, no analytics, no external servers

---

## 📦 Installation

> No Chrome Web Store listing yet — install manually in under a minute.

1. **Download** the latest release or clone the repo:
   ```bash
   git clone https://github.com/rizwanhasanbd/Claude-Usage-Tracker.git
   ```
2. Open Chrome and navigate to `chrome://extensions`
3. Toggle **Developer mode** (top-right corner)
4. Click **Load unpacked** and select the project folder
5. Visit [claude.ai](https://claude.ai) — usage stats appear automatically ✅

---

## 🔑 Optional: API Key Setup

For **exact** token counts instead of local estimates:

1. Click the extension icon in your Chrome toolbar
2. Paste your [Anthropic API key](https://console.anthropic.com/settings/keys) into the popup
3. Done — counts are now precise

> 🔒 **Your key stays local.** It's stored in Chrome's encrypted storage and only sent to Anthropic's official API. Nothing else.

---

## 🗂️ Project Structure

```

Claude-Usage-Tracker/

├── background.js              # Service worker + request interception

├── bg-components/             # Token logic, API client, storage utils

├── content-components/        # UI injection into Claude.ai

├── injections/                # webRequest polyfill

├── popup.html / popup.js      # Toolbar popup

├── debug.html / debug.js      # Debug log viewer

├── tracker-styles.css         # Styling

└── manifest.json              # Manifest V3 config
```

---

## 👤 Author

**Rizwan Hasan** — [@rizwanhasanbd](https://github.com/rizwanhasanbd)

If this extension saves you time, drop a ⭐ on the repo!
