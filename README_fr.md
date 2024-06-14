<!--
Nota bene : ce README est automatiquement généré par <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Il NE doit PAS être modifié à la main.
-->

# Firefox SyncStorage pour YunoHost

[![Niveau d’intégration](https://dash.yunohost.org/integration/syncserver-rs.svg)](https://dash.yunohost.org/appci/app/syncserver-rs) ![Statut du fonctionnement](https://ci-apps.yunohost.org/ci/badges/syncserver-rs.status.svg) ![Statut de maintenance](https://ci-apps.yunohost.org/ci/badges/syncserver-rs.maintain.svg)

[![Installer Firefox SyncStorage avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=syncserver-rs)

*[Lire le README dans d'autres langues.](./ALL_README.md)*

> *Ce package vous permet d’installer Firefox SyncStorage rapidement et simplement sur un serveur YunoHost.*  
> *Si vous n’avez pas YunoHost, consultez [ce guide](https://yunohost.org/install) pour savoir comment l’installer et en profiter.*

## Vue d’ensemble

Serveur de seconde génération pour Firefox Sync écrit en Rust.

**Version incluse :** 0.16.0~ynh1
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
