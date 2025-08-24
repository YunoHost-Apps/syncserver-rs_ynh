## Troubleshooting
This guide provides a good walkthrough and insights: https://thesmarthomejourney.com/2023/03/18/self-hosting-firefox-sync/

### Server
Log file is located in `/var/log/syncserver-rs/syncserver-rs.log`.

### Firefox Desktop
If for some reason there is a problem with the sync configuration, there is the possibility to visit `about:sync-logs` in a new tab and if any error occurs, it will be displayed there.

You may need to sign out of your account and sign back in to use your new server.

### Firefox Android
Keep in mind that if you make a typo on the `Custom Sync server` setting or if you do the steps in a different order it probably won't work.
So if that is the case, logout any existing session related to the failed attempt in https://accounts.firefox.com/settings and reset Firefox Android (Open Firefox in app list and "Clear all data" from Android Settings).

### Firefox iOS
Keep in mind that if you make a typo on the `Use Custom Sync Token Server` setting or if you do the steps in a different order it probably won't work.
So if that is the case, logout any existing session related to the failed attempt in https://accounts.firefox.com/settings and reset Firefox iOS.