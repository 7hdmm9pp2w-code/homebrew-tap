# Homebrew-Tap für Mediathek-Extractor

Filme und Serien aus ARD, ZDF, ARTE, 3sat … suchen und herunterladen – für den Mac.

```bash
brew tap 7hdmm9pp2w-code/tap
brew trust 7hdmm9pp2w-code/tap
brew install --cask mediathek-extractor
```

`brew trust` ist nötig, weil Homebrew Pakete aus fremden Taps erst nach Bestätigung lädt.

Installiert die App samt **yt-dlp** und **ffmpeg** (für Streams, „Nur Ton“ und Deutsch + Original).
Die App aktualisiert sich danach selbst.

Mehr zur App, Downloads für Windows und Linux: https://github.com/7hdmm9pp2w-code/MediathekExtractor-Releases
