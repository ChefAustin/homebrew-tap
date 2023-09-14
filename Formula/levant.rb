class Levant < Formula
  desc "Levant"
  homepage "https://github.com/hashicorp/levant"
  version "0.3.2"

  if OS.mac?
    url "https://releases.hashicorp.com/levant/0.3.2/levant_0.3.2_darwin_amd64.zip"
    sha256 "7406a9f089227254f3ed7eb4f67d22dc28c44b41f2233391b5f0d3ffa1be861e"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://releases.hashicorp.com/levant/0.3.2/levant_0.3.2_darwin_arm64.zip"
    sha256 "1cc92271029937e22b48bf9bf4e9be5b16c0864bdccb43cd3e709d99cd12808a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://releases.hashicorp.com/levant/0.3.2/levant_0.3.2_linux_amd64.zip"
    sha256 "1e06180f8d8327e721e2ad4c9637d1f391034a22709473b8ed8ee19f1cad1570"
  end

  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://releases.hashicorp.com/levant/0.3.2/levant_0.3.2_linux_arm.zip"
    sha256 "3c511d66e9018fdfefb179f5558f1639aa25f2a3a3376b7033f10a505f3c09a2"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://releases.hashicorp.com/levant/0.3.2/levant_0.3.2_linux_arm64.zip"
    sha256 "8cb3c3c10b5415704964b437d85a2f26091bf25e8575df76403874eee78934b1"
  end

  conflicts_with "levant"

  def install
    bin.install "levant"
  end

  test do
    system "#{bin}/levant --version"
  end
end
