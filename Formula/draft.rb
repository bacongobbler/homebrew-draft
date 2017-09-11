class Draft < Formula
  desc "A tool for developers to create cloud-native applications on Kubernetes."
  homepage "https://github.com/Azure/draft"
  version "v0.6.0"
  url "https://github.com/Azure/draft/releases/download/v0.6.0/draft-v0.6.0-darwin-amd64.tar.gz"
  sha256 "44f758fde26eaaf40d2cde2edb87cec0f0669dfeaf451a86d8a6788097dba187"

  depends_on "kubernetes-helm"

  def install
    bin.install "draft"
  end

  def post_install
    system "#{bin}/draft", "init", "--client-only"
  end

  test do
    system "#{bin}/draft", "version", "--client"
  end
end