cask "pokedex-scanner" do
  version "0.2"
  sha256 "9ac5bd25b58cbe6459bc64e64128b2d6306a8524a2e0343dfd52459b4973c1d6"

  url "https://github.com/GordonBeeming/pokemon/releases/download/v#{version}/pokedex-scanner-#{version}-aarch64.dmg"
  name "Pokédex Scanner"
  desc "Local scanner and art synchronizer for a private Pokémon card catalogue"
  homepage "https://github.com/GordonBeeming/pokemon"

  depends_on macos: :ventura
  app "Pokédex Scanner.app"

  postflight do
    if File.executable?("/usr/bin/gktool")
      system_command "/usr/bin/gktool",
                     args:         ["scan", "#{appdir}/Pokédex Scanner.app"],
                     must_succeed: true
    end
  end

  zap trash: [
    "~/Library/Application Support/com.gordonbeeming.pokedex.scanner",
    "~/Library/Caches/com.gordonbeeming.pokedex.scanner",
    "~/Library/Preferences/com.gordonbeeming.pokedex.scanner.plist",
  ]
end
