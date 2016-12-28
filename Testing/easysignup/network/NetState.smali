.class public Lcom/samsung/android/coreapps/easysignup/network/NetState;
.super Ljava/lang/Object;
.source "NetState.java"


# static fields
.field public static final HOST_LOOKUP_FAILED:I = -0x1

.field public static final MOBILE:I = 0x1

.field public static final NOT_AVAILABLE:I = -0x2

.field public static final NOT_CONNECTED:I = -0x3

.field public static final UNCHECKED:I = -0x4

.field public static final WIFI:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetState(Landroid/content/Context;)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const/4 v2, -0x4

    .line 60
    .local v2, "reVal":I
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 61
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 63
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-nez v1, :cond_11

    .line 64
    const/4 v2, -0x3

    .line 85
    :goto_10
    return v2

    .line 65
    :cond_11
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 66
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 67
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 68
    .local v3, "type":I
    packed-switch v3, :pswitch_data_2e

    .line 76
    move v2, v3

    goto :goto_10

    .line 70
    :pswitch_26
    const/4 v2, 0x0

    .line 71
    goto :goto_10

    .line 73
    :pswitch_28
    const/4 v2, 0x1

    .line 74
    goto :goto_10

    .line 80
    .end local v3    # "type":I
    :cond_2a
    const/4 v2, -0x2

    goto :goto_10

    .line 83
    :cond_2c
    const/4 v2, -0x3

    goto :goto_10

    .line 68
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_28
        :pswitch_26
    .end packed-switch
.end method

.method public static getNetState(Landroid/content/Context;Ljava/lang/String;)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {p0}, Lcom/samsung/android/coreapps/easysignup/network/NetState;->getNetState(Landroid/content/Context;)I

    move-result v0

    .line 91
    .local v0, "reVal":I
    const/4 v3, -0x3

    if-eq v0, v3, :cond_a

    const/4 v3, -0x2

    if-ne v0, v3, :cond_c

    :cond_a
    move v1, v0

    .line 105
    .end local v0    # "reVal":I
    .local v1, "reVal":I
    :goto_b
    return v1

    .line 97
    .end local v1    # "reVal":I
    .restart local v0    # "reVal":I
    :cond_c
    :try_start_c
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_f
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_f} :catch_11

    :goto_f
    move v1, v0

    .line 105
    .end local v0    # "reVal":I
    .restart local v1    # "reVal":I
    goto :goto_b

    .line 98
    .end local v1    # "reVal":I
    .restart local v0    # "reVal":I
    :catch_11
    move-exception v2

    .line 101
    .local v2, "uhe":Ljava/net/UnknownHostException;
    const/4 v0, -0x1

    goto :goto_f
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 109
    const/4 v0, 0x0

    .line 123
    .local v0, "isAirplaneModeOn":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_10

    const/4 v0, 0x1

    .line 125
    :goto_f
    return v0

    :cond_10
    move v0, v1

    .line 123
    goto :goto_f
.end method

.method public static isBluetoothConnected(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 224
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 225
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 227
    .local v1, "niBt":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_14

    .line 228
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    .line 230
    :goto_13
    return v2

    :cond_14
    const/4 v2, 0x0

    goto :goto_13
.end method

.method public static isDataConnectionOn(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 175
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    .line 176
    const/4 v1, 0x1

    .line 178
    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public static isMobileDataOn(Landroid/content/Context;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    const/4 v4, 0x0

    .line 151
    .local v4, "mobileDataEnabled":Z
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 153
    .local v0, "cm":Landroid/net/ConnectivityManager;
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 154
    .local v1, "cmClass":Ljava/lang/Class;
    const-string v6, "getMobileDataEnabled"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 156
    .local v3, "method":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_33

    .line 157
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 158
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 159
    .local v5, "obj":Ljava/lang/Object;
    if-eqz v5, :cond_34

    .line 160
    check-cast v5, Ljava/lang/Boolean;

    .end local v5    # "obj":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_32} :catch_36

    move-result v4

    .line 168
    .end local v1    # "cmClass":Ljava/lang/Class;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_33
    :goto_33
    return v4

    .line 162
    .restart local v1    # "cmClass":Ljava/lang/Class;
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    .restart local v5    # "obj":Ljava/lang/Object;
    :cond_34
    const/4 v4, 0x0

    goto :goto_33

    .line 165
    .end local v1    # "cmClass":Ljava/lang/Class;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "obj":Ljava/lang/Object;
    :catch_36
    move-exception v2

    .line 166
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_33
.end method

.method public static isRoamingOn(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public static isSignalAvailable(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 210
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 212
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 213
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_13

    .line 214
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    .line 216
    :cond_13
    return v2
.end method

.method public static isSystemRoaming(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 198
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_f

    .line 199
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    .line 201
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static isWifiOn(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method
