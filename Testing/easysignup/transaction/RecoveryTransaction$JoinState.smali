.class public Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$JoinState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "RecoveryTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JoinState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)V
    .registers 2

    .prologue
    .line 251
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$JoinState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected enter(Landroid/os/Message;)V
    .registers 11
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 255
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getGcmRegId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1c

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getSppRegId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1c

    .line 256
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$JoinState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$JoinState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 288
    :goto_1b
    return-void

    .line 260
    :cond_1c
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v8, "pushInfoArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;>;"
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getSppRegId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 262
    new-instance v7, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getSppRegId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SPP"

    invoke-direct {v7, v2, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .local v7, "pushInfo":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    .end local v7    # "pushInfo":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;
    :cond_35
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getGcmRegId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_49

    .line 266
    new-instance v7, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getGcmRegId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GCM"

    invoke-direct {v7, v2, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .restart local v7    # "pushInfo":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    .end local v7    # "pushInfo":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;
    :cond_49
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;

    .line 272
    .local v4, "pushInfoArray":[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "deviceId":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/common/util/CommonPref;->setDeviceId(Ljava/lang/String;)V

    .line 275
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinParams;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$JoinState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$700(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$JoinState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mServiceIdList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$1500(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/coreapps/common/util/CommonUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CscUtil;->getCSC()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;[ILjava/lang/String;)V

    .line 277
    .local v0, "params":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinParams;
    new-instance v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PackageInfo;

    const-string v3, "3z5w443l4l"

    invoke-direct {v2, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PackageInfo;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinParams;->pkg:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PackageInfo;

    .line 279
    const/16 v2, 0x78

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$JoinState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$JoinState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$600(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    move-result-object v5

    invoke-static {v2, v3, v0, v5}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->join(ILandroid/os/Handler;Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinParams;Lcom/android/volley/Response$ErrorListener;)V

    .line 280
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$JoinState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mServiceIdList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$1500(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_a9

    .line 282
    const-string v2, "JoinState enter end - mServiceIdList is null"

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$JoinState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1b

    .line 286
    :cond_a9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JoinState enter end "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$JoinState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mServiceIdList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$1500(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$JoinState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1b
.end method

.method protected processMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    .line 292
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_c4

    .line 336
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$JoinState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 339
    :goto_f
    return-void

    .line 294
    :sswitch_10
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinResp;

    .line 296
    .local v4, "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinResp;
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$JoinState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$700(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$JoinState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$1300(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/samsung/android/coreapps/easysignup/util/ServiceListManager;->getServiceList(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->addAccount(Ljava/lang/String;Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinResp;Ljava/util/ArrayList;)V

    .line 297
    iget-object v5, v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinResp;->urls:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServerInfo;

    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/db/GldDBMgr;->setGldData([Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServerInfo;)V

    .line 299
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$JoinState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$700(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/setting/SettingAccount;->addAccount(Ljava/lang/String;)V

    .line 301
    const-string v5, "gcm_registered_app_version"

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/PackageUtils;->getAppVersionCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/common/util/CommonPref;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/PackageUtils;->enableComponents()V

    .line 306
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.samsung.android.coreapps.easysignup.ACTION_LOGIN_RESULT"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    .local v1, "loginResultIntent":Landroid/content/Intent;
    const/16 v5, 0x20

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 308
    const-string v5, "recovery"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 309
    const-string v5, "imsi"

    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$JoinState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$700(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string v5, "extra_login_result"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$JoinState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 314
    const-string v5, "BR : com.samsung.android.coreapps.easysignup.ACTION_LOGIN_RESULT, result = 0"

    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$JoinState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$JoinState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$JoinState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mCheckTncState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$1600(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_f

    .line 322
    .end local v1    # "loginResultIntent":Landroid/content/Intent;
    .end local v4    # "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinResp;
    :sswitch_88
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;

    .line 323
    .local v0, "errorResp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;
    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;->getRcode()J

    move-result-wide v2

    .line 325
    .local v2, "rCode":J
    const-wide v6, 0xee7146ebL

    cmp-long v5, v2, v6

    if-nez v5, :cond_b3

    .line 326
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$JoinState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$1300(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$JoinState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$700(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->removeAuthData(Landroid/content/Context;Ljava/lang/String;)V

    .line 327
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$JoinState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$JoinState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$700(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v8, v6}, Lcom/samsung/android/coreapps/easysignup/EasySignUpBroadcaster;->sendDeauthResult(Landroid/content/Context;ILjava/lang/String;)V

    .line 331
    :cond_b3
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$JoinState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$JoinState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto/16 :goto_f

    .line 292
    :sswitch_data_c4
    .sparse-switch
        0x78 -> :sswitch_10
        0x2710 -> :sswitch_88
    .end sparse-switch
.end method
