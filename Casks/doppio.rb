cask "doppio" do
  version "1.0.6"
  sha256 "088fc96d996096c21a483237fbe151b8959b32262f50aa0475fa36fe2ea5c98c"

  url "https://github.com/boopathydreams/doppio/releases/download/v#{version}/Doppio.dmg"
  name "Doppio"
  desc "Keep your Mac awake with a live countdown, built for AI agent sessions"
  homepage "https://github.com/boopathydreams/doppio"

  app "Doppio.app"

  binary "#{appdir}/Doppio.app/Contents/Resources/doppio"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "/Applications/Doppio.app"],
                   sudo: false
  end

  caveats <<~EOS
    The CLI tool has been symlinked to /usr/local/bin/doppio.
    Run `doppio --help` in Terminal to get started.

    To keep your Mac awake for the lifetime of any command:
      doppio while claude
  EOS
end
