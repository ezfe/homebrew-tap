class MinecraftJarCommand < Formula
  desc "Minecraft on Apple Silicon"
  homepage "https://github.com/ezfe/minecraft-jar-command"
  head "https://github.com/ezfe/minecraft-jar-command.git"

  stable do
    version "v2.1.0"
    url "https://github.com/ezfe/minecraft-jar-command/archive/#{version}.tar.gz"
    sha256 "c436448191568aacfc2f44b99ec46b5b31fafdf651993d70d4fbc16e47f0c69a"
  end

  depends_on "openjdk"
  depends_on xcode: "12"

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    mv ".build/release/minecraft-jar-command", "minecraft-jar-command"
    bin.install "minecraft-jar-command"
  end
end
