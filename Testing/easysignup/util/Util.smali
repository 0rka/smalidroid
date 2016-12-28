.class public Lcom/samsung/android/coreapps/easysignup/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEncImei(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "imei"    # Ljava/lang/String;

    .prologue
    .line 26
    const/16 v4, 0x10

    new-array v3, v4, [B

    .line 28
    .local v3, "messageDigest":[B
    :try_start_4
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 29
    .local v2, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 30
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B
    :try_end_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_14} :catch_20

    move-result-object v3

    .line 35
    .end local v2    # "md":Ljava/security/MessageDigest;
    :goto_15
    new-instance v1, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    .line 37
    .local v1, "encodedString":Ljava/lang/String;
    return-object v1

    .line 31
    .end local v1    # "encodedString":Ljava/lang/String;
    :catch_20
    move-exception v0

    .line 33
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_15
.end method

.method public static getModelName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 14
    const-string v1, "SAMSUNG-"

    .line 15
    .local v1, "SAMSUNG":Ljava/lang/String;
    const-string v0, "OMAP_SS"

    .line 16
    .local v0, "PREFIX_CMCC":Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 17
    .local v2, "model":Ljava/lang/String;
    const-string v3, "OMAP_SS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 22
    :goto_f
    return-object v2

    .line 20
    :cond_10
    const-string v3, "SAMSUNG-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_f
.end method
