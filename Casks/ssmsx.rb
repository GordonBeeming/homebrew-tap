cask "ssmsx" do
  version "0.1-beta.8"
  sha256 "8d93de95202fe14d29f7a70d1f8242d961af3d996db01ebad4666ea2b40ae7f9"

  url "https://github.com/gordonbeeming/ssmsx/releases/download/v0.1-beta.8/ssmsx-0.1-beta.8-aarch64.dmg"
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
