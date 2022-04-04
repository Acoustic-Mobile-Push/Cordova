echo "Building plugins"
cd ../../../plugins
sh build.sh > /dev/null
cd ../applications/samples/Sample

echo "Building tests"
cd ../../../plugins
sh build_tests.sh > /dev/null
cd ../applications/samples/Sample

echo "Adding android platform"
echo ""
cordova platform add android@10

echo "Adding ios platform"
echo ""
cordova platform add ios

echo "Adding Core Acoustic SDK plugin"
echo ""
cordova plugin add file:../../../plugins/co.acoustic.mobile.push.sdk --variable CUSTOM_ACTIONS="openInboxMessage sendEmail" --variable ANDROID_APPKEY="YOUR ANDROID APPKEY HERE" --variable IOS_DEV_APPKEY="YOUR iOS APPKEY HERE" --variable IOS_PROD_APPKEY="YOUR iOS APPKEY HERE" --variable SERVER_URL=https://mobile-sdk-lib-us-0.brilliantcollector.com --variable LOGLEVEL=verbose --variable MCE_CAN_SYNC_OVERRIDE=true --force

echo "Adding FCM plugin"
echo ""
cordova plugin add file:../../../plugins/co.acoustic.mobile.push.plugin.fcm

echo "Adding Location plugin"
echo ""
cordova plugin add file:../../../plugins/co.acoustic.mobile.push.plugin.location --variable SYNC_RADIUS=10000 --variable SYNC_INTERVAL=60

echo "Adding Beacon plugin"
echo ""
cordova plugin add file:../../../plugins/co.acoustic.mobile.push.plugin.beacon --variable UUID=21A9A7F4-0DD8-46B7-9D4D-379F3C4AF77D

echo "Adding Inapp plugin"
echo ""
cordova plugin add file:../../../plugins/co.acoustic.mobile.push.plugin.inapp 

echo "Adding Inbox plugin"
echo ""
cordova plugin add file:../../../plugins/co.acoustic.mobile.push.plugin.inbox

echo "Adding display web, dial & snooze plugin"
echo ""
cordova plugin add file:../../../plugins/co.acoustic.mobile.push.plugin.displayweb
cordova plugin add file:../../../plugins/co.acoustic.mobile.push.plugin.dial
cordova plugin add file:../../../plugins/co.acoustic.mobile.push.plugin.snooze

echo "Adding display geofence"
echo ""
cordova plugin add file:../../../plugins/co.acoustic.mobile.push.plugin.geofence


