## Solución de problemas
Esta guía puede resultar útil para problemas relacionados con la configuración: https://thesmarthomejourney.com/2023/03/18/self-hosting-firefox-sync/

### Servidor
El archivo de logs se encuentra en `/var/log/syncserver-rs/syncserver-rs.log`.

### Firefox Desktop
Si por alguna razón hay un problema con la configuración de la sincronización, existe la posibilidad de visitar `about:sync-logs` en una nueva pestaña y si se produce algún error, se mostrará allí.

### Firefox Android
Ten en cuenta que si cometes un error tipográfico en la configuración de `Servidor de sincronización personalizado` o si realizas los pasos en un orden diferente, probablemente no funcionará.
Así que si ese es el caso, cierra cualquier sesión existente relacionada con el intento fallido en https://accounts.firefox.com/settings y reinicia Firefox Android (Abre Firefox en la lista de aplicaciones y busca la opción "Borrar todos los datos" desde los Ajustes de Android).

### Firefox iOS
Ten en cuenta que si cometes un error tipográfico en el ajuste `Usar Servidor de Sincronización Personalizado` o si realizas los pasos en un orden diferente, probablemente no funcionará.
Así que si ese es el caso, cierra cualquier sesión existente relacionada con el intento fallido en https://accounts.firefox.com/settings y reinicia Firefox iOS.