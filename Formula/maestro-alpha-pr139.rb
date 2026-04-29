class MaestroAlphaPr139 < Formula
  desc "Maestro CLI (alpha PR #139)"
  homepage "https://github.com/dunkinfrunkin/maestro"
  version "alpha-pr139"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr139/maestro_darwin_arm64.tar.gz"
      sha256 "2027afd4096e61187888aa5bc09afe66146cf93312ee03ab58d8d344feefe445"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr139/maestro_darwin_amd64.tar.gz"
      sha256 "c1494b0e5fb40867f796e1db5b40ab45fcff5166adb69ab127a2ef061b99cf69"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr139/maestro_linux_arm64.tar.gz"
      sha256 "1712c6152143f6745a81d9a3d91051413c5d9187afd77a960b785001032f946a"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr139/maestro_linux_amd64.tar.gz"
      sha256 "dbe231901df3409127acc2231472d1fb12196219e81ee9e776175ddb35f7d3c8"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
