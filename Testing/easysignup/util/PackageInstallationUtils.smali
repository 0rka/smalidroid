.class public Lcom/samsung/android/coreapps/easysignup/util/PackageInstallationUtils;
.super Ljava/lang/Object;
.source "PackageInstallationUtils.java"


# static fields
.field public static ONCIRCLE_APK_NAME:Ljava/lang/String; = null

.field public static ONCIRCLE_MAX_VERSION_CODE:I = 0x0

.field public static ONCIRCLE_MIN_VERSION_CODE:I = 0x0

.field public static ONCIRCLE_PKG:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "PackageInstallationUtils"

.field private static installAPKHandler:Landroid/os/Handler;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-string v0, "PeopleStripe.apk"

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/util/PackageInstallationUtils;->ONCIRCLE_APK_NAME:Ljava/lang/String;

    .line 27
    const-string v0, "com.samsung.android.service.peoplestripe"

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/util/PackageInstallationUtils;->ONCIRCLE_PKG:Ljava/lang/String;

    .line 28
    const v0, 0x5a06e000

    sput v0, Lcom/samsung/android/coreapps/easysignup/util/PackageInstallationUtils;->ONCIRCLE_MAX_VERSION_CODE:I

    .line 29
    const v0, 0x59d3f10d

    sput v0, Lcom/samsung/android/coreapps/easysignup/util/PackageInstallationUtils;->ONCIRCLE_MIN_VERSION_CODE:I

    .line 95
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/util/PackageInstallationUtils$2;

    invoke-direct {v0}, Lcom/samsung/android/coreapps/easysignup/util/PackageInstallationUtils$2;-><init>()V

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/util/PackageInstallationUtils;->installAPKHandler:Landroid/os/Handler;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkNeedToUpdate(Landroid/content/Context;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 106
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CscUtil;->getCSC()Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "salesCode":Ljava/lang/String;
    const-string v5, "VZW"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6d

    const-string v5, "ATT"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6d

    const-string v5, "AIO"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6d

    const-string v5, "BMC"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6d

    const-string v5, "BWA"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6d

    const-string v5, "ESK"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6d

    const-string v5, "GLW"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6d

    const-string v5, "PCT"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6d

    const-string v5, "RWC"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6d

    const-string v5, "TLS"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6d

    const-string v5, "VTR"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6d

    const-string v5, "XAC"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6d

    const-string v5, "CHM"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 114
    :cond_6d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 115
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_89

    .line 117
    :try_start_73
    sget-object v5, Lcom/samsung/android/coreapps/easysignup/util/PackageInstallationUtils;->ONCIRCLE_PKG:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 118
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_89

    sget v5, Lcom/samsung/android/coreapps/easysignup/util/PackageInstallationUtils;->ONCIRCLE_MIN_VERSION_CODE:I

    iget v6, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-gt v5, v6, :cond_89

    iget v5, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sget v6, Lcom/samsung/android/coreapps/easysignup/util/PackageInstallationUtils;->ONCIRCLE_MAX_VERSION_CODE:I
    :try_end_86
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_73 .. :try_end_86} :catch_8a

    if-ge v5, v6, :cond_89

    .line 119
    const/4 v4, 0x1

    .line 128
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_89
    :goto_89
    return v4

    .line 121
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_8a
    move-exception v0

    .line 122
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkNeedToUpdate : NameNotFoundException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/coreapps/easysignup/util/PackageInstallationUtils;->ONCIRCLE_PKG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PackageInstallationUtils"

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/common/util/CommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_89
.end method

.method public static installApkFromAsset(Ljava/lang/String;)V
    .registers 13
    .param p0, "apkName"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "installAPK, apkName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "PackageInstallationUtils"

    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/common/util/CommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const/4 v6, 0x0

    .line 37
    .local v6, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 38
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 41
    .local v0, "apkFile":Ljava/io/File;
    :try_start_1b
    sget-object v9, Lcom/samsung/android/coreapps/easysignup/util/PackageInstallationUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 42
    sget-object v9, Lcom/samsung/android/coreapps/easysignup/util/PackageInstallationUtils;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-virtual {v9, p0, v10}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    .line 44
    const/16 v9, 0x400

    new-array v2, v9, [B

    .line 45
    .local v2, "buffer":[B
    const/4 v3, 0x0

    .line 46
    .local v3, "byteRead":I
    :goto_31
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v9, -0x1

    if-eq v3, v9, :cond_55

    .line 47
    const/4 v9, 0x0

    invoke-virtual {v5, v2, v9, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3c
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_3c} :catch_3d
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_3c} :catch_cf
    .catchall {:try_start_1b .. :try_end_3c} :catchall_114

    goto :goto_31

    .line 50
    .end local v2    # "buffer":[B
    .end local v3    # "byteRead":I
    :catch_3d
    move-exception v4

    .line 51
    .local v4, "e":Ljava/io/FileNotFoundException;
    :try_start_3e
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_114

    .line 55
    if-eqz v5, :cond_46

    .line 57
    :try_start_43
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_9a

    .line 62
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :cond_46
    :goto_46
    if-eqz v6, :cond_4b

    .line 64
    :try_start_48
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_b4

    .line 71
    :cond_4b
    :goto_4b
    if-nez v0, :cond_154

    .line 72
    const-string v9, "apkFile is null"

    const-string v10, "PackageInstallationUtils"

    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/common/util/CommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_54
    :goto_54
    return-void

    .line 49
    .restart local v2    # "buffer":[B
    .restart local v3    # "byteRead":I
    :cond_55
    :try_start_55
    sget-object v9, Lcom/samsung/android/coreapps/easysignup/util/PackageInstallationUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v9, p0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    :try_end_5a
    .catch Ljava/io/FileNotFoundException; {:try_start_55 .. :try_end_5a} :catch_3d
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5a} :catch_cf
    .catchall {:try_start_55 .. :try_end_5a} :catchall_114

    move-result-object v0

    .line 55
    if-eqz v5, :cond_60

    .line 57
    :try_start_5d
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_80

    .line 62
    :cond_60
    :goto_60
    if-eqz v6, :cond_4b

    .line 64
    :try_start_62
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_4b

    .line 65
    :catch_66
    move-exception v4

    .line 66
    .local v4, "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "installAPK() close is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "PackageInstallationUtils"

    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/common/util/CommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    .line 58
    .end local v4    # "e":Ljava/io/IOException;
    :catch_80
    move-exception v4

    .line 59
    .restart local v4    # "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "installAPK() close fos "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "PackageInstallationUtils"

    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/common/util/CommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_60

    .line 58
    .end local v2    # "buffer":[B
    .end local v3    # "byteRead":I
    .local v4, "e":Ljava/io/FileNotFoundException;
    :catch_9a
    move-exception v4

    .line 59
    .local v4, "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "installAPK() close fos "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "PackageInstallationUtils"

    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/common/util/CommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    .line 65
    .end local v4    # "e":Ljava/io/IOException;
    :catch_b4
    move-exception v4

    .line 66
    .restart local v4    # "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "installAPK() close is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "PackageInstallationUtils"

    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/common/util/CommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4b

    .line 52
    .end local v4    # "e":Ljava/io/IOException;
    :catch_cf
    move-exception v4

    .line 53
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_d0
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_114

    .line 55
    if-eqz v5, :cond_d8

    .line 57
    :try_start_d5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_fa

    .line 62
    :cond_d8
    :goto_d8
    if-eqz v6, :cond_4b

    .line 64
    :try_start_da
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_dd} :catch_df

    goto/16 :goto_4b

    .line 65
    :catch_df
    move-exception v4

    .line 66
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "installAPK() close is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "PackageInstallationUtils"

    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/common/util/CommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4b

    .line 58
    :catch_fa
    move-exception v4

    .line 59
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "installAPK() close fos "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "PackageInstallationUtils"

    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/common/util/CommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d8

    .line 55
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_114
    move-exception v9

    if-eqz v5, :cond_11a

    .line 57
    :try_start_117
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_11a} :catch_120

    .line 62
    :cond_11a
    :goto_11a
    if-eqz v6, :cond_11f

    .line 64
    :try_start_11c
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_11f} :catch_13a

    .line 67
    :cond_11f
    :goto_11f
    throw v9

    .line 58
    :catch_120
    move-exception v4

    .line 59
    .restart local v4    # "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "installAPK() close fos "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "PackageInstallationUtils"

    invoke-static {v10, v11}, Lcom/samsung/android/coreapps/common/util/CommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11a

    .line 65
    .end local v4    # "e":Ljava/io/IOException;
    :catch_13a
    move-exception v4

    .line 66
    .restart local v4    # "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "installAPK() close is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "PackageInstallationUtils"

    invoke-static {v10, v11}, Lcom/samsung/android/coreapps/common/util/CommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11f

    .line 76
    .end local v4    # "e":Ljava/io/IOException;
    :cond_154
    new-instance v7, Lcom/samsung/android/coreapps/easysignup/util/PackageInstallationUtils$1;

    invoke-direct {v7}, Lcom/samsung/android/coreapps/easysignup/util/PackageInstallationUtils$1;-><init>()V

    .line 82
    .local v7, "localPackageInstallObserver":Landroid/content/pm/IPackageInstallObserver;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 83
    .local v1, "apkUri":Landroid/net/Uri;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "apkUri : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "PackageInstallationUtils"

    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/common/util/CommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object v9, Lcom/samsung/android/coreapps/easysignup/util/PackageInstallationUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 86
    .local v8, "pm":Landroid/content/pm/PackageManager;
    if-eqz v8, :cond_54

    .line 87
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v8, v1, v7, v9, v10}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    goto/16 :goto_54
.end method

.method public static startUpdate(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    sput-object p0, Lcom/samsung/android/coreapps/easysignup/util/PackageInstallationUtils;->mContext:Landroid/content/Context;

    .line 92
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/util/PackageInstallationUtils;->installAPKHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 93
    return-void
.end method
