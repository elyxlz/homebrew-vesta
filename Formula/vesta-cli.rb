class VestaCli < Formula
  desc "CLI for managing the Vesta autonomous AI agent"
  homepage "https://github.com/elyxlz/vesta"
  version "0.1.57"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/elyxlz/vesta/releases/download/v0.1.57/vesta-aarch64-apple-darwin.tar.gz"
      sha256 "ae56aee472ba8d974b80077d1ee5c4199428d54188ba51494569e338bb0bbc34"
    end
    on_intel do
      url "https://github.com/elyxlz/vesta/releases/download/v0.1.57/vesta-x86_64-apple-darwin.tar.gz"
      sha256 "73a867bf5d807066a39d1c26c8a31a7c6bc647e1827836388f0b424c0526318b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/elyxlz/vesta/releases/download/v0.1.57/vesta-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6b449aef834cbe7628d4e0ad0f8e1d4ca9a3f5af76873ba45c8e68f7113a755e"
    end
    on_intel do
      url "https://github.com/elyxlz/vesta/releases/download/v0.1.57/vesta-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7b93d433591e95777f135e5711b733b07c40d4e50813d0d3d30217c542ed4638"
    end
  end

  def install
    bin.install "vesta"
    bin.install "vfkit" if File.exist?("vfkit")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vesta --version")
  end
end
