### Create a Mozilla account
Go to https://accounts.firefox.com and follow the "Sign up" steps to create an account.

### Configure Firefox Desktop

- If you're signed in, **sign out of you Firefox account under `about:preferences#sync` first!** Your browser data and the synchronised data are safe, nothing will be deleted.
- Open `about:config` in your Firefox and point `identity.sync.tokenserver.uri` to `https://__DOMAIN__/1.0/sync/1.5`. Note that the URI changed compared to 'old' Firefox sync, there's no `token` part now.
- Restart the browser for the changes to take effect.
- Now, sign in again and sync should be working.

Observe `about:sync-log` for any potential failures.

### Configure Firefox based browsers on Android 
These steps have to be followed in a strict order. Failing to do it would probably lead to issues. This should also work in Firefox based browsers like Mull (tested) and others.
- Sign out of your account if you're already logged in. No data will be lost.
- Open Firefox Browser -> Settings -> About Firefox -> tap 5 times in Firefox logo.
- Go back to Settings -> Account -> you should see a new option `Sync Debug`, tap on it.
- Select `Custom Sync server` and write there your endpoint. It should be `https://__DOMAIN__/1.0/sync/1.5`.
- Exit Firefox completely, reopen and then follow the steps of "Connect a device" to your Firefox account.
- To sync with desktop, visit the following URL in Firefox desktop: firefox.com/pair and follow instructions.

### Configure Firefox on iOS
Not tested.
- Sign out of your Firefox account. No data will be lost.
- Open Firefox Browser -> Settings -> About Firefox -> tap on the field with Firefox and version number.
- Go back to Settings -> Account -> you should see a new option `Advanced Sync Settings`, tap on it.
- Toggle `Use Custom Sync Token Server` and write there your endpoint. It should be `https://__DOMAIN__/`.
- You might also need to toggle the switch for custom FxA login server and set it to `https://accounts.firefox.com`
- Exit Firefox completely, reopen and then follow the steps of "Connect a device" to your Firefox account.
- To sync with desktop, visit the following URL in Firefox desktop: firefox.com/pair and follow instructions.
