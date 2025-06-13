<div style="border: 2px solid #d1d5db; padding: 20px; border-radius: 8px; background-color: #f9fafb;"> <h2 align="center">Proxmox VE Helper-Scripts: A Community Legacy</h2> <p>Dear Community,</p> <p>As we prepare to archive this repository, we’re excited to announce a new home for the project: <a href="https://github.com/community-scripts/ProxmoxVE">https://github.com/community-scripts/ProxmoxVE</a>. While we’re still settling in, this will soon become the go-to place for the latest Proxmox VE scripts.</p> <p>Thank you for your continued support.</p> <br>The Community </div>
<div align="center">
  <a href="#">
    <img src="https://raw.githubusercontent.com/tteck/Proxmox/main/misc/images/logo.png" height="100px" />
 </a>
</div>
<h1 align="center">Proxmox VE Helper-Scripts</h1>

<p align="center">
  <a href="https://helper-scripts.com">Website</a> | 
  <a href="https://github.com/tteck/Proxmox/blob/main/.github/CONTRIBUTING.md">Contribute</a> |
  <a href="https://github.com/tteck/Proxmox/blob/main/USER_SUBMITTED_GUIDES.md">Guides</a> |
  <a href="https://github.com/tteck/Proxmox/blob/main/CHANGELOG.md">Changelog</a> |
  <a href="https://ko-fi.com/D1D7EP4GF">Support</a>
</p>

---

> **Fork Notice**  
> This repository began as a fork of [tteck/Proxmox](https://github.com/tteck/Proxmox).  
> It is maintained independently and will occasionally incorporate updates from the upstream project.

These scripts empower users to create a Linux container or virtual machine interactively, providing choices for both simple and advanced configurations. The basic setup adheres to default settings, while the advanced setup gives users the ability to customize these defaults.

### Generating Release Names

Use the `misc/generate_release_name.sh` script to create release tags that follow
the format `project_branch_v1.0.YY.DDD.COMMIT`. The script automatically pulls
the project and branch names from your local Git repository and appends the
current year, day of year, and commit count to build the release identifier.

```bash
./misc/generate_release_name.sh [project_name] [branch_name] [version_prefix]
```

If no arguments are provided, defaults are detected from the repository.

Options are displayed to users in a dialog box format. Once the user makes their selections, the script collects and validates their input to generate the final configuration for the container or virtual machine.
<p align="center">
Be cautious and thoroughly evaluate scripts and automation tasks obtained from external sources. <a href="https://github.com/tteck/Proxmox/blob/main/CODE-AUDIT.md">Read more</a>
</p>
<sub><div align="center"> Proxmox® is a registered trademark of Proxmox Server Solutions GmbH. </div></sub>

## Ansible Script

A minimal Ansible playbook is provided in `ansible/run_script.yml`. The playbook
executes a specified script and allows optional environment variables. Run it
like so:

```bash
ansible-playbook ansible/run_script.yml -e "script=ct/actualbudget.sh"
```

## Homebrew Tap

This repository can be used as a Homebrew tap containing a formula that
installs all available scripts.

```bash
brew tap south-american-cowboy/proxmox https://github.com/south-american-cowboy/Proxmox.git
brew install --HEAD proxmox-helper-scripts
```

If preferred, you can still install directly from the formula file:

```bash
brew install --HEAD ./Formula/proxmox-helper-scripts.rb
```

## GitHub Actions

Releases are automatically created on every push to any branch. Each release
includes the branch name and uses the version format `v.yy.ddd.N`, where `yy`
is the two-digit year, `ddd` is the day of the year, and `N` is the commit
number.


