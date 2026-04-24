class Maestro < Formula
  desc "Autonomous coding agent orchestration for engineering teams"
  homepage "https://github.com/dunkinfrunkin/maestro"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_darwin_arm64.tar.gz"
        sha256 "430134f908c6df004e69aa47a7837fd8ca5654fe1f0aefe4f28a07b514435940"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_darwin_amd64.tar.gz"
        sha256 "3d029298abb2f022a3fd7ee929c1248e91b5dc3868b31cc7b200769aa183bed3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_linux_arm64.tar.gz"
        sha256 "27342306f9f35dc6b0f2b7ebe3a45086f07805eb1c31564ae50315792993f43d"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/maestro/releases/download/v#{version}/maestro_linux_amd64.tar.gz"
        sha256 "2174eecb42cb1d1acb11270246daef18a4022c219850fbc004fd86b2e3b5df4f"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    assert_match "maestro", shell_output("#{bin}/maestro --help")
  end
end
