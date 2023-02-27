# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Copywrite < Formula
  desc "copywrite -- utilities for managing copyright headers and license files for GitHub repos"
  homepage "https://github.com/hashicorp/copywrite"
  version "0.16.2"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hashicorp/copywrite/releases/download/v0.16.2/copywrite_0.16.2_darwin_arm64.tar.gz"
      sha256 "6e1a583de3fbd3bef064c90781e5dc5b6b9fd82e6090a9b360f0ae02b322b358"

      def install
        bin.install "copywrite"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hashicorp/copywrite/releases/download/v0.16.2/copywrite_0.16.2_darwin_x86_64.tar.gz"
      sha256 "0e7589d94138524839d307cb70c9c77be7adfaca8a38282915eb15921e9e7695"

      def install
        bin.install "copywrite"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hashicorp/copywrite/releases/download/v0.16.2/copywrite_0.16.2_linux_arm64.tar.gz"
      sha256 "d232601e8aa8c022d89a5ef63055f98e4f8de6b09db98f848584319af3bd613e"

      def install
        bin.install "copywrite"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hashicorp/copywrite/releases/download/v0.16.2/copywrite_0.16.2_linux_x86_64.tar.gz"
      sha256 "3c78279d71668bec7d31dbbe5b03bed8732db70248fb8a449a0a12c317252c0f"

      def install
        bin.install "copywrite"
      end
    end
  end

  test do
    system "#{bin}/copywrite --version"
  end
end
