# zarf-hivecell-demo

Deploy the classic 1993 game DOOM to a Hivecell using Zarf!

## Getting Started

1. SSH into the Hivecell
1. (If it's a fresh unit) `sudo unminimize`
1. Run
```bash
(sudo bash -c 'apt-get install -y git git-lfs apparmor && git lfs clone https://github.com/defenseunicorns/zarf-hivecell-demo.git && cd zarf-hivecell-demo && chmod +x ./deploy.sh && ./deploy.sh')
```
1. That's it! Use `k9s` (after running `sudo su`) to poke around. Try running `curl https://localhost:443`, you should see stuff like "DOS Game!" and "DOOM.EXE" (that's the entry HTML for running Doom in WASM).
