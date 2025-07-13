# 📝 Note Taker

An intuitive web app to create, save, and delete notes — perfect for staying organized on the go!

---

## 📌 Demo

- Create and manage personal notes  
- View saved notes instantly  
- Delete notes with a single click

---

## ⚙️ Technologies Used

- **Frontend**: HTML, CSS, JavaScript (Vanilla or your preferred framework)  
- **Backend**: Node.js + Express.js  
- **Storage**: JSON file (via `fs` module)  
- **Deployed via**: Heroku or GitHub Pages + Express

---

## 📁 Project Structure

NoteTaker/
├── public/
│ ├── assets/
│ │ ├── css/
│ │ │ └── styles.css
│ │ └── js/
│ │ └── index.js
│ ├── index.html
│ ├── notes.html
│ └── favicon.ico
├── routes/
│ └── api.js
├── db/
│ └── db.json
├── .gitignore
├── package.json
├── server.js
└── README.md




📚 How It Works
GET /api/notes → Reads from db.json, sends stored notes

POST /api/notes → Receives note object, adds id, updates db.json

DELETE /api/notes/:id → Removes note with matching id

🛠 Enhancements (Future Ideas)
Add authentication (login/logout)

Upgrade to MongoDB (instead of JSON file)

Improve UI with React or CSS frameworks

Add search & filtering

🧑‍💻 About Me
Name: Shivam Gunjal

Role: Full-Stack Developer

Email: gunjalshivam0@gmail.com

Location: Pune

