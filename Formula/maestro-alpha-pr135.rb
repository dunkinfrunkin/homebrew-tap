class MaestroAlphaPr135 < Formula
  desc "Maestro CLI (alpha PR #135)"
  homepage "https://github.com/dunkinfrunkin/maestro"
  version "alpha-pr135"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr135/maestro_darwin_arm64.tar.gz"
      sha256 "4845ab6f6e4168aaf27ba4dde9b99fd68f049893815022cc163744ffcf28675a"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr135/maestro_darwin_amd64.tar.gz"
      sha256 "e563bde123a074f7bb61be990cd365d2b37ee0f70722e23a44b5a541e999576a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr135/maestro_linux_arm64.tar.gz"
      sha256 "06dde492c606263fe3522d02a06e2e5654b05ef79632829c4b2ac234d260351d"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr135/maestro_linux_amd64.tar.gz"
      sha256 "231e18d8257012bea7b21992fbac4ff4ceafaf02bd78f8cff4ea74c71819e9b5"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
