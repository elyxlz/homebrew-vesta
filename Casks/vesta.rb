cask "vesta" do
  version "0.1.50"

  on_arm do
    url "https://github.com/elyxlz/vesta/releases/download/v0.1.50/Vesta_0.1.50_aarch64.dmg"
    sha256 "a1814a00f59311a833c47ef9476567d769d3c645686b9da5ffd2006b2b59cfd0"
  end

  on_intel do
    url "https://github.com/elyxlz/vesta/releases/download/v0.1.50/Vesta_0.1.50_x64.dmg"
    sha256 "7b5a10a5431856d17503defacf00d75c469ce0093cf877029cc17bd6740c651a"
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
