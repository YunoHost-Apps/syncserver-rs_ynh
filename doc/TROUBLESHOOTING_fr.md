## Résolution des problèmes
Ce guide fournit une bonne marche à suivre et des informations : https://thesmarthomejourney.com/2023/03/18/self-hosting-firefox-sync/

### Serveur
Le fichier journal est situé dans `/var/log/syncserver-rs/syncserver-rs.log`.

### Firefox Desktop
Si pour une raison quelconque il y a un problème avec la configuration de la synchronisation, il y a la possibilité de visiter `about:sync-logs` dans un nouvel onglet et si une erreur se produit, elle sera affichée là.

### Firefox Android
Gardez à l'esprit que si vous faites une erreur de frappe dans le paramètre `Custom Sync server` ou si vous faites les étapes dans un ordre différent, cela ne fonctionnera probablement pas.
Si c'est le cas, déconnectez-vous de toute session existante liée à la tentative échouée dans https://accounts.firefox.com/settings et réinitialisez Firefox Android (Ouvrez Firefox dans la liste des applications et "Effacer toutes les données" depuis les paramètres Android).

### Firefox iOS
Gardez à l'esprit que si vous faites une erreur de frappe dans le paramètre `Use Custom Sync Token Server` ou si vous faites les étapes dans un ordre différent, cela ne fonctionnera probablement pas.
Si c'est le cas, déconnectez-vous de toute session existante liée à la tentative échouée dans https://accounts.firefox.com/settings et réinitialisez Firefox iOS.