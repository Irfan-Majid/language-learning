# REST APIs

**REST** = standard way to build web APIs used worldwide.

---

## HTTP Methods

| Method | Action | Example |
|--------|--------|---------|
| GET | Read | Get user by ID |
| POST | Create | Create new user |
| PUT | Replace | Update entire user |
| PATCH | Partial update | Update user email |
| DELETE | Remove | Delete user |

---

## Status Codes

| Code | Meaning |
|------|---------|
| 200 | OK |
| 201 | Created |
| 400 | Bad request (client error) |
| 401 | Unauthorized (not logged in) |
| 403 | Forbidden (no permission) |
| 404 | Not found |
| 500 | Server error |

---

## RESTful URL Design

```
GET    /users          → list users
GET    /users/42       → get user 42
POST   /users          → create user
PUT    /users/42       → replace user 42
PATCH  /users/42       → partial update
DELETE /users/42       → delete user 42
```

**Good:** nouns, plural, no verbs in URL  
**Bad:** `/getUser`, `/deleteUser/42`

---

## Request / Response (JSON)

```json
// POST /users
{ "name": "Alice", "email": "alice@example.com" }

// Response 201
{ "id": 42, "name": "Alice", "email": "alice@example.com" }
```

---

## Build REST APIs In Repo

| Stack | Folder |
|-------|--------|
| Node | [frameworks/express/](../../frameworks/express/) |
| Python | [frameworks/fastapi/](../../frameworks/fastapi/) |
| PHP | [frameworks/laravel/](../../frameworks/laravel/) |
| Java | [frameworks/spring-boot/](../../frameworks/spring-boot/) |

---

## Learning Tracks

[01-beginner/](./01-beginner/) — HTTP + first endpoint

---

*Test APIs: Postman, curl, Thunder Client (VS Code)*
