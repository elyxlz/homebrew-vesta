class VestaCli < Formula
  desc "CLI for managing the Vesta autonomous AI agent"
  homepage "https://github.com/elyxlz/vesta"
  version "0.1.77"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/elyxlz/vesta/releases/download/v0.1.77/vesta-aarch64-apple-darwin.tar.gz"
      sha256 "3e722faa05abec3325dca05e05368571dedc0efbaefdbb4cc46b63f4bdb608cf"
    end
    on_intel do
      url "https://github.com/elyxlz/vesta/releases/download/v0.1.77/vesta-x86_64-apple-darwin.tar.gz"
      sha256 "19e55f455b5276f8baa8374a5b99a3f66791303d2d5be6f7111a4815699e3c7a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/elyxlz/vesta/releases/download/v0.1.77/vesta-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "61e2c4733c513e312f01709bc461190b8b596086c2317e91e5e1a11644f6af34"
    end
    on_intel do
      url "https://github.com/elyxlz/vesta/releases/download/v0.1.77/vesta-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "79c24de4b5a4d43220dcb8c5ce91120bb07b157fe6d01e413757c950e52763d9"
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
