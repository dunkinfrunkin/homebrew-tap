class Drift < Formula
  desc "Fast, open-source database migration tool with undo, dry-run, diff, and linting"
  homepage "https://github.com/frankchan/drift"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/frankchan/drift/releases/download/#{version}/drift_darwin_arm64.tar.gz"
    end
    on_intel do
      url "https://github.com/frankchan/drift/releases/download/#{version}/drift_darwin_amd64.tar.gz"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/frankchan/drift/releases/download/#{version}/drift_linux_arm64.tar.gz"
    end
    on_intel do
      url "https://github.com/frankchan/drift/releases/download/#{version}/drift_linux_amd64.tar.gz"
    end
  end

  def install
    bin.install "drift"
  end

  test do
    assert_match "drift", shell_output("#{bin}/drift version")
  end
end
