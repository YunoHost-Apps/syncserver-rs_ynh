<!--
注意：此 README 由 <https://github.com/YunoHost/apps/tree/master/tools/readme_generator> 自动生成
请勿手动编辑。
-->

# YunoHost 上的 Firefox SyncStorage

[![集成程度](https://dash.yunohost.org/integration/syncserver-rs.svg)](https://dash.yunohost.org/appci/app/syncserver-rs) ![工作状态](https://ci-apps.yunohost.org/ci/badges/syncserver-rs.status.svg) ![维护状态](https://ci-apps.yunohost.org/ci/badges/syncserver-rs.maintain.svg)

[![使用 YunoHost 安装 Firefox SyncStorage](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=syncserver-rs)

*[阅读此 README 的其它语言版本。](./ALL_README.md)*

> *通过此软件包，您可以在 YunoHost 服务器上快速、简单地安装 Firefox SyncStorage。*  
> *如果您还没有 YunoHost，请参阅[指南](https://yunohost.org/install)了解如何安装它。*

## 概况

Second-generation server for Firefox Sync written in Rust.


**分发版本：** 0.16.0~ynh1
## 文档与资源

- 官方应用网站： <https://www.mozilla.org/en-GB/firefox/features/sync/>
- 官方管理文档： <https://github.com/mozilla-services/syncstorage-rs/blob/master/docs/config.md>
- 上游应用代码库： <https://github.com/mozilla-services/syncstorage-rs>
- YunoHost 商店： <https://apps.yunohost.org/app/syncserver-rs>
- 报告 bug： <https://github.com/YunoHost-Apps/syncserver-rs_ynh/issues>

## 开发者信息

请向 [`testing` 分支](https://github.com/YunoHost-Apps/syncserver-rs_ynh/tree/testing) 发送拉取请求。

如要尝试 `testing` 分支，请这样操作：

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/syncserver-rs_ynh/tree/testing --debug
或
sudo yunohost app upgrade syncserver-rs -u https://github.com/YunoHost-Apps/syncserver-rs_ynh/tree/testing --debug
```

**有关应用打包的更多信息：** <https://yunohost.org/packaging_apps>
