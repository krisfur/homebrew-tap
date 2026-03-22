class Fex < Formula
  desc "Universal interactive package search TUI"
  homepage "https://github.com/krisfur/fex"
  url "https://github.com/krisfur/fex/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "6cc0bdf1dcd3999f18910a480ea06c0a4c097388c77a41520a34d5fa07986f92"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fex -V")
  end
end
