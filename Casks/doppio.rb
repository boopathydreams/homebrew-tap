cask "doppio" do
  version "1.0.1"
  sha256 "3e6554cbe6aff97fe3b0c3b141a850a72da551289a8e94b56e93cd3018c4669d"

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
