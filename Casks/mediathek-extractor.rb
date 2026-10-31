# Homebrew-Cask für den eigenen Tap 7hdmm9pp2w-code/homebrew-tap (Repo „homebrew-tap“).
# Installation: brew tap 7hdmm9pp2w-code/tap && brew trust 7hdmm9pp2w-code/tap && brew install --cask mediathek-extractor
# Version und Prüfsumme setzt scripts/update-cask.sh nach jedem Release.
cask "mediathek-extractor" do
  version "1.7.1"
  sha256 "524537c2e0423fdcf346aaed2a9c4dd05450783fe4301a8d647512be95931663"

  url "https://github.com/7hdmm9pp2w-code/MediathekExtractor-Releases/releases/download/v#{version}/Mediathek-Extractor-#{version}-macOS.dmg"
  name "Mediathek-Extractor"
  desc "Filme und Serien aus ARD, ZDF, ARTE, 3sat … suchen und herunterladen"
  homepage "https://github.com/7hdmm9pp2w-code/MediathekExtractor-Releases"

  # Die App aktualisiert sich selbst; brew soll ihr dabei nicht in die Quere kommen
  auto_updates true
  # Für Streams, „Nur Ton“ und Deutsch + Original – so ist alles gleich da
  depends_on formula: "ffmpeg"
  depends_on formula: "yt-dlp"
  depends_on :macos

  app "Mediathek-Extractor.app"

  # Ad-hoc-signiert (keine Apple-Developer-ID): Quarantäne entfernen, sonst blockiert macOS den Start
  postflight_steps do
    run "/usr/bin/xattr",
        args:           ["-dr", "com.apple.quarantine", "{{appdir}}/Mediathek-Extractor.app"],
        writable_paths: ["{{appdir}}/Mediathek-Extractor.app"]
  end

  zap trash: [
    "~/Library/Application Support/io.github.7hdmm9pp2w-code.mediathekextractor",
    "~/Library/Caches/io.github.7hdmm9pp2w-code.mediathekextractor",
    "~/Library/WebKit/io.github.7hdmm9pp2w-code.mediathekextractor",
  ]
end
