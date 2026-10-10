# homebrew-luotopia

Luotopia（珞家）的 Homebrew tap，由 [ClosedWHU/Luotopia](https://github.com/ClosedWHU/Luotopia) 的 release workflow 在每个 Release 构建完成后自动渲染并推送——**本仓库内容全部由 CI 生成，请勿手改**。

## Linux（Linuxbrew）

```sh
brew tap ClosedWHU/luotopia
brew install luotopia
brew upgrade luotopia   # 升级
```

`Formula/luotopia.rb` 包装 Release 的 Linux 便携 tar.gz（x64 / arm64 自动匹配），运行时依赖 GTK3、WebKitGTK 4.1、libsecret 等由 Formula 声明。

## macOS

Release 携带 DMG 后，`Casks/luotopia.rb` 会自动出现：

```sh
brew install --cask luotopia
```

未签名构建：首次打开请右键 Luotopia.app → 打开，或 `xattr -cr /Applications/Luotopia.app`（仅对官方来源的 DMG 这样做）。

---

Scoop / Nix / winget 等其它渠道见 [ClosedWHU/Luotopia-Dist](https://github.com/ClosedWHU/Luotopia-Dist)。
