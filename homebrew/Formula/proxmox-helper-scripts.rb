class ProxmoxHelperScripts < Formula
  desc "Proxmox VE Helper Scripts"
  homepage "https://github.com/tteck/Proxmox"
  head "https://github.com/tteck/Proxmox.git", branch: "main"

  def install
    bin.install Dir["ct/*.sh"]
    bin.install Dir["vm/*.sh"]
    bin.install Dir["turnkey/*.sh"]
  end

  test do
    system "#{bin}/turnkey.sh", "--help"
  end
end
