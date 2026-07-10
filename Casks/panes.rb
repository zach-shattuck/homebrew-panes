cask "panes" do
  version "0.1.4"
  sha256 "64ba2f5eee2120aeeb6417dbc302c239ec9cbd9d64e6c5b7c74ffb7c6a3dff8d"

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
