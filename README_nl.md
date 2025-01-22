<!--
NB: Deze README is automatisch gegenereerd door <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Hij mag NIET handmatig aangepast worden.
-->

# Firefox SyncStorage voor Yunohost

[![Integratieniveau](https://apps.yunohost.org/badge/integration/syncserver-rs)](https://ci-apps.yunohost.org/ci/apps/syncserver-rs/)
![Mate van functioneren](https://apps.yunohost.org/badge/state/syncserver-rs)
![Onderhoudsstatus](https://apps.yunohost.org/badge/maintained/syncserver-rs)

[![Firefox SyncStorage met Yunohost installeren](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=syncserver-rs)

*[Deze README in een andere taal lezen.](./ALL_README.md)*

> *Met dit pakket kun je Firefox SyncStorage snel en eenvoudig op een YunoHost-server installeren.*  
> *Als je nog geen YunoHost hebt, lees dan [de installatiehandleiding](https://yunohost.org/install), om te zien hoe je 'm installeert.*

## Overzicht

"Firefox Sync" is a browser synchronization feature available in Firefox. It allows to synchronize bookmarks, browsing history, preferences, passwords, filled forms, add-ons, and the last opened tabs across multiple computers. This traditionally relies on Mozilla's synchronization servers (though data are encrypted). Using this app, you can synchronize your Firefox instances using your own synchronization server.


**Geleverde versie:** 0.18.2~ynh1
## Documentatie en bronnen

- Officiele website van de app: <https://www.mozilla.org/en-GB/firefox/features/sync/>
- Officiele beheerdersdocumentatie: <https://github.com/mozilla-services/syncstorage-rs/blob/master/docs/config.md>
- Upstream app codedepot: <https://github.com/mozilla-services/syncstorage-rs>
- YunoHost-store: <https://apps.yunohost.org/app/syncserver-rs>
- Meld een bug: <https://github.com/YunoHost-Apps/syncserver-rs_ynh/issues>

## Ontwikkelaarsinformatie

Stuur je pull request alsjeblieft naar de [`testing`-branch](https://github.com/YunoHost-Apps/syncserver-rs_ynh/tree/testing).

Om de `testing`-branch uit te proberen, ga als volgt te werk:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/syncserver-rs_ynh/tree/testing --debug
of
sudo yunohost app upgrade syncserver-rs -u https://github.com/YunoHost-Apps/syncserver-rs_ynh/tree/testing --debug
```

**Verdere informatie over app-packaging:** <https://yunohost.org/packaging_apps>
