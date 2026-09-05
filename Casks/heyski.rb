cask "heyski" do
  version "0.5.1"
  sha256 "ca6307549d05dce2f4a0ae100e4f38df761abc118b1e6da38f75244d8ac30b3d"

  url "https://github.com/megamanics/heyski/releases/download/v#{version}/HeySKi-v#{version}-universal.zip"
  name "heyski"
  desc "Terminal notifier that greets you by name and clicks you back to work"
  homepage "https://github.com/megamanics/heyski"

  depends_on macos: :big_sur

  app "HeySKi.app"
  binary "#{appdir}/HeySKi.app/Contents/MacOS/heyski"

  caveats <<~EOS
    heyski is on your PATH now —  heyski "it works"
    first launch, if macOS clutches its pearls: open HeySKi.app from
    your Applications once (right-click -> Open). it never asks twice.
  EOS
end
