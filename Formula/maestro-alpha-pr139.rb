class MaestroAlphaPr139 < Formula
  desc "Maestro CLI (alpha PR #139)"
  homepage "https://github.com/dunkinfrunkin/maestro"
  version "alpha-pr139"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr139/maestro_darwin_arm64.tar.gz"
      sha256 "abe920ddf6d1cbdcd4ab0451ffad861d9bb286bbbd50d1ae9c3453628ead9b0c"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr139/maestro_darwin_amd64.tar.gz"
      sha256 "1958df38c32e4875718cd732723ad2933fd0ff6f211d9ff744959ec3a55f682f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr139/maestro_linux_arm64.tar.gz"
      sha256 "5c19bf3021ea900ca3c018afb19d83ee2249e988b2f954eea43ad4a36b68c04c"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr139/maestro_linux_amd64.tar.gz"
      sha256 "fe0b1bf0989e090bd0138753316e6f7ccbe232e1f90fcbb954936abad4c6da7a"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
