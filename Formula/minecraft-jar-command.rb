class MinecraftJarCommand < Formula
  desc "Minecraft on Apple Silicon"
  homepage "https://github.com/ezfe/minecraft-jar-command"
  head "https://github.com/ezfe/minecraft-jar-command.git"

  stable do
    version "v2.3.2"
    url "https://github.com/ezfe/minecraft-jar-command/archive/#{version}.tar.gz"
    sha256 "90d60e8c2cf2b8af5581caf146e51755c7e59dd03142a225f9fa4b64e8b56e95"
  end

  depends_on "openjdk"
  depends_on xcode: "12"

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    mv ".build/release/minecraft-jar-command", "minecraft-jar-command"
    bin.install "minecraft-jar-command"
  end
end
