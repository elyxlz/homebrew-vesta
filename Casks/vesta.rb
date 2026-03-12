cask "vesta" do
  version "0.1.82"

  on_arm do
    url "https://github.com/elyxlz/vesta/releases/download/v0.1.82/Vesta_0.1.82_aarch64.dmg"
    sha256 "f807ac7e43d73dd81571d612b34c60e4f203a25c08d4da65d31bf125c9d9ec19"
  end

  on_intel do
    url "https://github.com/elyxlz/vesta/releases/download/v0.1.82/Vesta_0.1.82_x64.dmg"
    sha256 "94800586c4a8aec7e392837afee9f3baa2ab0f7949c9cae645f795a29a1bd01d"
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
