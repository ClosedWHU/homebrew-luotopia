cask "luotopia" do
  version "1.1.0.16"
  sha256 "f2118952373d2efb39b53baf6bb6b43a0c7e8078634741d8f4354eb58e164ef6"

  url "https://github.com/ClosedWHU/Luotopia/releases/download/v1.1.0+16/luotopia-1.1.0-16-macos-arm64.dmg"
  name "Luotopia"
  desc "Luotopia campus client for Wuhan University"
  homepage "https://www.whu.sb"
  license "MIT"

  app "Luotopia.app"

  caveats do
    <<~EOS
      Unsigned, un-notarized build (Apple Silicon only): Gatekeeper will block
      the first launch. Right-click Luotopia.app and choose Open, or run:

        xattr -cr /Applications/Luotopia.app

      Only do this for DMGs you downloaded from the official release page.
    EOS
  end
end
