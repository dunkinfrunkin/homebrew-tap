class Maestro < Formula
  desc "Autonomous coding agent orchestration for engineering teams"
  homepage "https://github.com/dunkinfrunkin/maestro"
  version "0.49.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_darwin_arm64.tar.gz"
      sha256 "24771806c8a90572734ebeb4eb7f4e3a59bba637ea0b5185ab4e457572c2e074"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_darwin_amd64.tar.gz"
      sha256 "5246a65d890212ad32d39c1b1c384640ec73ee1b4e0486c703942d486f396280"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_linux_arm64.tar.gz"
      sha256 "6f05e140b6fc60de500f4d59fd866b3425ea7423dd175df855a6febcc4bcdfe8"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_linux_amd64.tar.gz"
      sha256 "0b4b7b623ac0ac3df498696b65ef6c47a5f2b3fe6e6ee57cc6d931f3bdc1c3a9"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
