cask "luotopia" do
  version "1.2.1.18"
  sha256 "0f6df584bd7297d4b37ed98fa26875a7abe315bf0c346e21e5ed5752a7af1cbf"

  url "https://github.com/ClosedWHU/Luotopia/releases/download/v1.2.1+18/luotopia-1.2.1-18-macos-arm64.dmg"
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
