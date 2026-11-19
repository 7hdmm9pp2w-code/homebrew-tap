# Homebrew-Tap für Mediathek Plus

Filme und Serien aus ARD, ZDF, ARTE, 3sat & Co. entdecken, laden und teilen – kostenlos, ohne Konto, ohne Werbung. Hier: die Mac-Version über Homebrew.

```bash
brew tap 7hdmm9pp2w-code/tap
brew trust 7hdmm9pp2w-code/tap
brew install --cask mediathek-extractor
```

`brew trust` ist nötig, weil Homebrew Pakete aus fremden Taps erst nach Bestätigung lädt.
Der Paketname heißt noch `mediathek-extractor` (so hieß die App früher) – damit `brew upgrade` bei allen weiter greift.

Installiert **Mediathek Plus** samt **yt-dlp** und **ffmpeg** (für Streams, „Nur Ton“ und Deutsch + Original).
Die App aktualisiert sich danach selbst.

- Neueste Version und Downloads für Windows, Linux, NAS und Fernseher: https://github.com/7hdmm9pp2w-code/Mediathek-Plus/releases/latest
- Hilfe: https://7hdmm9pp2w-code.github.io/Mediathek-Plus/hilfe/
- Alle Änderungen: https://github.com/7hdmm9pp2w-code/Mediathek-Plus/blob/main/CHANGELOG.md
