# Device Security

Security for **all devices** — PCs, phones, routers, IoT, printers, smart home.

---

## Device Categories

| Device | Main risks | Module |
|--------|------------|--------|
| PC / Laptop | Malware, theft | [pc-security/](../pc-security/) |
| Phone / Tablet | App malware, loss | [mobile-security/](../mobile-security/) |
| Home router | Default passwords, firmware | This module |
| IoT (cameras, speakers) | Botnets, privacy | This module |
| USB drives | Autorun malware | This module |
| Work laptop (MDM) | Policy compliance | 07-project-management |

---

## Router Security (Everyone Should Do)

1. Change **default admin password**
2. Update **firmware**
3. Use **WPA3** (or WPA2-AES minimum)
4. Disable **WPS**
5. Guest network for visitors
6. Disable **remote admin** from internet

---

## IoT Security

- Change default credentials on every device
- Isolate IoT on separate WiFi VLAN if possible
- Disable features you don't use (UPnP, remote access)
- Buy from vendors with update policies

---

## Endpoint Security (Enterprise)

| Tool type | Purpose |
|-----------|---------|
| EDR | Detect/respond to threats |
| MDM | Manage mobile devices |
| DLP | Prevent data exfiltration |

---

## Learning Tracks

[01-beginner/](./01-beginner/) through [08-stack-switching/](./08-stack-switching/)

---

*Start with [pc-security/](../pc-security/) + [mobile-security/](../mobile-security/)*
