cask "vesta" do
  version "0.1.63"

  on_arm do
    url "https://github.com/elyxlz/vesta/releases/download/v0.1.63/Vesta_0.1.63_aarch64.dmg"
    sha256 "b002c64da458851a2ccf44e59efd0be58fbdbb52c1dd427b3206da4d83780c73"
  end

  on_intel do
    url "https://github.com/elyxlz/vesta/releases/download/v0.1.63/Vesta_0.1.63_x64.dmg"
    sha256 "bc0ac6c05157021009ccacffe6c2753b7f6ab094c22eefaf0539da604e5f661b"
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
