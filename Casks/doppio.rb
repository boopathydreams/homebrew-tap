cask "doppio" do
  version "1.0.4"
  sha256 "02d4f20cdd479f53fd1ef715a057e7969136fe9d8b4f8973e6440371b91b7897"

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
