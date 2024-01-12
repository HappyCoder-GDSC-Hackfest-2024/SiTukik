const admin = require('firebase-admin');

const serviceAccount = require('./happycoderpenyukita-firebase-adminsdk-qfpbh-f4b02248cc.json');

admin.initializeApp({
  credential: admin.credential.cert(serviceAccount)
});