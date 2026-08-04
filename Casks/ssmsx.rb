cask "ssmsx" do
  version "0.2-beta.4"
  sha256 "80de5aedeb15929f8621eda9a1c522e2aa26ed976b3561f6e4abee044012e9a8"

  url "https://github.com/gordonbeeming/ssmsx/releases/download/v0.2-beta.4/ssmsx-0.2-beta.4-aarch64.dmg"
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
