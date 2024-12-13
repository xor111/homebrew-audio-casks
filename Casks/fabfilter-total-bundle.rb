cask "fabfilter-total-bundle" do
  version :latest
  sha256 :no_check

  url "https://cdn-b.fabfilter.com/downloads/fftotalbundle.dmg"
  name "FabFilter Total Bundle"
  desc "Professional audio plugin suite for mixing and mastering"
  homepage "https://www.fabfilter.com/products/totalbundle"

  pkg "FabFilter Total Bundle Installer.pkg"

  uninstall pkgutil: "com.fabfilter.*"

  zap trash: [
    "~/Library/Application Support/FabFilter",
    "~/Library/Preferences/com.fabfilter.*.plist",
    "~/Library/Caches/com.fabfilter.*",
  ]
end