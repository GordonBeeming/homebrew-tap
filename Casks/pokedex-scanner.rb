cask "pokedex-scanner" do
  version "0.1"
  sha256 "9e3ddaeeba03cf9962fa0dd8bec69d1ccb8f403b996362c4695f8a165a05b7ec"

  url "https://github.com/GordonBeeming/pokemon/releases/download/v#{version}/pokedex-scanner-#{version}-aarch64.dmg"
  name "Pokédex Scanner"
  desc "Local scanner and art synchronizer for a private Pokémon card catalogue"
  homepage "https://github.com/GordonBeeming/pokemon"

  depends_on macos: :ventura
  app "Pokédex Scanner.app"

  zap trash: [
    "~/Library/Application Support/com.gordonbeeming.pokedex.scanner",
    "~/Library/Caches/com.gordonbeeming.pokedex.scanner",
    "~/Library/Preferences/com.gordonbeeming.pokedex.scanner.plist",
  ]
end
