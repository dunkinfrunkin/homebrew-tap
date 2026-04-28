class MaestroAlpha < Formula
  desc "Maestro CLI (alpha/PR build)"
  homepage "https://github.com/dunkinfrunkin/maestro"
  version "alpha-pr135"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha/maestro_darwin_arm64.tar.gz"
      sha256 "aa925a47661e8b7e0f23d258b915d1b135fc441dc559ca35c65499ea346c2ad2"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha/maestro_darwin_amd64.tar.gz"
      sha256 "7f74bcafec5a3c44856ceeec42f76475e24aeb3094451efabfd2cfe77cf8321f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha/maestro_linux_arm64.tar.gz"
      sha256 "bc3902d9dbf73136e56a5c83148bc84f39cfb5ce074d8a6a687a542b63a1db11"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/alpha/maestro_linux_amd64.tar.gz"
      sha256 "1e474977f1c3317121b93b9958378792581bd78fd3470d94018cf3d97bb5c1fd"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
