# typed: false
# frozen_string_literal: true

class Mdcat < Formula
  desc "Terminal pager for Markdown with syntax highlighting and search"
  homepage "https://github.com/dunkinfrunkin/mdcat"
  url "https://registry.npmjs.org/@dunkinfrunkin/mdcat/-/mdcat-0.1.8.tgz"
  sha256 "9d9a47a067569bfa6496371c57ce696b694a43c1d2df4a20d699e976e005c34a"
  license "MIT"
  version "0.1.8"

  depends_on "node"

  def install
    system "npm", "install", "--production", "--ignore-scripts"
    libexec.install Dir["*"]
    (bin/"mdcat").write <<~SH
      #!/bin/sh
      exec "#{Formula["node"].opt_bin}/node" "#{libexec}/src/cli.js" "$@"
    SH
    chmod 0755, bin/"mdcat"
  end

  test do
    (testpath/"test.md").write "# Hello\n\nWorld"
    assert_match "Hello", shell_output("#{bin}/mdcat #{testpath}/test.md 2>&1 || true")
  end
end
