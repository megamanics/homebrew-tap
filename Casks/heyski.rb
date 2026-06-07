cask "heyski" do
  version "0.2.0"
  sha256 "635bc59d7f81cc3e4f4dd856e103af96af09d691063cb9ccbf6c89bb4b824d4b"

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
