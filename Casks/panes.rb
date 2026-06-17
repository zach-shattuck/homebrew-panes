cask "panes" do
  version "0.1.0"
  sha256 "3f3f3f0f75430df7f3143ce52dc709071714a1a8857a255398d1d73d4d20dbb7"

  url "https://github.com/zach-shattuck/panes/releases/download/v#{version}/Panes.zip"
  name "Panes"
  desc "Windows desktop comforts for macOS"
  homepage "https://github.com/zach-shattuck/panes"

  depends_on macos: ">= :sonoma"

  app "Panes.app"

  uninstall quit: "dev.panes.app"

  zap trash: [
    "~/Library/Application Support/Panes",
    "~/Library/Preferences/dev.panes.app.plist",
  ]
end
