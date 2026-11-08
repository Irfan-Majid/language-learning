# WebSockets & Real-Time

Live updates — chat, notifications, live scores, collaborative editing.

---

## HTTP vs WebSocket

| HTTP | WebSocket |
|------|-----------|
| Request → response | Persistent connection |
| Client always initiates | Both sides send anytime |
| Good for APIs | Good for real-time |

---

## Use Cases

- Chat applications
- Live notifications
- Multiplayer games
- Stock tickers
- Collaborative docs

---

## Node.js Example (concept)

```javascript
const WebSocket = require("ws");
const wss = new WebSocket.Server({ port: 8080 });

wss.on("connection", (ws) => {
  ws.on("message", (msg) => {
    // Broadcast to all clients
    wss.clients.forEach(client => {
      if (client.readyState === WebSocket.OPEN) client.send(msg);
    });
  });
});
```

Also: **Socket.io** (easier API on top of WebSockets)

---

## Learning Tracks

[01-beginner/](./01-beginner/)

Prerequisites: [frameworks/nodejs/](../../frameworks/nodejs/), [rest-apis/](../rest-apis/)

---

*Alternative: Server-Sent Events (SSE) for one-way server → client*
