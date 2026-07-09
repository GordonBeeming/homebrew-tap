cask "vista" do
  version "0.12"
  sha256 "5602031ddd4ddbc23f9d5499d802e15e94586067da53d05994e27359169397d3"

  url "https://github.com/gordonbeeming/vista/releases/download/v#{version}/Vista-#{version}.dmg"
  name "Vista"
  desc "Search your screenshots by text, name or date — OCR-powered"
  homepage "https://github.com/gordonbeeming/vista"

  depends_on macos: :sonoma

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
