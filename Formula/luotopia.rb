class Luotopia < Formula
  desc "Luotopia campus client for Wuhan University"
  homepage "https://www.whu.sb"
  license "MIT"
  version "1.2.0.17"

  depends_on :linux

  on_linux do
    depends_on "gtk+3"
    depends_on "webkitgtk"
    depends_on "libsecret"
    depends_on "libayatana-appindicator"
    depends_on "util-linux"
    depends_on "xz"

    on_intel do
      url "https://github.com/ClosedWHU/Luotopia/releases/download/v1.2.0+17/luotopia-1.2.0-17-linux-x64.tar.gz"
      sha256 "192237301c656e67b9019d13e5f29edffbdc308582a8ec23337160ca979fdf07"
    end
    on_arm do
      url "https://github.com/ClosedWHU/Luotopia/releases/download/v1.2.0+17/luotopia-1.2.0-17-linux-arm64.tar.gz"
      sha256 "c61804de798fa60c9fe67c074eb7af0ae824fac61b43840e8ec1b03908e6f3d7"
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
