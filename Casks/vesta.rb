cask "vesta" do
  version "0.1.77"

  on_arm do
    url "https://github.com/elyxlz/vesta/releases/download/v0.1.77/Vesta_0.1.77_aarch64.dmg"
    sha256 "19b7828547a54148b9a7589979e36fb7a789b767e591f94ab373ac74faaaf15a"
  end

  on_intel do
    url "https://github.com/elyxlz/vesta/releases/download/v0.1.77/Vesta_0.1.77_x64.dmg"
    sha256 "2b7b531332b846ba3b33029c13674274efac546050dda12c265c3b05b623d221"
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
