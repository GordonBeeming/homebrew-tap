cask "ssmsx" do
  version "0.1-beta.7"
  sha256 "592561c8a13e9296b3bd7bc4542b463061a837156f9f9be63f1263864ee046d4"

  url "https://github.com/gordonbeeming/ssmsx/releases/download/v0.1-beta.7/ssmsx-0.1-beta.7-aarch64.dmg"
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
