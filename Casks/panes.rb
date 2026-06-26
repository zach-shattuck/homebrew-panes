cask "panes" do
  version "0.1.3"
  sha256 "7e0a880b5091307f5d52f5596f994c7a923e440e2cdd59aff8795fb9e5e18e84"

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
