<!--
Важно: этот README был автоматически сгенерирован <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Он НЕ ДОЛЖЕН редактироваться вручную.
-->

# Firefox SyncStorage для YunoHost

[![Уровень интеграции](https://apps.yunohost.org/badge/integration/syncserver-rs)](https://ci-apps.yunohost.org/ci/apps/syncserver-rs/)
![Состояние работы](https://apps.yunohost.org/badge/state/syncserver-rs)
![Состояние сопровождения](https://apps.yunohost.org/badge/maintained/syncserver-rs)

[![Установите Firefox SyncStorage с YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=syncserver-rs)

*[Прочтите этот README на других языках.](./ALL_README.md)*

> *Этот пакет позволяет Вам установить Firefox SyncStorage быстро и просто на YunoHost-сервер.*  
> *Если у Вас нет YunoHost, пожалуйста, посмотрите [инструкцию](https://yunohost.org/install), чтобы узнать, как установить его.*

## Обзор

"Firefox Sync" is a browser synchronization feature available in Firefox. It allows to synchronize bookmarks, browsing history, preferences, passwords, filled forms, add-ons, and the last opened tabs across multiple computers. This traditionally relies on Mozilla's synchronization servers (though data are encrypted). Using this app, you can synchronize your Firefox instances using your own synchronization server.


**Поставляемая версия:** 0.18.2~ynh1
## Документация и ресурсы

- Официальный веб-сайт приложения: <https://www.mozilla.org/en-GB/firefox/features/sync/>
- Официальная документация администратора: <https://github.com/mozilla-services/syncstorage-rs/blob/master/docs/config.md>
- Репозиторий кода главной ветки приложения: <https://github.com/mozilla-services/syncstorage-rs>
- Магазин YunoHost: <https://apps.yunohost.org/app/syncserver-rs>
- Сообщите об ошибке: <https://github.com/YunoHost-Apps/syncserver-rs_ynh/issues>

## Информация для разработчиков

Пришлите Ваш запрос на слияние в [ветку `testing`](https://github.com/YunoHost-Apps/syncserver-rs_ynh/tree/testing).

Чтобы попробовать ветку `testing`, пожалуйста, сделайте что-то вроде этого:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/syncserver-rs_ynh/tree/testing --debug
или
sudo yunohost app upgrade syncserver-rs -u https://github.com/YunoHost-Apps/syncserver-rs_ynh/tree/testing --debug
```

**Больше информации о пакетировании приложений:** <https://yunohost.org/packaging_apps>
