cask "ssmsx" do
  version "0.2-beta.2"
  sha256 "0f11416756b8a8aaa99504615dfa45e1b87679965046863484c471c0ecd1b6a4"

  url "https://github.com/gordonbeeming/ssmsx/releases/download/v0.2-beta.2/ssmsx-0.2-beta.2-aarch64.dmg"
  name "SSMSx"
  desc "Fast cross-platform SQL Server Management Studio replacement"
  homepage "https://github.com/gordonbeeming/ssmsx"

  depends_on macos: :sonoma

  app "SSMSx.app"

  zap trash: [
    "~/Library/Application Support/com.ssmsx.app",
    "~/Library/Caches/com.ssmsx.app",
    "~/Library/Preferences/com.ssmsx.app.plist",
  ]
end
