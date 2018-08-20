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
#
#-repackageclasses com.liam.assistivetouch
#抛出异常时保留代码行号
-keepattributes SourceFile,LineNumberTable

#混淆词典
-classobfuscationdictionary dictionary-elder.txt
-packageobfuscationdictionary dictionary-elder.txt
-obfuscationdictionary dictionary-elder.txt

#在release 混淆过程中删除Log代码，有助于提升性能，需要启用代码优化才能生效
-assumenosideeffects class android.util.Log {
    public static boolean isLoggable(java.lang.String, int);
    public static int d(...);
    public static int w(...);
    public static int v(...);
    public static int i(...);
}