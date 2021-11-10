# zarf-hivecell-demo

Demo Zarf deployment to a Hivecell

## Getting Started

1. SSH into the Hivecell
1. Run
```bash
(sudo bash -c 'apt-get install -y git git-lfs apparmor && git lfs clone https://github.com/defenseunicorns/zarf-hivecell-demo.git && cd zarf-hivecell-demo && chmod +x ./deploy.sh && ./deploy.sh')
```
1. That's it! Use `sudo k9s` to poke around. Try running `curl https://localhost:443`, you should see stuff like "DOS Game!" and "DOOM.EXE" (that's the entry HTML for running Doom in WASM). Maybe try running `ssh -R 443:localhost:8443` and run Doom on your own browser at https://localhost:8443!
