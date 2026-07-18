cask "doppio" do
  version "1.0.3"
  sha256 "45b6f7e24f13300fd8ae5fcc20db17b3f85ebe03be05543c67132d24c5a7a2f7"

  url "https://github.com/boopathydreams/doppio/releases/download/v#{version}/Doppio.dmg"
  name "Doppio"
  desc "Keep your Mac awake with a live countdown, built for AI agent sessions"
  homepage "https://github.com/boopathydreams/doppio"

  app "Doppio.app"

  # Auto-installs the CLI tool to /usr/local/bin/doppio
  binary "#{appdir}/Doppio.app/Contents/Resources/doppio"

  caveats <<~EOS
    The CLI tool has been symlinked to /usr/local/bin/doppio.
    Run `doppio --help` in Terminal to get started.

    To keep your Mac awake for the lifetime of any command:
      doppio while claude
      doppio while npm run build
  EOS
end
