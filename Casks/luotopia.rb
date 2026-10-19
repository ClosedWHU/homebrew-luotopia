cask "luotopia" do
  version "1.2.0.17"
  sha256 "5f9519bb3df4d34588ba88a463f76679a2871b8df081393236901c4ae22a63ce"

  url "https://github.com/ClosedWHU/Luotopia/releases/download/v1.2.0+17/luotopia-1.2.0-17-macos-arm64.dmg"
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
