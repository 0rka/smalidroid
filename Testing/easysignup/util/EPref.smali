.class public Lcom/samsung/android/coreapps/easysignup/util/EPref;
.super Ljava/lang/Object;
.source "EPref.java"


# static fields
.field private static final FROYO:I = 0x8

.field private static final MCC:Ljava/lang/String; = "mcc"

.field public static final PREF_COUNTRY_NAME:Ljava/lang/String; = "country_name"

.field public static final PREF_DATA_POPUP_HIDE:Ljava/lang/String; = "data_popup_hide"

.field public static final PREF_DEVICE_ID:Ljava/lang/String; = "device_id"

.field public static final PREF_EXPIRE_ACCOUNT_TIME:Ljava/lang/String; = "expire_account_time"

.field private static final PREF_FILE:Ljava/lang/String; = "easysignup_pref"

.field public static final PREF_HEARTBEAT_INTERVAL:Ljava/lang/String; = "heart_beat_interval"

.field public static final PREF_IMSI:Ljava/lang/String; = "IMSI"

.field public static final PREF_IS_ENABLE_SEND_LOG:Ljava/lang/String; = "is_enable_send_log"

.field public static final PREF_IS_MO_SMS_SENT:Ljava/lang/String; = "is_mo_sms_sent"

.field public static final PREF_IS_POPUP_MODE:Ljava/lang/String; = "is_popup_mode"

.field public static final PREF_IS_TNC_UPDATED:Ljava/lang/String; = "is_tnc_updated"

.field public static final PREF_LAST_FREE_MESSAGE_STATUS:Ljava/lang/String; = "last_free_message_status"

.field public static final PREF_LAST_HEARTBEAT_TIME:Ljava/lang/String; = "last_heart_beat_time"

.field public static final PREF_LAST_POLICY_CHECK_TIME:Ljava/lang/String; = "last_policy_check_time"

.field public static final PREF_LAST_UPDATE_CHECK_TIME:Ljava/lang/String; = "last_update_check_time"

.field public static final PREF_MARKETING_AGREEMENT:Ljava/lang/String; = "marketing_agreement"

.field public static final PREF_POLICY_CHECK_INTERVAL:Ljava/lang/String; = "policy_check_interval"

.field public static final PREF_POLICY_SET_TIME:Ljava/lang/String; = "policy_set_time"

.field public static final PREF_PP_URL:Ljava/lang/String; = "pp_url"

.field public static final PREF_SETUP_WIZARD_TIME:Ljava/lang/String; = "setup_wizard_time"

.field public static final PREF_SHOW_GREETING_ACTIVITY:Ljava/lang/String; = "show_greeting_activity"

.field public static final PREF_TNC_URL:Ljava/lang/String; = "tnc_url"

.field public static final PREF_UPDATE_CHECK_TIME_INTERVAL:Ljava/lang/String; = "update_check_time_interval"

.field private static final SDK_VERSION:I

.field private static final TAG:Ljava/lang/String; = "EPref"

.field private static final TNC_AGREED:Ljava/lang/String; = "tnc_agreed"

.field private static final UID:Ljava/lang/String; = "uid"

.field private static sCtx:Landroid/content/Context;

.field private static sImsi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/samsung/android/coreapps/easysignup/util/EPref;->SDK_VERSION:I

    .line 68
    const-string v0, ""

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/util/EPref;->sImsi:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/util/EPref;->sCtx:Landroid/content/Context;

    .line 73
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/util/EPref;->sCtx:Landroid/content/Context;

    .line 74
    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized contains(Ljava/lang/String;)Z
    .registers 10
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 340
    const-class v5, Lcom/samsung/android/coreapps/easysignup/util/EPref;

    monitor-enter v5

    if-nez p0, :cond_9

    .line 364
    :cond_7
    :goto_7
    monitor-exit v5

    return v3

    .line 344
    :cond_9
    :try_start_9
    sget-object v6, Lcom/samsung/android/coreapps/easysignup/util/EPref;->sCtx:Landroid/content/Context;

    const-string v7, "easysignup_pref"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 346
    .local v2, "pref":Landroid/content/SharedPreferences;
    const-string v6, "contains"

    invoke-static {p0, v6}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->isEncryptKey(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_3e

    move-result v6

    if-eqz v6, :cond_41

    .line 347
    const/4 v1, 0x0

    .line 349
    .local v1, "encryptedKey":Ljava/lang/String;
    :try_start_1b
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getInstance()Lcom/samsung/android/coreapps/common/util/AESCryptoV02;

    move-result-object v6

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getInstance()Lcom/samsung/android/coreapps/common/util/AESCryptoV02;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getCryptoSeedPassword()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, p0}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2a} :catch_39
    .catchall {:try_start_1b .. :try_end_2a} :catchall_3e

    move-result-object v1

    .line 354
    :goto_2b
    :try_start_2b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v3, v4

    .line 355
    goto :goto_7

    .line 350
    :catch_39
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_2b .. :try_end_3d} :catchall_3e

    goto :goto_2b

    .line 340
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "encryptedKey":Ljava/lang/String;
    .end local v2    # "pref":Landroid/content/SharedPreferences;
    :catchall_3e
    move-exception v3

    monitor-exit v5

    throw v3

    .line 358
    .restart local v2    # "pref":Landroid/content/SharedPreferences;
    :cond_41
    :try_start_41
    invoke-interface {v2, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_3e

    move-result v6

    if-eqz v6, :cond_7

    move v3, v4

    .line 360
    goto :goto_7
.end method

.method public static declared-synchronized getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .registers 8
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defValue"    # Ljava/lang/Boolean;

    .prologue
    .line 165
    const-class v3, Lcom/samsung/android/coreapps/easysignup/util/EPref;

    monitor-enter v3

    :try_start_3
    sget-object v2, Lcom/samsung/android/coreapps/easysignup/util/EPref;->sCtx:Landroid/content/Context;

    const-string v4, "easysignup_pref"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 166
    .local v0, "pref":Landroid/content/SharedPreferences;
    if-nez p0, :cond_14

    .line 167
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_3f

    move-result v1

    .line 174
    :goto_12
    monitor-exit v3

    return v1

    .line 170
    :cond_14
    :try_start_14
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 172
    .local v1, "value":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBoolean - key : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " , value : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "EPref"

    invoke-static {v2, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_14 .. :try_end_3e} :catchall_3f

    goto :goto_12

    .line 165
    .end local v0    # "pref":Landroid/content/SharedPreferences;
    .end local v1    # "value":Z
    :catchall_3f
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized getInt(Ljava/lang/String;Ljava/lang/Integer;)I
    .registers 8
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defValue"    # Ljava/lang/Integer;

    .prologue
    .line 244
    const-class v3, Lcom/samsung/android/coreapps/easysignup/util/EPref;

    monitor-enter v3

    :try_start_3
    sget-object v2, Lcom/samsung/android/coreapps/easysignup/util/EPref;->sCtx:Landroid/content/Context;

    const-string v4, "easysignup_pref"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 246
    .local v0, "pref":Landroid/content/SharedPreferences;
    if-nez p0, :cond_14

    .line 247
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_3f

    move-result v1

    .line 254
    :goto_12
    monitor-exit v3

    return v1

    .line 250
    :cond_14
    :try_start_14
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 252
    .local v1, "value":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInt - key : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " , value : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "EPref"

    invoke-static {v2, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_14 .. :try_end_3e} :catchall_3f

    goto :goto_12

    .line 244
    .end local v0    # "pref":Landroid/content/SharedPreferences;
    .end local v1    # "value":I
    :catchall_3f
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getIsEnableSendLog()Z
    .registers 2

    .prologue
    .line 125
    const-string v0, "is_enable_send_log"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getLong(Ljava/lang/String;J)J
    .registers 10
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defValue"    # J

    .prologue
    .line 278
    const-class v3, Lcom/samsung/android/coreapps/easysignup/util/EPref;

    monitor-enter v3

    :try_start_3
    sget-object v2, Lcom/samsung/android/coreapps/easysignup/util/EPref;->sCtx:Landroid/content/Context;

    const-string v4, "easysignup_pref"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_3f

    move-result-object v0

    .line 280
    .local v0, "pref":Landroid/content/SharedPreferences;
    if-nez p0, :cond_10

    .line 288
    .end local p1    # "defValue":J
    :goto_e
    monitor-exit v3

    return-wide p1

    .line 284
    .restart local p1    # "defValue":J
    :cond_10
    :try_start_10
    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 286
    .local v1, "value":Ljava/lang/Long;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLong - key : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " , value : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "EPref"

    invoke-static {v2, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_3d
    .catchall {:try_start_10 .. :try_end_3d} :catchall_3f

    move-result-wide p1

    goto :goto_e

    .line 278
    .end local v0    # "pref":Landroid/content/SharedPreferences;
    .end local v1    # "value":Ljava/lang/Long;
    :catchall_3f
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defValue"    # Ljava/lang/String;

    .prologue
    .line 199
    const-class v7, Lcom/samsung/android/coreapps/easysignup/util/EPref;

    monitor-enter v7

    if-nez p0, :cond_7

    .line 240
    .end local p1    # "defValue":Ljava/lang/String;
    :goto_5
    monitor-exit v7

    return-object p1

    .line 203
    .restart local p1    # "defValue":Ljava/lang/String;
    :cond_7
    :try_start_7
    sget-object v6, Lcom/samsung/android/coreapps/easysignup/util/EPref;->sCtx:Landroid/content/Context;

    const-string v8, "easysignup_pref"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 205
    .local v3, "pref":Landroid/content/SharedPreferences;
    move-object v5, p1

    .line 206
    .local v5, "value":Ljava/lang/String;
    const-string v6, "get"

    invoke-static {p0, v6}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->isEncryptKey(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_c3

    move-result v6

    if-eqz v6, :cond_c6

    .line 209
    :try_start_19
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getInstance()Lcom/samsung/android/coreapps/common/util/AESCryptoV02;

    move-result-object v6

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getInstance()Lcom/samsung/android/coreapps/common/util/AESCryptoV02;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getCryptoSeedPassword()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, p0}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "encryptedKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_73

    invoke-interface {v3, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 211
    invoke-interface {v3, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, "temp":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4f

    .line 213
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getInstance()Lcom/samsung/android/coreapps/common/util/AESCryptoV02;

    move-result-object v6

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getInstance()Lcom/samsung/android/coreapps/common/util/AESCryptoV02;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getCryptoSeedPassword()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v4}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_4e} :catch_ba
    .catchall {:try_start_19 .. :try_end_4e} :catchall_c3

    move-result-object v5

    .line 238
    .end local v1    # "encryptedKey":Ljava/lang/String;
    .end local v4    # "temp":Ljava/lang/String;
    :cond_4f
    :goto_4f
    :try_start_4f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getString - key : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " , value : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "EPref"

    invoke-static {v6, v8}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_4f .. :try_end_71} :catchall_c3

    move-object p1, v5

    .line 240
    goto :goto_5

    .line 215
    .restart local v1    # "encryptedKey":Ljava/lang/String;
    :cond_73
    :try_start_73
    invoke-interface {v3, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 216
    invoke-interface {v3, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 217
    .restart local v4    # "temp":Ljava/lang/String;
    move-object v5, v4

    .line 218
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4f

    .line 219
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getInstance()Lcom/samsung/android/coreapps/common/util/AESCryptoV02;

    move-result-object v6

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getInstance()Lcom/samsung/android/coreapps/common/util/AESCryptoV02;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getCryptoSeedPassword()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v5}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "encryptedValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4f

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4f

    .line 221
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 222
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_b9} :catch_ba
    .catchall {:try_start_73 .. :try_end_b9} :catchall_c3

    goto :goto_4f

    .line 227
    .end local v1    # "encryptedKey":Ljava/lang/String;
    .end local v2    # "encryptedValue":Ljava/lang/String;
    .end local v4    # "temp":Ljava/lang/String;
    :catch_ba
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    :try_start_bb
    const-string v6, "Error occured while trying to get string from key"

    const-string v8, "EPref"

    invoke-static {v6, v8}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c2
    .catchall {:try_start_bb .. :try_end_c2} :catchall_c3

    goto :goto_4f

    .line 199
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "pref":Landroid/content/SharedPreferences;
    .end local v5    # "value":Ljava/lang/String;
    :catchall_c3
    move-exception v6

    monitor-exit v7

    throw v6

    .line 230
    .restart local v3    # "pref":Landroid/content/SharedPreferences;
    .restart local v5    # "value":Ljava/lang/String;
    :cond_c6
    :try_start_c6
    invoke-interface {v3, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    :try_end_c9
    .catchall {:try_start_c6 .. :try_end_c9} :catchall_c3

    move-result v6

    if-eqz v6, :cond_4f

    .line 232
    :try_start_cc
    invoke-interface {v3, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_cf} :catch_d2
    .catchall {:try_start_cc .. :try_end_cf} :catchall_c3

    move-result-object v5

    goto/16 :goto_4f

    .line 233
    :catch_d2
    move-exception v0

    .line 234
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_d3
    const-string v6, "Error occured while trying to get string from key"

    const-string v8, "EPref"

    invoke-static {v6, v8}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_da
    .catchall {:try_start_d3 .. :try_end_da} :catchall_c3

    goto/16 :goto_4f
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 77
    const-class v0, Lcom/samsung/android/coreapps/easysignup/util/EPref;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lcom/samsung/android/coreapps/easysignup/util/EPref;->sCtx:Landroid/content/Context;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 78
    monitor-exit v0

    return-void

    .line 77
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isChineseModelDataDestrictionPopupShow()Z
    .registers 3

    .prologue
    .line 368
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CscUtil;->isChinaCountryCode()Z

    move-result v0

    .line 369
    .local v0, "isDataPopupShow":Z
    if-eqz v0, :cond_14

    .line 371
    const-string v1, "data_popup_hide"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 373
    const/4 v0, 0x0

    .line 376
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is Data Popup Show   : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EPref"

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return v0
.end method

.method private static isEncryptKey(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string v0, "device_id"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "IMSI"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 114
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This is Encrypt Key : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EPref"

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v0, 0x1

    .line 117
    :goto_33
    return v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_33
.end method

.method public static declared-synchronized putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 178
    const-class v1, Lcom/samsung/android/coreapps/easysignup/util/EPref;

    monitor-enter v1

    if-nez p0, :cond_7

    .line 190
    :cond_5
    :goto_5
    monitor-exit v1

    return-void

    .line 181
    :cond_7
    if-eqz p1, :cond_5

    .line 185
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putBoolean - key : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", value : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EPref"

    invoke-static {v0, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {p0, p1}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putBooleanInternal(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_36
    .catchall {:try_start_9 .. :try_end_36} :catchall_37

    goto :goto_5

    .line 178
    :catchall_37
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static putBooleanInternal(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Boolean;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 194
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/EPref;->sCtx:Landroid/content/Context;

    const-string v2, "easysignup_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 195
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 196
    return-void
.end method

.method public static declared-synchronized putInt(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 258
    const-class v1, Lcom/samsung/android/coreapps/easysignup/util/EPref;

    monitor-enter v1

    if-nez p0, :cond_7

    .line 268
    :cond_5
    :goto_5
    monitor-exit v1

    return-void

    .line 261
    :cond_7
    if-eqz p1, :cond_5

    .line 265
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putInt - key : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " , value : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EPref"

    invoke-static {v0, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-static {p0, p1}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putIntInternal(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_2f

    goto :goto_5

    .line 258
    :catchall_2f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static putIntInternal(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Integer;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 272
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/EPref;->sCtx:Landroid/content/Context;

    const-string v2, "easysignup_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 274
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 275
    return-void
.end method

.method public static declared-synchronized putLong(Ljava/lang/String;Ljava/lang/Long;)V
    .registers 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Long;

    .prologue
    .line 292
    const-class v1, Lcom/samsung/android/coreapps/easysignup/util/EPref;

    monitor-enter v1

    if-nez p0, :cond_7

    .line 302
    :cond_5
    :goto_5
    monitor-exit v1

    return-void

    .line 295
    :cond_7
    if-eqz p1, :cond_5

    .line 299
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putLong - key : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " , value : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EPref"

    invoke-static {v0, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-static {p0, p1}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putLongInternal(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_2f

    goto :goto_5

    .line 292
    :catchall_2f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static putLongInternal(Ljava/lang/String;Ljava/lang/Long;)V
    .registers 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Long;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 306
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/EPref;->sCtx:Landroid/content/Context;

    const-string v2, "easysignup_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 308
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 309
    return-void
.end method

.method public static declared-synchronized putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 130
    const-class v4, Lcom/samsung/android/coreapps/easysignup/util/EPref;

    monitor-enter v4

    if-nez p0, :cond_7

    .line 156
    :goto_5
    monitor-exit v4

    return-void

    .line 134
    :cond_7
    if-nez p1, :cond_b

    .line 135
    :try_start_9
    const-string p1, ""

    .line 138
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "putString - key : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " , value : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "EPref"

    invoke-static {v3, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v3, "put"

    invoke-static {p0, v3}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->isEncryptKey(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_32
    .catchall {:try_start_9 .. :try_end_32} :catchall_61

    move-result v3

    if-eqz v3, :cond_64

    .line 143
    :try_start_35
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getInstance()Lcom/samsung/android/coreapps/common/util/AESCryptoV02;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getInstance()Lcom/samsung/android/coreapps/common/util/AESCryptoV02;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getCryptoSeedPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, p0}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "encryptedKey":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getInstance()Lcom/samsung/android/coreapps/common/util/AESCryptoV02;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getInstance()Lcom/samsung/android/coreapps/common/util/AESCryptoV02;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getCryptoSeedPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, p1}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "encryptedValue":Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putStringInternal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_58} :catch_59
    .catchall {:try_start_35 .. :try_end_58} :catchall_61

    goto :goto_5

    .line 147
    .end local v1    # "encryptedKey":Ljava/lang/String;
    .end local v2    # "encryptedValue":Ljava/lang/String;
    :catch_59
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    invoke-static {p0, p1}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putStringInternal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_5a .. :try_end_60} :catchall_61

    goto :goto_5

    .line 130
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_61
    move-exception v3

    monitor-exit v4

    throw v3

    .line 154
    :cond_64
    :try_start_64
    invoke-static {p0, p1}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putStringInternal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_61

    goto :goto_5
.end method

.method private static putStringInternal(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 160
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/EPref;->sCtx:Landroid/content/Context;

    const-string v2, "easysignup_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 161
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 162
    return-void
.end method

.method public static registerOnChangedListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 5
    .param p0, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 381
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/EPref;->sCtx:Landroid/content/Context;

    const-string v2, "easysignup_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 382
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 383
    return-void
.end method

.method public static remove(Ljava/lang/String;)V
    .registers 7
    .param p0, "key"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 313
    if-nez p0, :cond_3

    .line 337
    :goto_2
    return-void

    .line 317
    :cond_3
    sget-object v3, Lcom/samsung/android/coreapps/easysignup/util/EPref;->sCtx:Landroid/content/Context;

    const-string v4, "easysignup_pref"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 319
    .local v2, "pref":Landroid/content/SharedPreferences;
    const-string v3, "remove"

    invoke-static {p0, v3}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->isEncryptKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 321
    const/4 v1, 0x0

    .line 323
    .local v1, "encryptedKey":Ljava/lang/String;
    :try_start_15
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getInstance()Lcom/samsung/android/coreapps/common/util/AESCryptoV02;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getInstance()Lcom/samsung/android/coreapps/common/util/AESCryptoV02;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getCryptoSeedPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p0}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_24} :catch_4b

    move-result-object v1

    .line 328
    :goto_25
    if-eqz v1, :cond_3f

    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encryptedKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EPref"

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_3f
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 324
    :catch_4b
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25

    .line 334
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "encryptedKey":Ljava/lang/String;
    :cond_50
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2
.end method

.method public static setIsEnableSendLog(Z)V
    .registers 3
    .param p0, "value"    # Z

    .prologue
    .line 121
    const-string v0, "is_enable_send_log"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 122
    return-void
.end method

.method public static unregisterOnChangedListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 5
    .param p0, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 386
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/EPref;->sCtx:Landroid/content/Context;

    const-string v2, "easysignup_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 387
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 388
    return-void
.end method
