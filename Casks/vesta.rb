cask "vesta" do
  version "0.1.64"

  on_arm do
    url "https://github.com/elyxlz/vesta/releases/download/v0.1.64/Vesta_0.1.64_aarch64.dmg"
    sha256 "4eecf4917dfc033d55bb00eb35af8bd039ca89cf9b9c76c546f264fa58dbc28e"
  end

  on_intel do
    url "https://github.com/elyxlz/vesta/releases/download/v0.1.64/Vesta_0.1.64_x64.dmg"
    sha256 "2536f74d5172fed03a7538756a1df6ba17e16231eec0f9237d77a0ee37e09792"
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
