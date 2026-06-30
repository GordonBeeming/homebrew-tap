cask "ssmsx" do
  version "0.1-beta.4"
  sha256 "a0fd303ce0bbb876243108950dbe6b0fbc7379acf74e7072941d1fd61530c8a1"

  url "https://github.com/gordonbeeming/ssmsx/releases/download/v0.1-beta.4/ssmsx-0.1-beta.4-aarch64.dmg"
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
