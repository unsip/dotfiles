// Jewgle Safe Browsing
user_pref("browser.safebrowsing.malware.enabled", false);
user_pref("browser.safebrowsing.phishing.enabled", false);
user_pref("browser.safebrowsing.downloads.enabled", false);
user_pref("browser.safebrowsing.downloads.remote.enabled", false);
user_pref("browser.safebrowsing.downloads.remote.url", "");
user_pref("browser.safebrowsing.reportPhishURL", "");
user_pref("browser.safebrowsing.reportPhishMistakeURL", "");
user_pref("browser.safebrowsing.reportMalwareMistakeURL", "");
user_pref("browser.safebrowsing.provider.google.appRepURL", "");
user_pref("browser.safebrowsing.provider.google.gethashURL", "");
user_pref("browser.safebrowsing.provider.google.lists", "");
user_pref("browser.safebrowsing.provider.google.reportURL", "");
user_pref("browser.safebrowsing.provider.google.updateURL", "");
user_pref("browser.safebrowsing.downloads.remote.block_dangerous", false);
user_pref("browser.safebrowsing.downloads.remote.block_dangerous_host", false);
user_pref("browser.safebrowsing.downloads.remote.block_potentially_unwanted", false);
user_pref("browser.safebrowsing.downloads.remote.block_uncommon", false);
// https://bugzilla.mozilla.org/show_bug.cgi?id=1025965
user_pref("browser.safebrowsing.phishing.enabled", false);
user_pref("browser.safebrowsing.provider.google4.lists", "");
user_pref("browser.safebrowsing.provider.google4.updateURL", "");
user_pref("browser.safebrowsing.provider.google4.gethashURL", "");
user_pref("browser.safebrowsing.provider.google4.reportURL", "");
user_pref("browser.safebrowsing.provider.google.reportMalwareMistakeURL", "");
user_pref("browser.safebrowsing.provider.google.reportPhishMistakeURL", "");
user_pref("browser.safebrowsing.provider.google4.reportMalwareMistakeURL", "");
user_pref("browser.safebrowsing.provider.google4.reportPhishMistakeURL", "");
// https://bugzilla.mozilla.org/show_bug.cgi?id=1385484
// https://hg.mozilla.org/releases/mozilla-release/rev/c3b2fd555480
user_pref("browser.safebrowsing.passwords.enabled", false);

// Firefox telemetry
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("toolkit.telemetry.enabled", false);
user_pref("toolkit.telemetry.unified", false);

// WebRTC (doesn't matter now)
// user_pref("media.peerconnection.enabled", false);

// Automatic SE updates
user_pref("browser.search.update", false);

// Isolates all browser identifier sources (e.g. cookies) to the first party
// domain, with the goal of preventing tracking across different domains.
user_pref("privacy.firstparty.isolate", false);

// Redundant TP and fingerprinting protection
user_pref("privacy.trackingprotection.enabled", false);
user_pref("privacy.resistFingerprinting", true);

// Disable pings
user_pref("browser.send_pings", false);

// Disable battery status
user_pref("dom.battery.enabled", false);

// Disable camera and mic status
user_pref("media.navigator.enabled", false);

// Clipboard events notification
user_pref("dom.event.clipboardevents.enabled", false);
