<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# Firefox SyncStorage YunoHost-erako

[![Integrazio maila](https://apps.yunohost.org/badge/integration/syncserver-rs)](https://ci-apps.yunohost.org/ci/apps/syncserver-rs/)
![Funtzionamendu egoera](https://apps.yunohost.org/badge/state/syncserver-rs)
![Mantentze egoera](https://apps.yunohost.org/badge/maintained/syncserver-rs)

[![Instalatu Firefox SyncStorage YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=syncserver-rs)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek Firefox SyncStorage YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

"Firefox Sync" is a browser synchronization feature available in Firefox. It allows to synchronize bookmarks, browsing history, preferences, passwords, filled forms, add-ons, and the last opened tabs across multiple computers. This traditionally relies on Mozilla's synchronization servers (though data are encrypted). Using this app, you can synchronize your Firefox instances using your own synchronization server.


**Paketatutako bertsioa:** 0.18.2~ynh1
## Dokumentazioa eta baliabideak

- Aplikazioaren webgune ofiziala: <https://www.mozilla.org/en-GB/firefox/features/sync/>
- Administratzaileen dokumentazio ofiziala: <https://github.com/mozilla-services/syncstorage-rs/blob/master/docs/config.md>
- Jatorrizko aplikazioaren kode-gordailua: <https://github.com/mozilla-services/syncstorage-rs>
- YunoHost Denda: <https://apps.yunohost.org/app/syncserver-rs>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/syncserver-rs_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/syncserver-rs_ynh/tree/testing).

`testing` abarra probatzeko, ondorengoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/syncserver-rs_ynh/tree/testing --debug
edo
sudo yunohost app upgrade syncserver-rs -u https://github.com/YunoHost-Apps/syncserver-rs_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>
