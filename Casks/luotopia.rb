cask "luotopia" do
  version "1.3.0.19"
  sha256 "fd93a502dbbb333e87a4e501c66af88be1da52993bc9114362bbe647deaf9ed5"

  url "https://github.com/ClosedWHU/Luotopia/releases/download/v1.3.0+19/luotopia-1.3.0-19-macos-arm64.dmg"
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
