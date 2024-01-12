const express = require('express');
const bodyParser = require('body-parser');
const admin = require('firebase-admin');
const cors = require('cors'); // Import cors

const serviceAccount = require('./config/firebase-auth');

const app = express();
const port = 3000;

app.use(cors());
app.use(bodyParser.json());
// Endpoint untuk registrasi user baru
app.post('/register', async (req, res) => {
  const { email, password } = req.body;

  try {
    const userRecord = await admin.auth().createUser({
      email,
      password,
    });

    res.status(201).json({ success: true, uid: userRecord.uid, message: 'Registrasi berhasil' });
  } catch (error) {
    console.error(error);
    res.status(500).json({ success: false, message: 'Gagal registrasi' });
  }
});
// Endpoint untuk login
app.post('/login', async (req, res) => {
  const { email, password } = req.body;

  try {
    const userRecord = await admin.auth().getUserByEmail(email);
    // ...

    res.json({ success: true, message: 'Login berhasil' });
  } catch (error) {
    console.error(error);
    res.status(500).json({ success: false, message: 'Gagal login' });
  }
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server berjalan di http://localhost:${PORT}`);
});
