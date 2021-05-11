# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TerraformLs < Formula
  desc "Terraform Language Server"
  homepage "https://github.com/hashicorp/terraform-ls"
  version "0.16.2"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://releases.hashicorp.com/terraform-ls/0.16.2/terraform-ls_0.16.2_darwin_amd64.zip"
    sha256 "3bb3ac5bfc9cb64fac2c36e586a1c4e30b4f7bd2779f6465916e129c817a6598"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://releases.hashicorp.com/terraform-ls/0.16.2/terraform-ls_0.16.2_darwin_arm64.zip"
    sha256 "00ac493e663b8ff39b3e9375464aec6dceab33038e112a1f04b44ea4570c8fa4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://releases.hashicorp.com/terraform-ls/0.16.2/terraform-ls_0.16.2_linux_amd64.zip"
    sha256 "4a4ed0738aca0bdc2fd5bccddc6df04fa3b3aca3684c66f636d0acfc62c60877"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://releases.hashicorp.com/terraform-ls/0.16.2/terraform-ls_0.16.2_linux_arm.zip"
    sha256 "6384b69e4605d1f58b1d89e5652ccb911d733f0b682f81a338ae65737e24a2fd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://releases.hashicorp.com/terraform-ls/0.16.2/terraform-ls_0.16.2_linux_arm64.zip"
    sha256 "812c27caa20a306dec7fb0d2c7b7187c9f113d3804ff073b226ce6ba86a7e195"
  end

  conflicts_with "terraform-ls"

  def install
    bin.install "terraform-ls"
  end

  test do
    system "#{bin}/terraform-ls --version"
  end
end
