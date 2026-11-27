cask "raven" do
  version "0.10.2"
  sha256 "9238cf56084246b718471547aa44ab824dfa651937b3ef871263da71165c405a"

  url "https://github.com/codebend3r/maester/releases/download/v#{version}/raven-player-#{version}-arm64.dmg"
  name "Raven"
  desc "Local videos under raven's own controls"
  homepage "https://github.com/codebend3r/maester"

  # Only three-number tags carry the app; the vX.Y.Z.N build tags have no assets.
  livecheck do
    url :url
    regex(/^v?(\d+\.\d+\.\d+)$/i)
    strategy :github_releases
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Raven.app"

  zap trash: [
    "~/Library/Application Support/raven",
    "~/Library/Preferences/io.github.codebend3r.raven.plist",
    "~/Library/Saved Application State/io.github.codebend3r.raven.savedState",
  ]
end
