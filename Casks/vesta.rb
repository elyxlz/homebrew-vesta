cask "vesta" do
  version "0.1.76"

  on_arm do
    url "https://github.com/elyxlz/vesta/releases/download/v0.1.76/Vesta_0.1.76_aarch64.dmg"
    sha256 "8a179e7cfa9d5d9fcdbef2b311971220d1d4203572860aa788c6695d828d6512"
  end

  on_intel do
    url "https://github.com/elyxlz/vesta/releases/download/v0.1.76/Vesta_0.1.76_x64.dmg"
    sha256 "6ee4abe447560cf197affec28df763f9f3be9ba9d21fba7811cac74e79101689"
  end

  name "Vesta"
  desc "Autonomous AI agent manager"
  homepage "https://github.com/elyxlz/vesta"

  app "Vesta.app"

  zap trash: [
    "~/Library/Application Support/com.vesta.app",
    "~/Library/Caches/com.vesta.app",
  ]
end
