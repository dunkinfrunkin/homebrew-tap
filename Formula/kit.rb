class Kit < Formula
  desc "Share AI coding skills, hooks, and config across tools and teams"
  homepage "https://github.com/dunkinfrunkin/kit"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dunkinfrunkin/kit/releases/download/v#{version}/kit_darwin_arm64.tar.gz"
      sha256 "707b477bbc67e87bd85e9ed76014c476288bccef3a059faa5c9cbb233beb1726"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/kit/releases/download/v#{version}/kit_darwin_amd64.tar.gz"
      sha256 "234f6d9e5ce9e90d31d34afc94a78b5615275238ab9f6e68a82faa657abe6cba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dunkinfrunkin/kit/releases/download/v#{version}/kit_linux_arm64.tar.gz"
      sha256 "6ddb625778e09a9ad38269b7297c4d15dc2affee630e8e1d22e649cda78e7090"
    end
    on_intel do
      url "https://github.com/dunkinfrunkin/kit/releases/download/v#{version}/kit_linux_amd64.tar.gz"
      sha256 "5d3019e80621607efee59724d2cda8d9932eb3661c018b62169f56a903619b84"
    end
  end

  def install
    bin.install "kit"
  end

  test do
    assert_match "kit", shell_output("#{bin}/kit --help")
  end
end
