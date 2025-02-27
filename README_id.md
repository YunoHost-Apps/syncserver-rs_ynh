<!--
N.B.: README ini dibuat secara otomatis oleh <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Ini TIDAK boleh diedit dengan tangan.
-->

# Firefox SyncStorage untuk YunoHost

[![Tingkat integrasi](https://apps.yunohost.org/badge/integration/syncserver-rs)](https://ci-apps.yunohost.org/ci/apps/syncserver-rs/)
![Status kerja](https://apps.yunohost.org/badge/state/syncserver-rs)
![Status pemeliharaan](https://apps.yunohost.org/badge/maintained/syncserver-rs)

[![Pasang Firefox SyncStorage dengan YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=syncserver-rs)

*[Baca README ini dengan bahasa yang lain.](./ALL_README.md)*

> *Paket ini memperbolehkan Anda untuk memasang Firefox SyncStorage secara cepat dan mudah pada server YunoHost.*  
> *Bila Anda tidak mempunyai YunoHost, silakan berkonsultasi dengan [panduan](https://yunohost.org/install) untuk mempelajari bagaimana untuk memasangnya.*

## Ringkasan

"Firefox Sync" is a browser synchronization feature available in Firefox. It allows to synchronize bookmarks, browsing history, preferences, passwords, filled forms, add-ons, and the last opened tabs across multiple computers. This traditionally relies on Mozilla's synchronization servers (though data are encrypted). Using this app, you can synchronize your Firefox instances using your own synchronization server.


**Versi terkirim:** 0.18.2~ynh1
## Dokumentasi dan sumber daya

- Website aplikasi resmi: <https://www.mozilla.org/en-GB/firefox/features/sync/>
- Dokumentasi admin resmi: <https://github.com/mozilla-services/syncstorage-rs/blob/master/docs/config.md>
- Depot kode aplikasi hulu: <https://github.com/mozilla-services/syncstorage-rs>
- Gudang YunoHost: <https://apps.yunohost.org/app/syncserver-rs>
- Laporkan bug: <https://github.com/YunoHost-Apps/syncserver-rs_ynh/issues>

## Info developer

Silakan kirim pull request ke [`testing` branch](https://github.com/YunoHost-Apps/syncserver-rs_ynh/tree/testing).

Untuk mencoba branch `testing`, silakan dilanjutkan seperti:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/syncserver-rs_ynh/tree/testing --debug
atau
sudo yunohost app upgrade syncserver-rs -u https://github.com/YunoHost-Apps/syncserver-rs_ynh/tree/testing --debug
```

**Info lebih lanjut mengenai pemaketan aplikasi:** <https://yunohost.org/packaging_apps>
