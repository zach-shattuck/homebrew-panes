cask "panes" do
  version "0.1.1"
  sha256 "080220e766fcf1e8c0da6528a5bc6b37298ce64d90500c677a11d157a7a23a05"

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
