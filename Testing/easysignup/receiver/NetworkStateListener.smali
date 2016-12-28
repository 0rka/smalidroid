.class public Lcom/samsung/android/coreapps/easysignup/receiver/NetworkStateListener;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkStateListener"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 31
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    if-eqz p2, :cond_8

    .line 34
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, "action_intent":Ljava/lang/String;
    if-nez v4, :cond_9

    .line 127
    .end local v4    # "action_intent":Ljava/lang/String;
    :cond_8
    :goto_8
    return-void

    .line 40
    .restart local v4    # "action_intent":Ljava/lang/String;
    :cond_9
    const-string v23, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 43
    const-string v23, "noConnectivity"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    .line 44
    .local v22, "noConnect":Z
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "noConnect = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const-string v24, "NetworkStateListener"

    invoke-static/range {v23 .. v24}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 48
    .local v7, "ctx":Landroid/content/Context;
    if-nez v22, :cond_8

    invoke-static {v7}, Lcom/samsung/android/coreapps/common/util/CommonUtils;->isOwner(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_8

    invoke-static {v7}, Lcom/samsung/android/coreapps/common/util/sdl/EmergencyManagerRef;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_8

    .line 50
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_18e

    .line 51
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[Registered]["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const-string v24, "NetworkStateListener"

    invoke-static/range {v23 .. v24}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "coreapps"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    if-nez v23, :cond_c8

    .line 55
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/coreapps/easysignup/setting/SettingAccount;->addAccount(Ljava/lang/String;)V

    .line 56
    new-instance v5, Landroid/content/Intent;

    const-string v23, "com.samsung.android.coreapps.easysignup.ACTION_ESU_ADDED_ACCOUNT"

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v5, "addedIntent":Landroid/content/Intent;
    const-string v23, "imsi"

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const/16 v23, 0x20

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 59
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 62
    .end local v5    # "addedIntent":Landroid/content/Intent;
    :cond_c8
    const-string v23, "expire_account_time"

    const-wide v24, 0x7fffffffffffffffL

    invoke-static/range {v23 .. v25}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 63
    .local v12, "expireAccountTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    cmp-long v23, v24, v12

    if-ltz v23, :cond_109

    .line 64
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_109

    .line 65
    new-instance v15, Landroid/content/Intent;

    const-class v23, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v15, "it":Landroid/content/Intent;
    const-string v23, "com.samsung.android.coreapps.easysignup.ACTION_LOGIN"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v23, "accessToken"

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 87
    .end local v15    # "it":Landroid/content/Intent;
    :cond_109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 88
    .local v10, "currentTime":J
    const-string v23, "last_heart_beat_time"

    const-wide/16 v24, 0x0

    invoke-static/range {v23 .. v25}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    .line 89
    .local v18, "lastHeartBeatTime":J
    const-string v23, "heart_beat_interval"

    const-wide/16 v24, 0x0

    invoke-static/range {v23 .. v25}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    .line 90
    .local v16, "heartBeatInterval":J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "currentTIme ="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const-string v24, "NetworkStateListener"

    invoke-static/range {v23 .. v24}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-wide/16 v24, 0x0

    cmp-long v23, v18, v24

    if-eqz v23, :cond_143

    add-long v24, v18, v16

    cmp-long v23, v10, v24

    if-lez v23, :cond_181

    .line 94
    :cond_143
    new-instance v14, Landroid/content/Intent;

    const-class v23, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-direct {v14, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .local v14, "heartBeatIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 100
    .end local v14    # "heartBeatIntent":Landroid/content/Intent;
    :goto_153
    const-string v23, "last_policy_check_time"

    move-object/from16 v0, v23

    invoke-static {v0, v10, v11}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v20

    .line 101
    .local v20, "lastPolicySetTime":J
    const-string v23, "policy_check_interval"

    const-wide/16 v24, 0x0

    invoke-static/range {v23 .. v25}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 103
    .local v8, "checkPolicyInterval":J
    const-wide/16 v24, 0x0

    cmp-long v23, v20, v24

    if-eqz v23, :cond_16f

    add-long v24, v20, v8

    cmp-long v23, v10, v24

    if-lez v23, :cond_187

    .line 105
    :cond_16f
    new-instance v6, Landroid/content/Intent;

    const-class v23, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v6, "checkPolicyIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_8

    .line 97
    .end local v6    # "checkPolicyIntent":Landroid/content/Intent;
    .end local v8    # "checkPolicyInterval":J
    .end local v20    # "lastPolicySetTime":J
    :cond_181
    add-long v24, v18, v16

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->registerAlarm(J)V

    goto :goto_153

    .line 108
    .restart local v8    # "checkPolicyInterval":J
    .restart local v20    # "lastPolicySetTime":J
    :cond_187
    add-long v24, v20, v8

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;->registerAlarm(J)V

    goto/16 :goto_8

    .line 112
    .end local v8    # "checkPolicyInterval":J
    .end local v10    # "currentTime":J
    .end local v12    # "expireAccountTime":J
    .end local v16    # "heartBeatInterval":J
    .end local v18    # "lastHeartBeatTime":J
    .end local v20    # "lastPolicySetTime":J
    :cond_18e
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[NotRegistered]["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const-string v24, "NetworkStateListener"

    invoke-static/range {v23 .. v24}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v23, "key_mo_from_eula"

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v23

    if-eqz v23, :cond_1f5

    .line 114
    const-string v23, "Accepted request from EULA"

    const-string v24, "NetworkStateListener"

    invoke-static/range {v23 .. v24}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v23, "key_next_retry"

    const-wide/16 v24, 0x0

    invoke-static/range {v23 .. v25}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    cmp-long v23, v24, v26

    if-gez v23, :cond_8

    .line 116
    const-string v23, "Service started."

    const-string v24, "NetworkStateListener"

    invoke-static/range {v23 .. v24}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance v15, Landroid/content/Intent;

    const-class v23, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .restart local v15    # "it":Landroid/content/Intent;
    const-string v23, "com.samsung.android.coreapps.easysignup.ACTION_AUTO_MO_AUTH"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_8

    .line 122
    .end local v15    # "it":Landroid/content/Intent;
    :cond_1f5
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/coreapps/easysignup/EasySignUp;->recoveryAuth(Landroid/content/Context;)V

    goto/16 :goto_8
.end method
