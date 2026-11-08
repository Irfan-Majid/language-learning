# PC Security (Windows, Mac, Linux)

Protect **your computer** — the device you code on every day.

---

## Universal PC Security Checklist

- [ ] **OS updates** — auto-install security patches
- [ ] **Strong password** + **full-disk encryption** (BitLocker, FileVault, LUKS)
- [ ] **Firewall** enabled
- [ ] **Antivirus / EDR** — Windows Defender is fine for most; consider Malwarebytes
- [ ] **2FA** on email, GitHub, cloud accounts
- [ ] **Backup** — 3-2-1 rule (3 copies, 2 media, 1 offsite)
- [ ] **No admin for daily use** — separate admin account
- [ ] **Browser:** password manager, uBlock Origin, HTTPS only
- [ ] **Don't** run random `.exe` / scripts from internet
- [ ] **Lock screen** when away (Win+L, Ctrl+Cmd+Q)

---

## By Operating System

| OS | Key actions |
|----|-------------|
| **Windows** | Defender, BitLocker, Disable unnecessary services, Windows Update |
| **macOS** | FileVault, Gatekeeper, XProtect, SIP enabled |
| **Linux** | UFW firewall, fail2ban, minimal packages, SSH key-only |

---

## Developer-Specific Risks

| Risk | Protection |
|------|------------|
| Stolen laptop | Encryption + remote wipe |
| `.env` in git | `.gitignore`, git-secrets hook |
| npm malware | `npm audit`, review packages |
| Public WiFi | VPN for sensitive work |
| Clipboard malware | Don't copy-paste secrets |

---

## Learning Tracks

[01-beginner/](./01-beginner/) — harden your PC this week  
[02-fundamentals/](./02-fundamentals/) — encryption, backups, users  
[03-intermediate/](./03-intermediate/) — hardening guides, audit tools

---

*Related: [device-security/](../device-security/), [cybersecurity/](../cybersecurity/)*
