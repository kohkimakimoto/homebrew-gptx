class Gptx < Formula
    version '0.1.0'
    homepage 'https://github.com/kohkimakimoto/gptx'
  
    on_macos do
      if Hardware::CPU.arm?
        url 'https://github.com/kohkimakimoto/gptx/releases/download/v0.1.0/gptx_v0.1.0_darwin_arm64.zip'
        sha256 '72da55f1f6f7d215c07a43ae285c56133681e1fc144fc081ec56563a7b7810a0'
      end
      if Hardware::CPU.intel?
        url 'https://github.com/kohkimakimoto/gptx/releases/download/v0.1.0/gptx_v0.1.0_darwin_amd64.zip'
        sha256 '36443862473e1810b97edea1bc462986e1806cd19498b662f7ebdd17e7060b92'
      end
    end

    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url 'https://github.com/kohkimakimoto/gptx/releases/download/v0.1.0/gptx_v0.1.0_linux_arm64.tar.gz'
        sha256 '339f85ad7037b030bb09e45b22dffd1d48804e9ace6b0dfba9e505ac1125b14b'
      end
      if Hardware::CPU.intel?
        url 'https://github.com/kohkimakimoto/gptx/releases/download/v0.1.0/gptx_v0.1.0_linux_amd64.tar.gz'
        sha256 '5ba77edc10c172f40aa38c4cd6aae44463669070bab3eadb78ba4175039ddd99'
      end
    end

    def install
      bin.install 'gptx'
    end
  end