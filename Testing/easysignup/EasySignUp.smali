.class public Lcom/samsung/android/coreapps/easysignup/EasySignUp;
.super Ljava/lang/Object;
.source "EasySignUp.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EasySignUp"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkAppIsUpdated(Landroid/content/Context;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getPrefDeviceBasedSeed()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/DeviceUtils;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_44

    .line 86
    :cond_14
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->isInvalidServer()Z

    move-result v6

    if-eqz v6, :cond_41

    .line 87
    invoke-static {p0}, Lcom/samsung/android/coreapps/easysignup/network/NetState;->getNetState(Landroid/content/Context;)I

    move-result v4

    .line 88
    .local v4, "netState":I
    const/4 v6, -0x3

    if-eq v6, v4, :cond_39

    const/4 v6, -0x2

    if-eq v6, v4, :cond_39

    .line 89
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.samsung.android.coreapps.easysignup.ACTION_LAUNCH_EASY_SIGNUP_BY_SETTING"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 92
    :try_start_30
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_33
    .catch Landroid/content/ActivityNotFoundException; {:try_start_30 .. :try_end_33} :catch_34

    .line 125
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "netState":I
    :cond_33
    :goto_33
    return-void

    .line 93
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "netState":I
    :catch_34
    move-exception v0

    .line 94
    .local v0, "ane":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_33

    .line 97
    .end local v0    # "ane":Landroid/content/ActivityNotFoundException;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_39
    const-string v6, "Server was invalid but Network was not avaliable...."

    const-string v7, "EasySignUp"

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    .line 102
    .end local v4    # "netState":I
    :cond_41
    invoke-static {p0}, Lcom/samsung/android/coreapps/easysignup/EasySignUp;->recoveryAuth(Landroid/content/Context;)V

    .line 108
    :cond_44
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_33

    .line 109
    const-string v6, "gcm_registered_app_version"

    const/high16 v7, -0x80000000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getInt(Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v5

    .line 111
    .local v5, "registeredVersion":I
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/PackageUtils;->getAppVersionCode()I

    move-result v1

    .line 112
    .local v1, "currentVersion":I
    if-eq v5, v1, :cond_33

    .line 113
    const-string v6, "App version changed."

    const-string v7, "EasySignUp"

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/db/PolicyDBMgr;->initPolicy()V

    .line 117
    const-string v6, "SER"

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CscUtil;->getCSC()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7d

    .line 118
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/EasySignUp;->updateContcatAgentDb()V

    .line 120
    :cond_7d
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .local v2, "i":Landroid/content/Intent;
    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_33
.end method

.method private static checkOncircleUpdate(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    invoke-static {p0}, Lcom/samsung/android/coreapps/easysignup/util/PackageInstallationUtils;->checkNeedToUpdate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 150
    invoke-static {p0}, Lcom/samsung/android/coreapps/easysignup/util/PackageInstallationUtils;->startUpdate(Landroid/content/Context;)V

    .line 152
    :cond_9
    return-void
.end method

.method public static init(Landroid/app/Application;)V
    .registers 9
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, -0x1

    .line 39
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 41
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->initTable()V

    .line 43
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/EasySignUpLib;->init(Landroid/content/Context;)V

    .line 45
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/EasySignUp;->checkAppIsUpdated(Landroid/content/Context;)V

    .line 47
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8d

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Registered]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EasySignUp"

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {v0}, Lcom/samsung/android/coreapps/common/util/SettingsGlobalHelper$Auth;->set(Landroid/content/Context;)V

    .line 58
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getSIDs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/common/util/SettingsGlobalHelper$ServiceStatus;->set(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getJoinSIDs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/common/util/SettingsGlobalHelper$JoinServiceStatus;->set(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    :goto_61
    const-string v1, "last_policy_check_time"

    invoke-static {v1, v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-eqz v1, :cond_79

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->getSupportedFeatures(Landroid/content/Context;I)I

    move-result v1

    if-eq v1, v4, :cond_79

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->getSupportedFeatures(Landroid/content/Context;I)I

    move-result v1

    if-ne v1, v4, :cond_89

    .line 73
    :cond_79
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/db/PolicyDBMgr;->initPolicy()V

    .line 74
    const-string v1, "last_policy_check_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    .line 77
    :cond_89
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/EasySignUp;->checkOncircleUpdate(Landroid/content/Context;)V

    .line 78
    return-void

    .line 62
    :cond_8d
    const-string v1, "[NotRegistered]"

    const-string v2, "EasySignUp"

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {v0}, Lcom/samsung/android/coreapps/common/util/SettingsGlobalHelper$Auth;->remove(Landroid/content/Context;)V

    .line 65
    invoke-static {v0}, Lcom/samsung/android/coreapps/common/util/SettingsGlobalHelper$ServiceStatus;->remove(Landroid/content/Context;)V

    .line 66
    invoke-static {v0}, Lcom/samsung/android/coreapps/common/util/SettingsGlobalHelper$JoinServiceStatus;->remove(Landroid/content/Context;)V

    goto :goto_61
.end method

.method public static recoveryAuth(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    invoke-static {p0}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 156
    const-string v1, "auth_recovery_retry_count"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/common/util/CommonPref;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    :cond_10
    :goto_10
    return-void

    .line 160
    :cond_11
    const-string v1, "auth_recovery_retry_count"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getInt(Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v1

    if-lez v1, :cond_10

    .line 161
    const-string v1, "recoveryAuth"

    const-string v2, "EasySignUp"

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/ConnectivityUtils;->isSmsCapable()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 163
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->isSimAbsent()Z

    move-result v1

    if-nez v1, :cond_3d

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/ConnectivityUtils;->isMobileNetworkConnected()Z

    move-result v1

    if-nez v1, :cond_53

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/ConnectivityUtils;->isWifiAvailable()Z

    move-result v1

    if-nez v1, :cond_53

    .line 164
    :cond_3d
    const-string v1, "sim or network isn\'t available."

    const-string v2, "EasySignUp"

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 168
    :cond_45
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/ConnectivityUtils;->isWifiAvailable()Z

    move-result v1

    if-nez v1, :cond_53

    .line 169
    const-string v1, "wifi isn\'t available."

    const-string v2, "EasySignUp"

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 173
    :cond_53
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "imsi"

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_10
.end method

.method private static updateContcatAgentDb()V
    .registers 8

    .prologue
    .line 128
    const-string v4, "clearProfileTable start!"

    const-string v5, "EasySignUp"

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v0, "com.samsung.android.coreapps.contact.sync.AgentQueryHelper"

    .line 132
    .local v0, "CLASS_NAME":Ljava/lang/String;
    :try_start_9
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 133
    .local v1, "classAgentQueryHelper":Ljava/lang/Class;
    const-string v4, "updateContcatAgentDb"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 137
    .local v2, "methodClearLocalDB":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v4, "updateContcatAgentDb invoked!"

    const-string v5, "EasySignUp"

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_33} :catch_3b

    .line 145
    .end local v1    # "classAgentQueryHelper":Ljava/lang/Class;
    .end local v2    # "methodClearLocalDB":Ljava/lang/reflect/Method;
    :goto_33
    const-string v4, "updateContcatAgentDb end!"

    const-string v5, "EasySignUp"

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void

    .line 141
    :catch_3b
    move-exception v3

    .line 142
    .local v3, "t":Ljava/lang/Throwable;
    const-string v4, "updateContcatAgentDb Exception!!"

    const-string v5, "EasySignUp"

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_33
.end method
