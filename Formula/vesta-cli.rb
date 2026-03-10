class VestaCli < Formula
  desc "CLI for managing the Vesta autonomous AI agent"
  homepage "https://github.com/elyxlz/vesta"
  version "0.1.64"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/elyxlz/vesta/releases/download/v0.1.64/vesta-aarch64-apple-darwin.tar.gz"
      sha256 "62931ed5bb0394c9f76218063c02af3305d57205783c9410f061d2860f52f348"
    end
    on_intel do
      url "https://github.com/elyxlz/vesta/releases/download/v0.1.64/vesta-x86_64-apple-darwin.tar.gz"
      sha256 "bcd8cbe267da04a81eef6ef8cb0907a163dd598597cbcaf800fd715fbdf25609"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/elyxlz/vesta/releases/download/v0.1.64/vesta-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "de240343128fd9b19f88218e3af185994a798c85653cab297a66a3cdc81ae100"
    end
    on_intel do
      url "https://github.com/elyxlz/vesta/releases/download/v0.1.64/vesta-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c7c4a5197e10988046c3f472e40ba888641b50678b3ba8d23e7f73b9cdf91266"
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
