###IOS Settings Launcher

This is a simple Titanium module built for launching any of the settings URLs from your app.
In iOS < 10, you used to be able to call a simple command:


    Ti.Platform.openURL('prefs:root=WIFI');

But in iOS 10, you need to use a workspace and the URL changes to "Prefs:".

This module takes care of all that magic for you, you just have to pass in the path you want.

####Usage:

    var iosSettings = require('com.kaztopia.settingslauncher');
    iosSettings.launchSettingsWithPath("root=WIFI");


####Paths available:

| Command | Description |
| --- | --- |
| `root=General&path=About` | About |
| `root=General&path=ACCESSIBILITY` | Accessibility |
| `root=ACCOUNT_SETTINGS` | Account Settings |
| `root=AIRPLANE_MODE` | Airplane Mode |
| `root=General&path=AUTOLOCK` | Autolock |
| `root=Brightness` | Brightness |
| `root=General&path=Bluetooth` | Bluetooth iOS < 9 |
| `root=Bluetooth` | Bluetooth iOS > 9 |
| `root=CASTLE` | Castle |
| `root=General&path=USAGE/CELLULAR_USAGE` | Cellular Usage |
| `root=General&path=ManagedConfigurationList` | Configuration List|
| `root=General&path=DATE_AND_TIME` | Date and Time |
| `root=FACETIME` | Facetime |
| `root=General` | General |
| `root=INTERNET_TETHERING` | Internet Tethering|
| `root=MUSIC` | iTunes |
| `root=MUSIC&path=EQ` | iTunes Equalizer|
| `root=MUSIC&path=VolumeLimit` | iTunes Volume |
| `root=General&path=Keyboard` | Keyboard |
| `root=General&path=INTERNATIONAL` | Lang International |
| `root=LOCATION_SERVICES` | Location Services |
| `root=General&path=Network` | Network|
| `root=NIKE_PLUS_IPOD` | Nike iPod |
| `root=NOTES` | Notes|
| `root=NOTIFICATIONS_ID` | Notifications ID |
| `root=PASSBOOK` | Passbook |
| `root=Phone` | Phone|
| `root=Photos` | Photo Camera Roll |
| `root=General&path=Reset` | Reset |
| `root=Sounds&path=Ringtone` | Ringtone|
| `root=Safari` | Safari |
| `root=General&path=Assistant` | Siri|
| `root=Sounds` | Sounds |
| `root=General&path=SOFTWARE_UPDATE_LINK` | Software Update|
| `root=CASTLE&path=STORAGE_AND_BACKUP` | Storage & Backup |
| `root=STORE` | Store |
| `root=TWITTER` | Twitter|
| `root=General&path=USAGE` | Usage |
| `root=VIDEO` | Video|
| `root=General&path=Network/VPN` | VPN |
| `root=Wallpaper` | Wallpaper|
| `root=WIFI` | WIFI |
