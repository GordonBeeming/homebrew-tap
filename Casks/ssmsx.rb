cask "ssmsx" do
  version "0.1-beta.6"
  sha256 "91f9b59ac8d81d61d8f31ed00ba53196aa76a78835e39b9a2333a039f329fd3b"

  url "https://github.com/gordonbeeming/ssmsx/releases/download/v0.1-beta.6/ssmsx-0.1-beta.6-aarch64.dmg"
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
