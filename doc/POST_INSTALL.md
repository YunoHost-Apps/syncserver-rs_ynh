### Create a Mozilla account
Go to https://accounts.firefox.com and follow the "Sign up" steps to create an account.

### Configure Firefox Desktop
Please open `about:config` in your Firefox and point `identity.sync.tokenserver.uri` to `https://__DOMAIN__/1.0/sync/1.5`.

### Configure Firefox based browsers on Android 
These steps have to be followed in a strict order. Failing to do it would probably lead to issues. This should also work in Firefox based browsers like Mull (tested) and others.
- Open Firefox Browser -> Settings -> About Firefox -> tap 5 times in Firefox logo.
- Go back to Settings -> Account -> you should see a new option `Sync Debug`, tap on it.
- Select `Custom Sync server` and write there your endpoint. It should be `https://__DOMAIN__/1.0/sync/1.5`.
- Exit Firefox completely, reopen and then follow the steps of "Connect a device" to your Firefox account.
- After a successful auth process the sync should start working.

### Configure Firefox on iOS
Not tested.
- Open Firefox Browser -> Settings -> About Firefox -> tap on the field with Firefox and version number.
- Go back to Settings -> Account -> you should see a new option `Advanced Sync Settings`, tap on it.
- Toggle `Use Custom Sync Token Server` and write there your endpoint. It should be `https://__DOMAIN__/`.
- You might also need to toggle the switch for custom FxA login server and set it to `https://accounts.firefox.com`
- Exit Firefox completely, reopen and then follow the steps of "Connect a device" to your Firefox account.
- After a successful auth process the sync should start working.