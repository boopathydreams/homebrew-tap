cask "doppio" do
  version "1.0.5"
  sha256 "0ebd334f48a31ff59574916a0ce914c5f39de205edffe101207a72964a64d7ef"

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
