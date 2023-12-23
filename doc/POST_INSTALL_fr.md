### Créer un compte Mozilla
Allez sur https://accounts.firefox.com et suivez les étapes "Sign up" pour créer un compte.

### Configurer Firefox Desktop
Veuillez ouvrir `about:config` dans votre Firefox et pointer `identity.sync.tokenserver.uri` vers `https://__DOMAIN__/1.0/sync/1.5`.

### Configurer des navigateurs basés sur Firefox sur Android
Ces étapes doivent être suivies dans un ordre strict. Ne pas le faire conduirait probablement à des problèmes. Cela devrait également fonctionner avec les navigateurs basés sur Firefox comme Mull (testé) et d'autres.
- Ouvrez le navigateur Firefox -> Paramètres -> À propos de Firefox -> tapez 5 fois sur le logo Firefox.
- Retournez dans Paramètres -> Compte -> vous devriez voir une nouvelle option `Sync Debug`, tapez dessus.
- Sélectionnez `Custom Sync server` et écrivez votre endpoint. Ce devrait être `https://__DOMAIN__/1.0/sync/1.5`.
- Quittez complètement Firefox, reouvrez-le et suivez les étapes de "Connecter un appareil" à votre compte Firefox.
- Après un processus d'authentification réussi, la synchronisation devrait commencer à fonctionner.

### Configurer Firefox sur iOS
Non testé.
- Ouvrez le navigateur Firefox -> Paramètres -> A propos de Firefox -> tapez sur le champ avec Firefox et le numéro de version.
- Retournez à Paramètres -> Compte -> vous devriez voir une nouvelle option `Paramètres de synchronisation avancés`, appuyez dessus.
- Basculez sur `Use Custom Sync Token Server` et écrivez votre endpoint. Il devrait être `https://__DOMAIN__/`.
- Vous pourriez aussi avoir besoin de basculer l'interrupteur pour le serveur de connexion FxA personnalisé et de le mettre à `https://accounts.firefox.com`
- Quittez complètement Firefox, rouvrez-le et suivez les étapes de "Connecter un appareil" à votre compte Firefox.
- Après un processus d'authentification réussi, la synchronisation devrait commencer à fonctionner.