class Kit < Formula
  desc "Share AI coding skills, hooks, and config across tools and teams"
  homepage "https://github.com/dunkinfrunkin/kit"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dunkinfrunkin/kit/releases/download/v#{version}/kit_darwin_arm64.tar.gz"
      sha256 "79dcd82e6096e976f36959ea57039053878f5201da031f0e6545cbf2566be912"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/kit/releases/download/v#{version}/kit_darwin_amd64.tar.gz"
      sha256 "6bc67b5fb6422a11e16ea5108229b831d95fadaaa5689a599404881f0b228c45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dunkinfrunkin/kit/releases/download/v#{version}/kit_linux_arm64.tar.gz"
      sha256 "324abb4e41bfffc259b82efb4df0cd2599cb7b3458728e6d6bb13952d5b95e9b"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/kit/releases/download/v#{version}/kit_linux_amd64.tar.gz"
      sha256 "03ad01f46bf8dbefb8df1c59932156c59bf324b3e9093fc8e2dc20a33cfed2cd"
    end
  end

  def install
    bin.install "kit"
  end

  test do
    assert_match "kit", shell_output("#{bin}/kit --help")
  end
end
