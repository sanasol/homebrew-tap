cask "slimwarden" do
  version "0.1.0"
  sha256 "6b9acfc8024f1febda31d71ae001b2f64f80dc106fbe0f18cfe0f95529844370"

  url "https://github.com/sanasol/slimwarden/releases/download/v#{version}/Slimwarden-#{version}.zip"
  name "Slimwarden"
  desc "Featherweight native client for Vaultwarden and Bitwarden"
  homepage "https://github.com/sanasol/slimwarden"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Slimwarden.app"

  zap trash: [
    "~/Library/Application Support/Slimwarden",
    "~/Library/Caches/Slimwarden",
    "~/Library/Preferences/ws.sanasol.slimwarden.plist",
  ]
end
