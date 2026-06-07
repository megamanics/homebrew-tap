cask "heyski" do
  version "0.3.0"
  sha256 "8d8ca52546c1745ef9b10b9a174c4aeb4da27c65df3aa22bc8fc45c37c951ba4"

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
