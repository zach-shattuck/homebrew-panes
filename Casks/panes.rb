cask "panes" do
  version "0.1.2"
  sha256 "e33c65a08b5c5c37cc5c2eb2e1ab3d866d6652666c8555c9c80b5c36000796b5"

  url "https://github.com/zach-shattuck/panes/releases/download/v#{version}/Panes.zip"
  name "Panes"
  desc "Windows desktop comforts for macOS"
  homepage "https://github.com/zach-shattuck/panes"

  depends_on macos: :sonoma

  app "Panes.app"

  uninstall quit: "dev.panes.app"

  zap trash: [
    "~/Library/Application Support/Panes",
    "~/Library/Preferences/dev.panes.app.plist",
  ]
end
