class MaestroAlphaPr139 < Formula
  desc "Maestro CLI (alpha PR #139)"
  homepage "https://github.com/dunkinfrunkin/maestro"
  version "alpha-pr139"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr139/maestro_darwin_arm64.tar.gz"
      sha256 "90f9461d6ff409ef55951a3796a49c53ff7e5ebdc7ba4d20120d502fd17ba04b"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr139/maestro_darwin_amd64.tar.gz"
      sha256 "aafbada308fb2193ee8699bbc02ccb492224b8db6895d1eaf3e38fd0a7268264"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr139/maestro_linux_arm64.tar.gz"
      sha256 "fea6aba1af11763a9b684bfc002e705ab346efd7dd778b5f495ad99717b35b58"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha-pr139/maestro_linux_amd64.tar.gz"
      sha256 "ad75c865e758cd524dd2a46e585640235301a91ed102763cbe200345c3f57844"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
