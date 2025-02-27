<!--
Nota bene : ce README est automatiquement généré par <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Il NE doit PAS être modifié à la main.
-->

# Firefox SyncStorage pour YunoHost

[![Niveau d’intégration](https://apps.yunohost.org/badge/integration/syncserver-rs)](https://ci-apps.yunohost.org/ci/apps/syncserver-rs/)
![Statut du fonctionnement](https://apps.yunohost.org/badge/state/syncserver-rs)
![Statut de maintenance](https://apps.yunohost.org/badge/maintained/syncserver-rs)

[![Installer Firefox SyncStorage avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=syncserver-rs)

*[Lire le README dans d'autres langues.](./ALL_README.md)*

> *Ce package vous permet d’installer Firefox SyncStorage rapidement et simplement sur un serveur YunoHost.*  
> *Si vous n’avez pas YunoHost, consultez [ce guide](https://yunohost.org/install) pour savoir comment l’installer et en profiter.*

## Vue d’ensemble

« Firefox Sync » est une fonction de synchronisation de navigateur disponible dans Firefox. Elle permet de synchroniser les signets, l'historique de navigation, les préférences, les mots de passe, les formulaires remplis, les extensions et les derniers onglets ouverts entre plusieurs ordinateurs. Cette fonction s'appuie traditionnellement sur les serveurs de synchronisation de Mozilla (bien que les données soient chiffrées). Cette application propose de mettre en place votre propre serveur de synchronisation pour ne pas dépendre d'une infrastructure tiers.


**Version incluse :** 0.18.2~ynh1
## Documentations et ressources

- Site officiel de l’app : <https://www.mozilla.org/en-GB/firefox/features/sync/>
- Documentation officielle de l’admin : <https://github.com/mozilla-services/syncstorage-rs/blob/master/docs/config.md>
- Dépôt de code officiel de l’app : <https://github.com/mozilla-services/syncstorage-rs>
- YunoHost Store : <https://apps.yunohost.org/app/syncserver-rs>
- Signaler un bug : <https://github.com/YunoHost-Apps/syncserver-rs_ynh/issues>

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche `testing`](https://github.com/YunoHost-Apps/syncserver-rs_ynh/tree/testing).

Pour essayer la branche `testing`, procédez comme suit :

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/syncserver-rs_ynh/tree/testing --debug
ou
sudo yunohost app upgrade syncserver-rs -u https://github.com/YunoHost-Apps/syncserver-rs_ynh/tree/testing --debug
```

**Plus d’infos sur le packaging d’applications :** <https://yunohost.org/packaging_apps>
