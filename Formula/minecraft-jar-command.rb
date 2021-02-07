class MinecraftJarCommand < Formula
  desc "Minecraft on Apple Silicon"
  homepage "https://github.com/ezfe/minecraft-jar-command"
  head "https://github.com/ezfe/minecraft-jar-command.git"

  depends_on :xcode => "12"

  stable do
    version "v2.0.2"
    url "https://github.com/ezfe/minecraft-jar-command/archive/#{version}.tar.gz"
    sha256 "333a9472d2fd648a2a5831c0d004f06051c42be1d56fc8c77eabf268ef7cc8e0"
  end

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    system "mv", ".build/release/minecraft-jar-command", "minecraft-jar-command"
    bin.install "minecraft-jar-command"
  end
end