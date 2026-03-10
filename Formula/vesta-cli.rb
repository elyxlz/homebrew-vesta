class VestaCli < Formula
  desc "CLI for managing the Vesta autonomous AI agent"
  homepage "https://github.com/elyxlz/vesta"
  version "0.1.63"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/elyxlz/vesta/releases/download/v0.1.63/vesta-aarch64-apple-darwin.tar.gz"
      sha256 "56d2685393277833746d6da720ac89842fc27e0e5da1a1d9a70159e76fbbb1a7"
    end
    on_intel do
      url "https://github.com/elyxlz/vesta/releases/download/v0.1.63/vesta-x86_64-apple-darwin.tar.gz"
      sha256 "0a9adf9d0cf2809a54f01ced83ddabf6e2f37d8f34caac658787ee0a3e44ae27"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/elyxlz/vesta/releases/download/v0.1.63/vesta-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "832968cd525614fc97214a787d662d93390c9eaedecfd6fe02f6793fb845bf09"
    end
    on_intel do
      url "https://github.com/elyxlz/vesta/releases/download/v0.1.63/vesta-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "23104c8d1170deb230b004df3e886c34687e9c139ceb57253ede87f275caa70d"
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
