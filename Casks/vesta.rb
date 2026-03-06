cask "vesta" do
  version "0.1.58"

  on_arm do
    url "https://github.com/elyxlz/vesta/releases/download/v0.1.58/Vesta_0.1.58_aarch64.dmg"
    sha256 "84b9680c81a1e5f1d8d491f2c4d1dae6f201f1f2486e9bd3f6be3b23423c046e"
  end

  on_intel do
    url "https://github.com/elyxlz/vesta/releases/download/v0.1.58/Vesta_0.1.58_x64.dmg"
    sha256 "e75d8eea3c8f13d813352cae42129ac44f8d9352cba21d885cadbf3a72984b0a"
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
