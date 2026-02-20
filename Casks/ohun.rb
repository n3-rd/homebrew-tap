# typed: false
# frozen_string_literal: true

cask "ohun" do
  version "3.0.0"
  sha256 "c7ee04799e2f75f49c81de3257113f6e32abccc39497b17aef6d31f10ad2fdb1" # updated by CI on release

  url "https://github.com/n3-rd/ohun/releases/download/3.0.0/ohun_aarch64.app.tar.gz"
  name "Ohun"
  desc "Get synchronized song lyrics and sing along with your favorite songs."
  homepage "https://github.com/n3-rd/ohun"

  livecheck do
    url "https://github.com/n3-rd/ohun/releases/latest"
    strategy :header
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  app "Ohun.app"
end
