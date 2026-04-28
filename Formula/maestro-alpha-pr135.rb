class MaestroAlphaPr135 < Formula
  desc "Maestro CLI (alpha PR #135)"
  homepage "https://github.com/dunkinfrunkin/maestro"
  version "alpha-pr135"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr135/maestro_darwin_arm64.tar.gz"
      sha256 "f2f70006613c6430c7635855fa48de4df6a63fe0d9c8a4114776f78b461a1a20"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr135/maestro_darwin_amd64.tar.gz"
      sha256 "47730086fe875ba1a1ab858904585b92a64e8830db30ed5262233289a6c69ea7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr135/maestro_linux_arm64.tar.gz"
      sha256 "3d72b365af6ae98a35326576490ef7985ac77539a19215df82bc1b9dfafe08dc"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr135/maestro_linux_amd64.tar.gz"
      sha256 "178795dedf82ba738e7c299fa03232c97f03da8355468c8173feab1844aef25f"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
