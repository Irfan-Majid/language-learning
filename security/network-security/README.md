# Network Security

Firewalls, VPN, TLS, DNS security — how data moves safely across networks.

---

## Core Concepts

| Concept | Purpose |
|---------|---------|
| **Firewall** | Block unauthorized traffic |
| **VPN** | Encrypted tunnel (remote work) |
| **TLS/HTTPS** | Encrypt data in transit |
| **DNS** | DNSSEC, avoid DNS hijacking |
| **IDS/IPS** | Detect intrusions |
| **Segmentation** | Isolate networks (VLANs) |
| **Zero Trust** | Never trust, always verify |

---

## Ports to Know

| Port | Service | Risk if exposed |
|------|---------|-----------------|
| 22 | SSH | Brute force |
| 80/443 | HTTP/S | Web attacks |
| 3306 | MySQL | DB breach |
| 5432 | PostgreSQL | DB breach |
| 3389 | RDP | Ransomware target |

**Rule:** Close unused ports. Use firewall.

---

## TLS Best Practices

- TLS 1.2+ only
- Valid certificates (Let's Encrypt free)
- HSTS header
- No mixed content (HTTP + HTTPS)

---

## Learning Tracks

[01-beginner/](./01-beginner/) through [08-stack-switching/](./08-stack-switching/)

Pair with: [ethical-hacking/](../ethical-hacking/), [device-security/](../device-security/)
