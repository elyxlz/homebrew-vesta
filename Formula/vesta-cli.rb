class VestaCli < Formula
  desc "CLI for managing the Vesta autonomous AI agent"
  homepage "https://github.com/elyxlz/vesta"
  version "0.1.58"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/elyxlz/vesta/releases/download/v0.1.58/vesta-aarch64-apple-darwin.tar.gz"
      sha256 "09188af60d7996aba9b9bf098509522aea9f87f3b60300a544c04934f2c497f0"
    end
    on_intel do
      url "https://github.com/elyxlz/vesta/releases/download/v0.1.58/vesta-x86_64-apple-darwin.tar.gz"
      sha256 "8d8c5b72ed16fc1cf9cd679d1f3420ca89cb7a6b2554907932b2b473f3b42b1c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/elyxlz/vesta/releases/download/v0.1.58/vesta-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1a54d418bb09a83e52dba3ccb383a3dbebdf0b5f0c32e1039c0959548ceefcda"
    end
    on_intel do
      url "https://github.com/elyxlz/vesta/releases/download/v0.1.58/vesta-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "938dbd0ce4372aac8d36abe73394986b5e2398aa50b7d820ec94b6b30d2af799"
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
