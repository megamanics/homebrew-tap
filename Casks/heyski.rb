cask "heyski" do
  version "0.2.0"
  sha256 "635bc59d7f81cc3e4f4dd856e103af96af09d691063cb9ccbf6c89bb4b824d4b"

  url "https://github.com/megamanics/heyski/releases/download/v#{version}/HeySKi-v#{version}-universal.zip"
  name "heyski"
  desc "native macOS notifications from your terminal"
  homepage "https://github.com/megamanics/heyski"

  depends_on macos: ">= :big_sur"

  app "HeySKi.app"
  binary "#{appdir}/HeySKi.app/Contents/MacOS/heyski"

  caveats <<~EOS
    heyski is on your PATH now:  heyski "it works"
    first launch: if macOS blocks it, open HeySKi.app from
    /Applications once (right-click -> Open), then you are set.
  EOS
end
