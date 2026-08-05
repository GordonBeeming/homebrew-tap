cask "ssmsx" do
  version "0.2-beta.5"
  sha256 "48180b2fbef7ec564d38a527a1639bd7ef313dfbd90b9cfe90b08775e4ae42e1"

  url "https://github.com/gordonbeeming/ssmsx/releases/download/v0.2-beta.5/ssmsx-0.2-beta.5-aarch64.dmg"
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
