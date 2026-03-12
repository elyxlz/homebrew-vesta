class VestaCli < Formula
  desc "CLI for managing the Vesta autonomous AI agent"
  homepage "https://github.com/elyxlz/vesta"
  version "0.1.80"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/elyxlz/vesta/releases/download/v0.1.80/vesta-aarch64-apple-darwin.tar.gz"
      sha256 "9c71ae7e31a821290a2c80bba2c01c93c6d83bf5ccfc201ab02f9853c6b180eb"
    end
    on_intel do
      url "https://github.com/elyxlz/vesta/releases/download/v0.1.80/vesta-x86_64-apple-darwin.tar.gz"
      sha256 "ac6f5bb868d2a70d65e29ca73423cc5aa23fd12f169f149df52c9de50204b2b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/elyxlz/vesta/releases/download/v0.1.80/vesta-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8224394a0d84f9aa5e9cf48baf0be2935bd109ba7a363a1d546374391e8a0e44"
    end
    on_intel do
      url "https://github.com/elyxlz/vesta/releases/download/v0.1.80/vesta-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "01153f50b2756b05d9ca96b5bfbf492bf8796055425d0887d050ecc7732028cd"
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
