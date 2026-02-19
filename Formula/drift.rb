class Drift < Formula
  desc "Fast, open-source database migration tool with undo, dry-run, diff, and linting"
  homepage "https://github.com/dunkinfrunkin/drift"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dunkinfrunkin/drift/releases/download/v#{version}/drift_darwin_arm64.tar.gz"
      sha256 "2874f04094199c751e1f14f17875dbb8bdc5218762dce2a280fe960d5db3b112"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/drift/releases/download/v#{version}/drift_darwin_amd64.tar.gz"
      sha256 "ba24cef186b30c4f9588922d327431633df9af37d2ea8d727242c23db3f0426f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dunkinfrunkin/drift/releases/download/v#{version}/drift_linux_arm64.tar.gz"
      sha256 "7dfaef97df8a99bf968e0c02b17b593f49ef901d0db6e116a660f1b8fe047fea"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/drift/releases/download/v#{version}/drift_linux_amd64.tar.gz"
      sha256 "b991ebc32779351cfb77ad9b965590762f7fe555fe43a8f4c55e69d6c12932e2"
    end
  end

  def install
    bin.install "drift"
  end

  test do
    assert_match "drift", shell_output("#{bin}/drift version")
  end
end
