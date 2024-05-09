<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# Firefox SyncStorage YunoHost-erako

[![Integrazio maila](https://dash.yunohost.org/integration/syncserver-rs.svg)](https://dash.yunohost.org/appci/app/syncserver-rs) ![Funtzionamendu egoera](https://ci-apps.yunohost.org/ci/badges/syncserver-rs.status.svg) ![Mantentze egoera](https://ci-apps.yunohost.org/ci/badges/syncserver-rs.maintain.svg)

[![Instalatu Firefox SyncStorage YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=syncserver-rs)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek Firefox SyncStorage YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

Second-generation server for Firefox Sync written in Rust.


**Paketatutako bertsioa:** 0.15.8~ynh1
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
