cask "vesta" do
  version "0.1.51"

  on_arm do
    url "https://github.com/elyxlz/vesta/releases/download/v0.1.51/Vesta_0.1.51_aarch64.dmg"
    sha256 "0997c09d8d7b2779ce6c6a17508b075eb02e05df649ac2368700009eed18fd3f"
  end

  on_intel do
    url "https://github.com/elyxlz/vesta/releases/download/v0.1.51/Vesta_0.1.51_x64.dmg"
    sha256 "da12fd87eed99ccf60ab91636621095bac8e75e4957c916c751bf36449935943"
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
