cask "panes" do
  version "0.1.6"
  sha256 "097cdf78f97156f80852062acbf62228870969512c7b7f3b2de874b39be6b3e2"

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
