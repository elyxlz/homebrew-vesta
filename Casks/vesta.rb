cask "vesta" do
  version "0.1.57"

  on_arm do
    url "https://github.com/elyxlz/vesta/releases/download/v0.1.57/Vesta_0.1.57_aarch64.dmg"
    sha256 "24b485a0a508b88f89202709883d1cdcb0ff49a4ba88509c0fc4421a8124b8db"
  end

  on_intel do
    url "https://github.com/elyxlz/vesta/releases/download/v0.1.57/Vesta_0.1.57_x64.dmg"
    sha256 "9db53d8676ebbcdc9a113e3bfea63ac58230c12603e8647799c8b1beff720a35"
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
