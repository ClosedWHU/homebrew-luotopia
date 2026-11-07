class Luotopia < Formula
  desc "Luotopia campus client for Wuhan University"
  homepage "https://www.whu.sb"
  license "MIT"
  version "1.3.0.19"

  depends_on :linux

  on_linux do
    depends_on "gtk+3"
    depends_on "webkitgtk"
    depends_on "libsecret"
    depends_on "libayatana-appindicator"
    depends_on "util-linux"
    depends_on "xz"

    on_intel do
      url "https://github.com/ClosedWHU/Luotopia/releases/download/v1.3.0+19/luotopia-1.3.0-19-linux-x64.tar.gz"
      sha256 "60b2f3fdc252ebf8ef13402036e99fdee0b520e75e76190be71eeabd648373e1"
    end
    on_arm do
      url "https://github.com/ClosedWHU/Luotopia/releases/download/v1.3.0+19/luotopia-1.3.0-19-linux-arm64.tar.gz"
      sha256 "9241803723500b7a6baadc997d709b25fe70713f93a846ebee48f43a2e7ba4e0"
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
