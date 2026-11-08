# Mobile Security (Phone & Tablet Security)

Secure **Android and iOS** devices — personal and work phones.

---

## Phone Security Checklist

- [ ] **Screen lock** — PIN 6+ digits, or biometrics + strong backup PIN
- [ ] **OS updates** — install promptly
- [ ] **App sources** — official stores only (avoid sideloading)
- [ ] **Permissions** — deny unnecessary (camera, mic, location)
- [ ] **Find My Device** — enable remote wipe
- [ ] **No jailbreak/root** for banking/work apps
- [ ] **VPN** on public WiFi (optional but helpful)
- [ ] **Separate** work/personal if company policy requires MDM

---

## Android Security

| Setting | Action |
|---------|--------|
| Google Play Protect | Keep enabled |
| Unknown sources | Disabled |
| Developer options | Off unless developing |
| App permissions | Review quarterly |
| Encryption | Enabled by default on modern devices |

→ Dev security: [mobile/android/](../../mobile/android/) + [mobile-security/03-intermediate/](./03-intermediate/)

---

## iOS Security

| Setting | Action |
|---------|--------|
| Face ID / Touch ID | Enabled |
| App Tracking | Limit |
| iCloud Keychain | Strong Apple ID + 2FA |
| Lockdown Mode | For high-risk users |

→ Dev security: [mobile/ios/](../../mobile/ios/)

---

## Mobile App Security (Developers)

| Issue | Fix |
|-------|-----|
| Storing tokens in plain text | Keychain / Keystore |
| HTTP API calls | HTTPS + certificate pinning |
| Sensitive data in logs | Strip in production |
| Deep link hijacking | Validate URLs |

→ [application-security/](../application-security/)

---

## Learning Tracks

[01-beginner/](./01-beginner/) through [08-stack-switching/](./08-stack-switching/)
