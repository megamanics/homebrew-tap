cask "heyski" do
  version "0.5.0"
  sha256 "6831ee020db98122cb645dd751a823ba1196c927202393ae1cc71e418589349d"

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
