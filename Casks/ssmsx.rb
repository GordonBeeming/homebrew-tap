cask "ssmsx" do
  version "0.4-beta.1"
  sha256 "54262c0e51148a86d2b3a0e532f28f897689d801dafd316585da32bf6f2fc01f"

  url "https://github.com/gordonbeeming/ssmsx/releases/download/v0.4-beta.1/ssmsx-0.4-beta.1-aarch64.dmg"
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
