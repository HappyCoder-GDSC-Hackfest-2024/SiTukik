// Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
import { getAnalytics } from "firebase/analytics";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const firebaseConfig = {
  apiKey: "AIzaSyCvAPrt7sg4mLWGL1rT6BB-AGURSBtT6D8",
  authDomain: "happycoderpenyukita.firebaseapp.com",
  projectId: "happycoderpenyukita",
  storageBucket: "happycoderpenyukita.appspot.com",
  messagingSenderId: "883401866722",
  appId: "1:883401866722:web:97a3735bd3f5d1954bcdbb",
  measurementId: "G-SRJZTXFVME"
};

const conf = initializeApp(firebaseConfig);
const analytics = getAnalytics(conf);

module.exports = conf