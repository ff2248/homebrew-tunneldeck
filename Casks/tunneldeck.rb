cask "tunneldeck" do
  version "1.0.0"
  sha256 "65a3a5458305c6f8103d8557bd9e8b7c305968e146bf191dc06f8db828117373"

  url "https://github.com/ff2248/TunnelDeck/releases/download/v#{version}/TunnelDeck-v#{version}.dmg"
  name "TunnelDeck"
  desc "Menu bar manager for SSH local port forwards"
  homepage "https://github.com/ff2248/TunnelDeck"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "TunnelDeck.app"

  uninstall quit: "io.github.ff2248.tunneldeck"

  zap trash: [
    "~/Library/Application Support/TunnelDeck",
    "~/Library/Preferences/io.github.ff2248.tunneldeck.plist",
  ]
end
