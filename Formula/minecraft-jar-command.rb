class MinecraftJarCommand < Formula
  desc "Minecraft on Apple Silicon"
  homepage "https://github.com/ezfe/minecraft-jar-command"
  head "https://github.com/ezfe/minecraft-jar-command.git"

  stable do
    version "v2.3.3"
    url "https://github.com/ezfe/minecraft-jar-command/archive/#{version}.tar.gz"
    sha256 "b02819a6896d8a57eb401b6f8cedb2ed65aecf903edd3acb80cea261d8122a04"
  end

  # depends_on "openjdk@8"
  depends_on xcode: "12"

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    mv ".build/release/minecraft-jar-command", "minecraft-jar-command"
    bin.install "minecraft-jar-command"
  end
end
