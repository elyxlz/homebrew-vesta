class VestaCli < Formula
  desc "CLI for managing the Vesta autonomous AI agent"
  homepage "https://github.com/elyxlz/vesta"
  version "0.1.76"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/elyxlz/vesta/releases/download/v0.1.76/vesta-aarch64-apple-darwin.tar.gz"
      sha256 "695f300998ddf0263ab52191f3aa1f298fac10b54ca78770ebc0d5fbac0f957f"
    end
    on_intel do
      url "https://github.com/elyxlz/vesta/releases/download/v0.1.76/vesta-x86_64-apple-darwin.tar.gz"
      sha256 "048235cacb21feccbfe1f0a6439ed5ffe2b88af78807b58e20f339b0a32a75b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/elyxlz/vesta/releases/download/v0.1.76/vesta-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d0a52f59d83b0c5af08f589e2670faeca17395dcdb55225ae0caadf32973b352"
    end
    on_intel do
      url "https://github.com/elyxlz/vesta/releases/download/v0.1.76/vesta-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8c432caab96cd836ab71cba5ec913ab035756473b10bb77a614b013455a4486a"
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
