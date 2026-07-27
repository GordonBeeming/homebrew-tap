cask "ssmsx" do
  version "0.2-beta.1"
  sha256 "1d9521432c741b7886f61f8276c683abd48d5acf8b9e4b0902e6b051fc64d686"

  url "https://github.com/gordonbeeming/ssmsx/releases/download/v0.2-beta.1/ssmsx-0.2-beta.1-aarch64.dmg"
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
