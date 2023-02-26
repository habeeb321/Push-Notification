importScripts("https://www.gstatic.com/firebasejs/9.6.10/firebase-app-compat.js");
importScripts("https://www.gstatic.com/firebasejs/9.6.10/firebase-messaging-compat.js");

// todo Copy/paste firebaseConfig from Firebase Console
const firebaseConfig = {
    apiKey: "AIzaSyD3sjRsNfna0FxJE5FL_CaskrsedNzM4B8",
    authDomain: "push-notification-45587.firebaseapp.com",
    projectId: "push-notification-45587",
    storageBucket: "push-notification-45587.appspot.com",
    messagingSenderId: "850762385412",
    appId: "1:850762385412:web:1dc056801115d056140d51"
};

firebase.initializeApp(firebaseConfig);
const messaging = firebase.messaging();

// todo Set up background message handler

