class VestaCli < Formula
  desc "CLI for managing the Vesta autonomous AI agent"
  homepage "https://github.com/elyxlz/vesta"
  version "0.1.82"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/elyxlz/vesta/releases/download/v0.1.82/vesta-aarch64-apple-darwin.tar.gz"
      sha256 "7c20def383d33b11fd12b94b923513d1b97a870a7c95a43aa3b11f98e9b4b5a0"
    end
    on_intel do
      url "https://github.com/elyxlz/vesta/releases/download/v0.1.82/vesta-x86_64-apple-darwin.tar.gz"
      sha256 "63182cb09ba44a2a7a7cd9c18e2c974e4ec844bef1e64b816a2cb92b8e76b5ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/elyxlz/vesta/releases/download/v0.1.82/vesta-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a45f3f9f2244f02bcbab3b1c876fc7b79f6973229ab04e34f0b961886a0c6606"
    end
    on_intel do
      url "https://github.com/elyxlz/vesta/releases/download/v0.1.82/vesta-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4200df61527808ba2fb36bd113bbb524b4d4dd264bda64dec11aa32fc98177e1"
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
