# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

# Add any project specific keep options here:

-renamesourcefileattribute SourceFile
-keepattributes Signature,SourceFile,LineNumberTable

#dontwarn
-dontwarn java.awt.**
-dontwarn org.apache.james.mime4j.**
-dontwarn org.apache.http.entity.mime.**
-dontwarn android.support.**
-dontwarn com.sun.mail.**
-dontwarn javax.activation.**
-dontwarn com.yintong.**
-dontwarn javax.mail.**
-dontwarn com.baidu.**
-dontwarn demo.**
-dontwarn cn.lxyhome.myintellijandroidproject.**
-dontwarn com.google.ads.**
-dontwarn com.google.android.gms.**
-dontwarn com.google.gson.**
-dontwarn org.ebookdroid.**
-dontwarn the.pdfviewerx.**
-dontwarn org.emdev.**
-dontwarn the.pdfviewerx.**
-dontwarn org.emdev.**
-dontwarn org.ebookdroid.**
-dontwarn cn.sharesdk.**
-dontwarn com.sina.weibo.sdk.**
-dontwarn com.gensee.**
-dontwarn com.bumptech.glide.load.**
-dontwarn okio.**
-dontwarn com.tencent.**
-dontwarn com.alibaba.fastjson.**
-dontwarn com.googlecode.mp4parser.**
-dontwarn com.iflytek.**
-dontwarn com.spreada.utils.chinese.**
-dontwarn tv.danmaku.ijk.media.**
-dontwarn com.mob.commons.**
-dontwarn com.icbc.paysdk.**
-dontwarn com.icbc.icbcfactory.**

-keepattributes EnclosingMethod
#keep
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.preference.Preference
-keep public class * extends android.support.**
-keep public class * extends android.app.Fragment
-dontnote com.android.vending.licensing.ILicensingService
-keep public interface com.android.vending.licensing.ILicensingService
#消息加密
#-dontwarn com.fang.imsecurity.**
#-keep class com.fang.imsecurity.** {*;}
#OPPO PUSH START
-keep public class * extends android.app.Service
#OPPO PUSH END

#MEIZU PUSH START
-dontwarn com.meizu.cloud.pushsdk.**
-keep class com.meizu.cloud.pushsdk.**{*;}
#MEIZU PUSH END

#HUAWEI PUSH START
-ignorewarnings
-keepattributes *Annotation*
-keepattributes Exceptions
-keepattributes InnerClasses
-keepattributes Signature
-keepattributes SourceFile,LineNumberTable
-keep class com.hianalytics.android.**{*;}
-keep class com.huawei.updatesdk.**{*;}
-keep class com.huawei.hms.**{*;}
-keep class com.huawei.gamebox.plugin.gameservice.**{*;}
-keep public class com.huawei.android.hms.agent.** extends android.app.Activity { public *; protected *; }
-keep interface com.huawei.android.hms.agent.common.INoProguard {*;}
-keep class * extends com.huawei.android.hms.agent.common.INoProguard {*;}
#HUAWEI PUSH END

#XIAOMI PUSH START
-keep class com.soufun.app.service.XiaomiMessageReceiver {*;}
#XIAOMI PUSH END

# 语音通话
#-dontwarn com.netease.**
#-dontwarn com.fang.im.rtc_lib.**
#-keep class com.netease.** {*;}
#-keep class com.fang.im.rtc_lib.** {*;}
#
#-keep class com.soufun.app.activity.**{*;}
#-keep class com.soufun.app.chatManager.tools.Chat
#-keep class com.soufun.app.chatManager.ui.ChatCardSelection$*{*;}
#-keep class com.soufun.app.chatManager.ui.ChatCardSelectionViewWrapper{*;}
#-keep class com.soufun.app.view.CustomWebView.**{*;}
#-keep class com.soufun.app.pay.yintong.**{*;}
#-keep class com.soufun.fileoption.**{*;}
#-keep class com.soufun.app.wxapi.**{*;}
#-keep class com.soufun.interfaces.**{*;}
#-keep class com.soufun.app.alipay.tools.** { *; }
#-keep class com.soufun.voicerecord.**{*;}
#-keep class com.soufun.app.activity.XfWapActivity$* { *; }
#-keep class com.soufun.mail.yxd.** { *; }
#-keep class com.soufun.video.**{*;}
#-keep class com.soufun.app.net.http.** { *; }
#-keep class com.soufun.app.activity.SouFunBrowserActivity$* { *; }
#-keep class com.soufun.app.activity.SouFunBrowserNoShareActivity$* { *; }
#-keep class com.soufun.app.activity.baike.** { *; }
#-keep class com.soufun.app.activity.NewsDetailActivity$* { *; }
#-keep class com.soufun.app.activity.HotDetailActivity$* { *; }
#-keep class com.soufun.app.activity.ScanResultActivity$* { *; }
-keep class org.apache.http.entity.mime.** { *; }
-keep class org.apache.harmony.** { *; }
-keep class com.google.zxing.** { *; }
#-keep class com.soufun.app.zxing.**{*;}
-keep class com.google.android.apps.analytics.** { *; }
-keep class com.tencent.mm.sdk.openapi.WXMediaMessage { *;}
-keep class com.tencent.mm.sdk.openapi.** implements com.tencent.mm.sdk.openapi.WXMediaMessage$IMediaObject {*;}
-keep class com.baidu.location.** { *; }
-keep class com.baidu.** { *; }
-keep class mapsdkvi.com.** {*;}
-keep class vi.com.gdi.bgl.android.**{*;}
-keep class com.sun.activation.registries.** { *; }
-keep class javax.activation.** { *; }
-keep class com.umeng.** { *; }
-keep class com.afayear.appunta.android.** { *; }
-keep class com.bairuitech.anychat.** { *; }
-keep class com.nostra13.universalimageloader.** { *; }
-keep class android.media.** { *; }
-keep class com.alipay.android.app.** { *; }
-keep class myjava.awt.datatransfer.** { *; }
-keep class android.support.** { *; }
-keep class the.pdfviewerx.** { *; }
-keep class org.ebookdroid.** { *; }
-keep class org.emdev.** { *; }
-keep class com.hp.hpl.sparta.** { *; }
-keep class net.sourceforge.pinyin4j.** { *; }
-keep class com.nineoldandroids.** { *; }
-keep class com.haarman.listviewanimations.** { *; }
-keep class com.emilsjolander.components.stickylistheaders.** { *; }
-keep class com.yintong.secure.activityproxy.PayIntro$LLJavascriptInterface{*;}
-keep class com.mob.tools.**{*;}
-keep class com.mob.logcollector.**{*;}
-keep class cn.sharesdk.framework.**{*;}
-keep class cn.sharesdk.sina.weibo.**{*;}
-keep class com.sina.sso.**{*;}
-keep class cn.sharesdk.wechat.utils.**{*;}
-keep class cn.sharesdk.wechat.friends.**{*;}
-keep class cn.sharesdk.tencent.qq.**{*;}
-keep class cn.sharesdk.wechat.moments.**{*;}
-keep class com.iflytek.** { *; }
-keep class com.gensee.**{*;}
-keep class com.bumptech.glide.**{*;}
-keep class com.tencent.smtt**{*;}
-keep class com.tencent.tbs.video.interfaces**{*;}
-keep class tv.danmaku.ijk.media**{*;}

-keep class cn.jiajixin.nuwa.**{*;}
-keep class com.tencent.**{*;}
-keep class com.baidubce.**{*;}
-keep class com.alibaba.fastjson.**{*;}
#-keep class com.fang.usertrack.model.**{*;}
-keep class com.googlecode.mp4parser.**{*;}
-keep class com.coremedia.iso.**{*;}
-keep class com.mp4parser.**{*;}
-keep class com.iflytek.**{*;}
-keep class com.spreada.utils.chinese.**{*;}
-keep class com.baidu.tts.**{*;}
-keep class com.baidu.speechsynthesizer.**{*;}
-keep class org.apache.http.**{*;}
#-keep class com.soufun.app.doufang.**{*;}
#-keep class com.soufun.library.imageshare.**{*;}
-keep class com.cdv.**{*;}
-keep class com.meicam.**{*;}
-keep class com.meishe.effect.**{*;}
-keep class com.google.android.exoplayer2.**{*;}
-keep class com.bun.miitmdid.core.** {*;}
-dontwarn com.getui.**
-keep class com.getui.**{*;}
-dontwarn com.igexin.**
-keep class com.igexin.** { *; }
-keep class org.json.** { *; }
-keep class net.lucode.hackware.magicindicator.**{*;}
#个推
-dontwarn com.igexin.**
-keep class com.igexin.** { *; }
-keep class org.json.** { *; }

-keep class android.support.v4.app.NotificationCompat { *; }
-keep class androidx.core.app.NotificationCompat { *; }
-keep class android.support.v4.app.NotificationCompat$Builder { *; }
-keep class androidx.core.app.NotificationCompat$Builder { *; }
#魅族
-keep class com.meizu.** { *; }
-dontwarn com.meizu.**
#小米
-keep class com.xiaomi.** { *; }
-dontwarn com.xiaomi.push.**
-keep class org.apache.thrift.** { *; }
#华为
-dontwarn com.huawei.hms.**
-keep class com.huawei.hms.** { *; }

-keep class com.huawei.android.** { *; }
-dontwarn com.huawei.android.**

-keep class com.hianalytics.android.** { *; }
-dontwarn com.hianalytics.android.**

-keep class com.huawei.updatesdk.** { *; }
-dontwarn com.huawei.updatesdk.**
#OPPO
-keep class com.coloros.mcssdk.** { *; }
-dontwarn com.coloros.mcssdk.**

-ignorewarnings
-keepattributes *Annotation*
-keepattributes Exceptions
-keepattributes InnerClasses
-keepattributes Signature
-keepattributes SourceFile,LineNumberTable


# KotLin Coroutines
-keepnames class kotlinx.coroutines.internal.MainDispatcherFactory {}
-keepnames class kotlinx.coroutines.CoroutineExceptionHandler {}
-keepnames class kotlinx.coroutines.android.AndroidExceptionPreHandler {}
-keepnames class kotlinx.coroutines.android.AndroidDispatcherFactory {}

-keepclassmembernames class kotlinx.** {
    volatile <fields>;
}


#VIVO
-keep class com.vivo.push.** { *; }
-dontwarn com.vivo.push.**

# Bugly混淆规则
-dontwarn com.tencent.bugly.**
-keep public class com.tencent.bugly.**{*;}

# 避免影响升级功能，需要keep住support包的类
#-keep class android.support.**{*;}

#-libraryjars libs/vod_upload_with_bos.jar

# Keep - Library. Keep all public and protected classes, fields, and methods.

#-keep public class com.fang.usertrack.base.** {
#	public protected <fields>;
#	public protected <methods>;
#}


#-keep public class com.soufun.app.entity.db.** {
#	public protected <fields>;
#	public protected <methods>;
#}

-keep public class cn.lxyhome.myintellijandroidproject.entity.** {*;}

-keep public class com.yintong.** {
    <fields>;
    <methods>;
}
-keepclasseswithmembernames class * {
    native <methods>;
}
# Preserve all native method names and the names of their classes.
-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet);
}
-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet, int);
}
# Also keep - Serialization code. Keep all fields and methods that are used for serialization.
-keepclassmembers class * implements java.io.Serializable {
	public protected <fields>;
	public protected <methods>;
    static final long serialVersionUID;
    static final java.io.ObjectStreamField[] serialPersistentFields;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object writeReplace();
    java.lang.Object readResolve();
}

-keepclasseswithmembers class cmb.pb.util.CMBKeyboardFunc {
    public <init>(android.app.Activity);
    public boolean HandleUrlCall(android.webkit.WebView,java.lang.String);
    public void callKeyBoardActivity();
}

-keepclasseswithmembers class com.soufun.app.sec.SFSec {
    public static void crashinit();
}

-keep enum * {
    *;
}


