.class public final Landroid/net/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"


# static fields
.field public static final PROXY_CHANGE_ACTION:Ljava/lang/String; = "android.intent.action.PROXY_CHANGE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDefaultHost()Ljava/lang/String;
    .locals 3

    .prologue
    .line 102
    const-string v2, "net.gprs.http-proxy"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, host:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 104
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 105
    .local v1, u:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 108
    .end local v1           #u:Landroid/net/Uri;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static final getDefaultPort()I
    .locals 3

    .prologue
    .line 118
    const-string v2, "net.gprs.http-proxy"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, host:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 120
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 121
    .local v1, u:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v2

    .line 123
    .end local v1           #u:Landroid/net/Uri;
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static final getHost(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "ctx"

    .prologue
    .line 46
    invoke-static {p0}, Landroid/net/Proxy;->isProxyForWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    move-object v1, v2

    .line 47
    .local v1, proxy:Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/net/Proxy;->parseHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, host:Ljava/lang/String;
    if-nez v0, :cond_1

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    .line 46
    .end local v0           #host:Ljava/lang/String;
    .end local v1           #proxy:Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Landroid/net/Proxy;->readProxySetting(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .restart local v0       #host:Ljava/lang/String;
    .restart local v1       #proxy:Ljava/lang/String;
    :cond_1
    move-object v2, v0

    .line 48
    goto :goto_1
.end method

.method public static final getPort(Landroid/content/Context;)I
    .locals 3
    .parameter "ctx"

    .prologue
    .line 57
    invoke-static {p0}, Landroid/net/Proxy;->isProxyForWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    move-object v1, v2

    .line 58
    .local v1, proxy:Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/net/Proxy;->parsePort(Ljava/lang/String;)I

    move-result v0

    .line 59
    .local v0, port:I
    if-nez v0, :cond_1

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    :goto_1
    return v2

    .line 57
    .end local v0           #port:I
    .end local v1           #proxy:Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Landroid/net/Proxy;->readProxySetting(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .restart local v0       #port:I
    .restart local v1       #proxy:Ljava/lang/String;
    :cond_1
    move v2, v0

    .line 59
    goto :goto_1
.end method

.method public static final getPreferredHttpHost(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpHost;
    .locals 4
    .parameter "context"
    .parameter "url"

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, proxyHost:Ljava/lang/String;
    const/4 v1, 0x0

    .line 149
    .local v1, proxyPort:I
    invoke-static {p1}, Landroid/net/Proxy;->isLocalHost(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 150
    invoke-static {p0}, Landroid/net/Proxy;->isNetworkWifi(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 151
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {p0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v1

    .line 159
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 160
    new-instance v2, Lorg/apache/http/HttpHost;

    const-string v3, "http"

    invoke-direct {v2, v0, v1, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 164
    :goto_1
    return-object v2

    .line 154
    :cond_1
    invoke-static {p0}, Landroid/net/Proxy;->isNetworkWifi(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    invoke-static {p0}, Landroid/net/Proxy;->getWifiHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-static {p0}, Landroid/net/Proxy;->getWifiPort(Landroid/content/Context;)I

    move-result v1

    goto :goto_0

    .line 164
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static final getWifiHost(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "ctx"

    .prologue
    .line 82
    invoke-static {p0}, Landroid/net/Proxy;->readProxySetting(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Proxy;->parseHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getWifiPort(Landroid/content/Context;)I
    .locals 1
    .parameter "ctx"

    .prologue
    .line 93
    invoke-static {p0}, Landroid/net/Proxy;->readProxySetting(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Proxy;->parsePort(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final isEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v2, 0x1

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "http_proxy_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final isLocalHost(Ljava/lang/String;)Z
    .locals 5
    .parameter "url"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 204
    if-nez p0, :cond_0

    move v2, v3

    .line 225
    :goto_0
    return v2

    .line 209
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 210
    .local v1, uri:Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, host:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 212
    const-string v2, "localhost"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    .line 213
    goto :goto_0

    .line 215
    :cond_1
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    .line 216
    goto :goto_0

    .line 221
    .end local v0           #host:Ljava/lang/String;
    .end local v1           #uri:Ljava/net/URI;
    :catch_0
    move-exception v2

    :cond_2
    :goto_1
    move v2, v3

    .line 225
    goto :goto_0

    .line 219
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private static final isNetworkWifi(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 237
    if-nez p0, :cond_0

    move v2, v3

    .line 251
    :goto_0
    return v2

    .line 241
    :cond_0
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 243
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 244
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 245
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v4, :cond_1

    move v2, v4

    .line 247
    goto :goto_0

    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_1
    move v2, v3

    .line 251
    goto :goto_0
.end method

.method public static final isProxyForWifiOnly(Landroid/content/Context;)Z
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v3, 0x1

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "http_proxy_wifi_only"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v0, v3

    .line 175
    .local v0, ret:Z
    :goto_0
    return v0

    .line 173
    .end local v0           #ret:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private static final parseHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "proxy"

    .prologue
    const/4 v2, 0x0

    .line 179
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 180
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 181
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move-object v1, v2

    .line 187
    .end local v0           #i:I
    :goto_0
    return-object v1

    .line 184
    .restart local v0       #i:I
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .end local v0           #i:I
    :cond_1
    move-object v1, v2

    .line 187
    goto :goto_0
.end method

.method private static final parsePort(Ljava/lang/String;)I
    .locals 3
    .parameter "proxy"

    .prologue
    const/4 v2, -0x1

    .line 191
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 192
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 193
    .local v0, i:I
    if-ne v0, v2, :cond_0

    move v1, v2

    .line 200
    .end local v0           #i:I
    :goto_0
    return v1

    .line 197
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 200
    .end local v0           #i:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static final readProxySetting(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "ctx"

    .prologue
    .line 229
    invoke-static {p0}, Landroid/net/Proxy;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "http_proxy"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
