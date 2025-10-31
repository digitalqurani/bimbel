
MDIQ Bimbel - React + Vite + Tailwind + Firebase (Auth + Firestore)

Steps to use:

1. Install dependencies
   npm install

2. Fill Firebase config:
   - open src/firebaseConfig.js and replace YOUR_API_KEY, YOUR_MESSAGING_SENDER_ID, YOUR_APP_ID
   - projectId should be 'mdiq-bimbel' (already set)

3. Enable Firebase services:
   - In Firebase Console, enable Authentication (Email/Password)
   - Create admin user (e.g., admin@mdiq.com) with a password via Authentication -> Users -> Add user

4. Enable Firestore and set rules:
   - In Firebase Console -> Firestore -> Rules, replace rules with contents of firestore.rules
   - Or deploy rules with: firebase deploy --only firestore:rules

5. Build & Deploy Hosting:
   npm run build
   firebase deploy --only hosting

6. Notes:
   - The registration form saves to Firestore collection 'pendaftaran' and also opens WhatsApp.
   - Only authenticated user with email admin@mdiq.com can read/update/delete entries per provided rules.
