# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mactop < Formula
  desc "Apple Silicon Monitor Top written in Go Lang"
  homepage "https://github.com/context-labs/mactop"
  version "0.1.4"
  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/context-labs/mactop/releases/download/v0.1.4/mactop_0.1.4_darwin_arm64.tar.gz"
    sha256 "bef537e48a5682bf94f41f07f6d022c76245a744f9a11970688e303c6247fc28"

    def install
      bin.install "mactop"
    end
  end

  def caveats
    <<~EOS
      mactop requires macOS 12+, and runs only on Apple Silicon.
    EOS
  end
end