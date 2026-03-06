class VestaCli < Formula
  desc "CLI for managing the Vesta autonomous AI agent"
  homepage "https://github.com/elyxlz/vesta"
  version "0.1.58"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/elyxlz/vesta/releases/download/v0.1.58/vesta-aarch64-apple-darwin.tar.gz"
      sha256 "f259c10bca64ab723288ad92cfb364a591e1e4eb3c1823dc8653d915b24b09fb"
    end
    on_intel do
      url "https://github.com/elyxlz/vesta/releases/download/v0.1.58/vesta-x86_64-apple-darwin.tar.gz"
      sha256 "41708f99d9e54f712e30c73031d67917323c4f7e9b2e2a5dd07ba775559f4d7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/elyxlz/vesta/releases/download/v0.1.58/vesta-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a5d5de87c6615f6a175aa698d7a5975dca1e60ea6138d4ae7f621f16d396d643"
    end
    on_intel do
      url "https://github.com/elyxlz/vesta/releases/download/v0.1.58/vesta-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "84417e7eefef91d663afb2f716e7edae6bcf6e8dba61012e28fdbebf59023fc9"
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
