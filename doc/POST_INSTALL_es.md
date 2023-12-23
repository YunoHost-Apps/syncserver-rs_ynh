### Crear una cuenta Mozilla
Vaya a https://accounts.firefox.com y siga los pasos de "Registrarse" para crear una cuenta.

### Configurar Firefox Desktop
Por favor, abra `about:config` en su Firefox y apunte `identity.sync.tokenserver.uri` a `https://__DOMAIN__/1.0/sync/1.5`.

### Configurar navegadores basados en Firefox en Android
Estos pasos deben seguirse en un orden estricto. Si no lo haces, probablemente tendrás problemas. Esto también debería funcionar en navegadores basados en Firefox como Mull (probado) y otros.
- Abre el navegador Firefox -> Configuración -> Acerca de Firefox -> pulsa 5 veces en el logo de Firefox.
- Vuelva a Configuración -> Cuenta -> debería ver una nueva opción `Sync Debug`, pulse sobre ella.
- Seleccione `Servidor de sincronización personalizado` y escriba allí su endpoint. Debería ser `https://__DOMAIN__/1.0/sync/1.5`.
- Sal completamente de Firefox, vuelve a abrirlo y sigue los pasos de "Conectar un dispositivo" a tu cuenta de Firefox.
- Después de un exitoso proceso de autenticación, la sincronización debería empezar a funcionar.

### Configurar Firefox en iOS
No probado.
- Abre el navegador Firefox -> Configuración -> Acerca de Firefox -> pulsa en el campo con Firefox y el número de versión.
- Vuelve a Configuración -> Cuenta -> deberías ver una nueva opción `Configuración de sincronización avanzada`, pulsa sobre ella.
- Cambia a `Usar Servidor de Sincronización Personalizado` y escribe allí tu endpoint. Debería ser `https://__DOMAIN__/`.
- Es posible que también tenga que activar la opción para el servidor de inicio de sesión personalizado FxA y ponerlo en `https://accounts.firefox.com`.
- Sal completamente de Firefox, vuelve a abrirlo y sigue los pasos de "Conectar un dispositivo" a tu cuenta de Firefox.
- Después de un exitoso proceso de autenticación, la sincronización debería empezar a funcionar.