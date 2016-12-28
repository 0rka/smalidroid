.class public Lcom/samsung/android/coreapps/easysignup/receiver/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BootReceiver"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/receiver/BootReceiver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 26
    const-string v9, " ######## onReceive ######## "

    const-string v16, "BootReceiver"

    move-object/from16 v0, v16

    invoke-static {v9, v0}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 29
    .local v2, "bIntent":Landroid/content/Intent;
    const-string v9, "com.sec.orca.shopagent.getitemlist"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 31
    const-string v9, "onReceive. sendBroadcast to InitStickerListReceiver"

    const-string v16, "BootReceiver"

    move-object/from16 v0, v16

    invoke-static {v9, v0}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/util/SelfUpgradeUtils;->registerSelfUpgradeAlarm()V

    .line 59
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->isImsiAvailable()Z

    move-result v9

    if-eqz v9, :cond_a4

    .line 60
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a4

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 77
    .local v6, "currentTime":J
    const-string v9, "last_heart_beat_time"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v9, v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 78
    .local v12, "lastHeartBeatTime":J
    const-string v9, "heart_beat_interval"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v9, v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 80
    .local v10, "heartBeatInterval":J
    const-wide/16 v16, 0x0

    cmp-long v9, v12, v16

    if-eqz v9, :cond_5c

    add-long v16, v12, v10

    cmp-long v9, v6, v16

    if-lez v9, :cond_a5

    .line 82
    :cond_5c
    new-instance v8, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/coreapps/easysignup/receiver/BootReceiver;->mContext:Landroid/content/Context;

    const-class v16, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    move-object/from16 v0, v16

    invoke-direct {v8, v9, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v8, "heartBeatIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/coreapps/easysignup/receiver/BootReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 88
    .end local v8    # "heartBeatIntent":Landroid/content/Intent;
    :goto_70
    const-string v9, "last_policy_check_time"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v9, v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 89
    .local v14, "lastPolicySetTime":J
    const-string v9, "policy_check_interval"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v9, v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 91
    .local v4, "checkPolicyInterval":J
    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-eqz v9, :cond_90

    add-long v16, v14, v4

    cmp-long v9, v6, v16

    if-lez v9, :cond_ab

    .line 93
    :cond_90
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/coreapps/easysignup/receiver/BootReceiver;->mContext:Landroid/content/Context;

    const-class v16, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;

    move-object/from16 v0, v16

    invoke-direct {v3, v9, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v3, "checkPolicyIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/coreapps/easysignup/receiver/BootReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 100
    .end local v3    # "checkPolicyIntent":Landroid/content/Intent;
    .end local v4    # "checkPolicyInterval":J
    .end local v6    # "currentTime":J
    .end local v10    # "heartBeatInterval":J
    .end local v12    # "lastHeartBeatTime":J
    .end local v14    # "lastPolicySetTime":J
    :cond_a4
    :goto_a4
    return-void

    .line 85
    .restart local v6    # "currentTime":J
    .restart local v10    # "heartBeatInterval":J
    .restart local v12    # "lastHeartBeatTime":J
    :cond_a5
    add-long v16, v12, v10

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->registerAlarm(J)V

    goto :goto_70

    .line 96
    .restart local v4    # "checkPolicyInterval":J
    .restart local v14    # "lastPolicySetTime":J
    :cond_ab
    add-long v16, v14, v4

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;->registerAlarm(J)V

    goto :goto_a4
.end method
