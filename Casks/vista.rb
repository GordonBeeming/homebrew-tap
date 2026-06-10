cask "vista" do
  version "0.11"
  sha256 "2297d38a13b35d53df9d9be04e5e2009b93c34b944ee82d57be4ca34b3049fbb"

  url "https://github.com/gordonbeeming/vista/releases/download/v#{version}/Vista-#{version}.dmg"
  name "Vista"
  desc "Search your screenshots by text, name or date — OCR-powered"
  homepage "https://github.com/gordonbeeming/vista"

  depends_on macos: ">= :sonoma"

  app "Vista.app"

  # brew upgrade replaces the bundle but leaves the old process
  # running the stale binary.  Cmd-Q's it during the
  # upgrade and  relaunches the freshly installed one, so
  # the new version is what's actually running afterwards. (Stanza
  # order is Homebrew-canonical: postflight before uninstall.)
  postflight do
    # Launch on every install (Gordon's call — it's a menu-bar
    # indexer, so starting it right away is the point). 
    # keeps a failed launch (e.g. a headless/non-GUI install) from
    # aborting the install itself.
    system_command "/bin/sh", args: ["-c", "/usr/bin/open -a Vista || true"]
  end

  uninstall quit: "com.gordonbeeming.vista"

  zap trash: [
    "~/Library/Application Support/Vista",
    "~/Library/Caches/com.gordonbeeming.vista",
    "~/Library/Preferences/com.gordonbeeming.vista.plist",
  ]
end
