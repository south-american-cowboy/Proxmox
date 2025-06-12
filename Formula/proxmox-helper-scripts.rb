class ProxmoxHelperScripts < Formula
  desc "Proxmox VE Helper Scripts"
  homepage "https://github.com/south-american-cowboy/proxmox"
  head "https://github.com/south-american-cowboy/proxmox.git", branch: "main"

  def install
    bin.install Dir["ct/*.sh"]
    bin.install Dir["vm/*.sh"]
    bin.install Dir["turnkey/*.sh"]
    bin.install Dir["install/*.sh"]
    bin.install Dir["misc/**/*.sh"]
  end

  test do
    system "#{bin}/turnkey.sh", "--help"
  end
end
