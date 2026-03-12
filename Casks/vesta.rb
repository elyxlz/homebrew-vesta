cask "vesta" do
  version "0.1.80"

  on_arm do
    url "https://github.com/elyxlz/vesta/releases/download/v0.1.80/Vesta_0.1.80_aarch64.dmg"
    sha256 "9ddb803c14a3d7251d48ca2ac831630a2723d5f3edd3fb7d06de2c55569fe74a"
  end

  on_intel do
    url "https://github.com/elyxlz/vesta/releases/download/v0.1.80/Vesta_0.1.80_x64.dmg"
    sha256 "e90859d1e0c8cf8e303bae590f6988f1b527b0bc976c61fcdbaf2347aa33176c"
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
