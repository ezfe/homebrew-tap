class MinecraftJarCommand < Formula
  desc "Minecraft on Apple Silicon"
  homepage "https://github.com/ezfe/minecraft-jar-command"
  head "https://github.com/ezfe/minecraft-jar-command.git"

  stable do
    version "v2.2.0"
    url "https://github.com/ezfe/minecraft-jar-command/archive/#{version}.tar.gz"
    sha256 "faa3bebc11ad9e04a21caf6d525db5f1cdf0a3569069a06f0e21a45f340d30db"
  end

  depends_on "openjdk"
  depends_on xcode: "12"

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    mv ".build/release/minecraft-jar-command", "minecraft-jar-command"
    bin.install "minecraft-jar-command"
  end
end
