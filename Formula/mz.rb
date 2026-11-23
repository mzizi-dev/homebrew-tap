class Mz < Formula
  desc "Mzizi CLI: add registry components, check the Bundu floor, plan with fundi"
  homepage "https://mzizi.dev"
  license "Apache-2.0"

  base = "https://github.com/mzizi-dev/mzizi-cli/releases/download/v0.14.2"

  on_macos do
    on_arm do
      url "#{base}/mz-aarch64-apple-darwin"
      sha256 "f1200daa34b94ed18f09575f1f86ea7d29267c279bfff643779d10d227a6d18f"
    end
    on_intel do
      url "#{base}/mz-x86_64-apple-darwin"
      sha256 "916f4a7a774ce1d263ce88e1eeafa74f2c0950c5e4d2d2db623cfb8936419421"
    end
  end

  on_linux do
    on_arm do
      url "#{base}/mz-aarch64-unknown-linux-gnu"
      sha256 "63da29e190c2a586ad2c8bc0ca77d233bc75de784bc972225e78afecd25cc15c"
    end
    on_intel do
      url "#{base}/mz-x86_64-unknown-linux-gnu"
      sha256 "03430a58eda031cdecbe891f6ebc310b089180712199e9c712baee9da9ab2047"
    end
  end

  def install
    # The release asset is the bare binary, named mz-<triple>.
    bin.install Dir["mz-*"].first => "mz"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/mz --version").strip
  end
end
