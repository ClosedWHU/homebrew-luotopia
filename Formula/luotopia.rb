class Luotopia < Formula
  desc "Luotopia campus client for Wuhan University"
  homepage "https://www.whu.sb"
  license "MIT"
  version "1.2.1.18"

  depends_on :linux

  on_linux do
    depends_on "gtk+3"
    depends_on "webkitgtk"
    depends_on "libsecret"
    depends_on "libayatana-appindicator"
    depends_on "util-linux"
    depends_on "xz"

    on_intel do
      url "https://github.com/ClosedWHU/Luotopia/releases/download/v1.2.1+18/luotopia-1.2.1-18-linux-x64.tar.gz"
      sha256 "c2bbe1ad273f22b8392da418e36d486bf81b431b615e68f42fbf8b20c415d0b2"
    end
    on_arm do
      url "https://github.com/ClosedWHU/Luotopia/releases/download/v1.2.1+18/luotopia-1.2.1-18-linux-arm64.tar.gz"
      sha256 "fa036884b4bf62985acf63d9e6c40f1510c642ed7787bf6dac4b4c0193b7e450"
    end
  end

  def install
    libexec.install Dir["luotopia/*"]
    (bin/"luotopia").write_exec_script libexec/"luotopia"
    share.install "luotopia/data/flutter_assets/assets/icon/icon.png" => "luotopia-icon.png"
  end

  def caveats
    <<~EOS
      Linux portable build from the ClosedWHU/Luotopia releases.
      Requires a GTK3 + WebKitGTK 4.1 session (Wayland or X11).
    EOS
  end
end
