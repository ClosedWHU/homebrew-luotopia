class Luotopia < Formula
  desc "Luotopia campus client for Wuhan University"
  homepage "https://www.whu.sb"
  license "MIT"
  version "1.1.0.16"

  depends_on :linux

  on_linux do
    depends_on "gtk+3"
    depends_on "webkitgtk"
    depends_on "libsecret"
    depends_on "libayatana-appindicator"
    depends_on "util-linux"
    depends_on "xz"

    on_intel do
      url "https://github.com/ClosedWHU/Luotopia/releases/download/v1.1.0+16/luotopia-1.1.0-16-linux-x64.tar.gz"
      sha256 "b53587d02c523a90b59e5e73e4cb6cf5ee997acb25d738ae01a80648951c7cec"
    end
    on_arm do
      url "https://github.com/ClosedWHU/Luotopia/releases/download/v1.1.0+16/luotopia-1.1.0-16-linux-arm64.tar.gz"
      sha256 "0b9d701896065c2d4fbf1cfc76f38df11a210239e5383c99127408aa152c0ba6"
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
