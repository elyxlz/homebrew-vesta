cask "vesta" do
  version "0.1.53"

  on_arm do
    url "https://github.com/elyxlz/vesta/releases/download/v0.1.53/Vesta_0.1.53_aarch64.dmg"
    sha256 "ca0adc5e3b8f6d354686d72f0dbd41a57c1371d8bcdb9085b40d3ddd5d289525"
  end

  on_intel do
    url "https://github.com/elyxlz/vesta/releases/download/v0.1.53/Vesta_0.1.53_x64.dmg"
    sha256 "acc3e85998e0a85cc28522dae51143585d71256ad2023a07af225c604e25273c"
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
