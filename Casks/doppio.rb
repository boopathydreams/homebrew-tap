cask "doppio" do
  version "1.0.2"
  sha256 "93e54829e432e94b2bea45b482bffea79e8522a23efdd686f7f67c89e1e75adc"

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
