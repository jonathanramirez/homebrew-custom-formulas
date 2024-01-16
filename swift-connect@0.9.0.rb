class SwiftConnectAT090 < Formula
  desc "Description of the swift-connect tool"
  homepage "https://example.com"
  url "https://github.com/connectrpc/connect-swift/releases/download/0.9.0/protoc-gen-connect-swift.tar.gz"
  sha256 "30e2ecc6c4854f5a22bc224c2351d23607a0363bfe57192dfcd45f10d73af9ef"
  version "0.9.0"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = HOMEBREW_CACHE/"go_cache"
    system "sh", "make/buf/scripts/brew.sh", ".build/brew"
    prefix.install Dir[".build/brew/*"]
  end

  test do
    system "#{bin}/buf --version"
  end
end
