const express = require('express');
const bodyParser = require('body-parser');
const admin = require('firebase-admin');
const cors = require('cors'); // Import cors

const serviceAccount = require('./config/firebase-auth');

const app = express();
const port = 3000;

app.use(cors());
app.use(bodyParser.json());

// Endpoint untuk membuat kenangan
app.post('/api/make-memories', async (req, res) => {
  const { name, address, date, numberOfTukik } = req.body;

  try {
    // Simpan data kenangan ke Firestore
    const kenanganRef = await admin.firestore().collection('kenangan').add({
      name,
      address,
      date,
      numberOfTukik: parseInt(numberOfTukik), // Konversi ke tipe data number
    });

    res.status(200).json({ success: true, id: kenanganRef.id, message: 'Kenangan berhasil dibuat' });
  } catch (error) {
    console.error(error);
    res.status(500).json({ success: false, message: 'Gagal membuat kenangan' });
  }
});

app.post('/api/register', async (req, res) => {
  const { email, password, name, address } = req.body;

  try {
    const userRecord = await admin.auth().createUser({
      email,
      password,
    });
    
    await admin.firestore().collection('users').doc(userRecord.uid).set({
      email,
      name,
      address,
      created_at: admin.firestore.FieldValue.serverTimestamp(),
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
