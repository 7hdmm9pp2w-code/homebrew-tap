# Homebrew-Cask für den eigenen Tap 7hdmm9pp2w-code/homebrew-tap (Repo „homebrew-tap“).
# Installation: brew tap 7hdmm9pp2w-code/tap && brew trust 7hdmm9pp2w-code/tap && brew install --cask mediathek-extractor
# Version und Prüfsumme setzt scripts/update-cask.sh nach jedem Release.
cask "mediathek-extractor" do
  version "2.2.0"
  sha256 "15bf4a9af6f8d2627b0913642fc09f31b5ee8c1c0408da2281c6930e89ac3cd6"

  url "https://github.com/7hdmm9pp2w-code/Mediathek-Plus/releases/download/v#{version}/Mediathek-Plus-#{version}-macOS.dmg"
  name "Mediathek Plus"
  # Früher „Mediathek-Extractor“ – der Cask-Name bleibt, damit „brew upgrade“ weiter greift
  desc "Filme und Serien aus ARD, ZDF, ARTE, 3sat … suchen und herunterladen"
  homepage "https://github.com/7hdmm9pp2w-code/Mediathek-Plus"

  # Die App aktualisiert sich selbst; brew soll ihr dabei nicht in die Quere kommen
  auto_updates true
  # Für Streams, „Nur Ton“ und Deutsch + Original – so ist alles gleich da
  depends_on formula: "ffmpeg"
  depends_on formula: "yt-dlp"
  depends_on :macos

  app "Mediathek Plus.app"

  # Ad-hoc-signiert (keine Apple-Developer-ID): Quarantäne entfernen, sonst blockiert macOS den Start
  postflight_steps do
    run "/usr/bin/xattr",
        args:           ["-dr", "com.apple.quarantine", "{{appdir}}/Mediathek Plus.app"],
        writable_paths: ["{{appdir}}/Mediathek Plus.app"]
  end

  zap trash: [
    "~/Library/Application Support/io.github.7hdmm9pp2w-code.mediathekextractor",
    "~/Library/Caches/io.github.7hdmm9pp2w-code.mediathekextractor",
    "~/Library/WebKit/io.github.7hdmm9pp2w-code.mediathekextractor",
  ]
end
