cask "vesta" do
  version "0.1.58"

  on_arm do
    url "https://github.com/elyxlz/vesta/releases/download/v0.1.58/Vesta_0.1.58_aarch64.dmg"
    sha256 "f99140117030a923ecdbea05957d65583556d5a85211f0f2f6aa721c092e8856"
  end

  on_intel do
    url "https://github.com/elyxlz/vesta/releases/download/v0.1.58/Vesta_0.1.58_x64.dmg"
    sha256 "94b8ed3508f599bb943277bd97965ce4ce656ddb258241f7f7b61ca08819f8e0"
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
