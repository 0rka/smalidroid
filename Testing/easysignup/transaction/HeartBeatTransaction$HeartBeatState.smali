.class public Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$HeartBeatState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "HeartBeatTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeartBeatState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)V
    .registers 2

    .prologue
    .line 61
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$HeartBeatState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected enter(Landroid/os/Message;)V
    .registers 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const-wide/16 v6, -0x1

    .line 64
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$HeartBeatState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    invoke-virtual {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->checkAvailableHearbeat()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 65
    const-string v3, "Pleae try after some time...."

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$300()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$HeartBeatState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 67
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$HeartBeatState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$HeartBeatState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 98
    :goto_2b
    return-void

    .line 71
    :cond_2c
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/ConnectivityUtils;->isMobileNetworkConnected()Z

    move-result v3

    if-nez v3, :cond_5f

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/ConnectivityUtils;->isWifiAvailable()Z

    move-result v3

    if-nez v3, :cond_5f

    .line 72
    const-string v3, "No Network..."

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$300()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$HeartBeatState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mIntervalMs:J
    invoke-static {v3, v6, v7}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$402(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;J)J

    .line 74
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$HeartBeatState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 75
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$HeartBeatState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$HeartBeatState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_2b

    .line 79
    :cond_5f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v2, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/HeartBeatReqBody$HeartBeatParam;>;"
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$HeartBeatState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    invoke-virtual {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->getDuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "duid":Ljava/lang/String;
    if-eqz v0, :cond_9c

    .line 84
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/HeartBeatReqBody$HeartBeatParam;

    invoke-direct {v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/HeartBeatReqBody$HeartBeatParam;-><init>()V

    .line 85
    .local v1, "p":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/HeartBeatReqBody$HeartBeatParam;
    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/HeartBeatReqBody$HeartBeatParam;->duid:Ljava/lang/String;

    .line 86
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mServiceID:Ljava/lang/Integer;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$500()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v4

    iput-object v3, v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/HeartBeatReqBody$HeartBeatParam;->sids:[I

    .line 87
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    const/16 v3, 0x82

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$HeartBeatState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$HeartBeatState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$600(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    move-result-object v5

    invoke-static {v3, v4, v2, v5}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->heartBeat(ILandroid/os/Handler;Ljava/util/ArrayList;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_2b

    .line 91
    .end local v1    # "p":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/HeartBeatReqBody$HeartBeatParam;
    :cond_9c
    const-string v3, "Duid was null..."

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$300()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$HeartBeatState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mIntervalMs:J
    invoke-static {v3, v6, v7}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$402(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;J)J

    .line 93
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$HeartBeatState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 94
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$HeartBeatState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$HeartBeatState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto/16 :goto_2b
.end method

.method protected processMessage(Landroid/os/Message;)V
    .registers 16
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const-wide/16 v12, 0x0

    .line 102
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_110

    .line 154
    iget-object v8, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$HeartBeatState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v8}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 157
    :goto_10
    return-void

    .line 104
    :sswitch_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 105
    .local v0, "currentTime":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HeartBeat sent at : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$300()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v8, "last_heart_beat_time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    .line 108
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/HeartBeatResp;

    .line 109
    .local v6, "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/HeartBeatResp;
    iget-object v8, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$HeartBeatState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    iget-wide v10, v6, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/HeartBeatResp;->interval:J

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mIntervalMs:J
    invoke-static {v8, v10, v11}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$402(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;J)J

    .line 110
    iget-object v8, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$HeartBeatState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mIntervalMs:J
    invoke-static {v8}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$400(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)J

    move-result-wide v8

    cmp-long v8, v8, v12

    if-lez v8, :cond_cf

    .line 111
    const-string v8, "heart_beat_interval"

    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$HeartBeatState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mIntervalMs:J
    invoke-static {v9}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$400(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    .line 115
    :goto_5c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resp.dormant = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, v6, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/HeartBeatResp;->dormant:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", resp.expired = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, v6, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/HeartBeatResp;->expired:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$300()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-wide v2, v6, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/HeartBeatResp;->dormant:J

    .line 119
    .local v2, "dormantMs":J
    cmp-long v8, v2, v12

    if-nez v8, :cond_99

    .line 120
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getServerEnv()Ljava/lang/String;

    move-result-object v7

    .line 121
    .local v7, "serverEnv":Ljava/lang/String;
    const-string v8, "PRD"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d5

    .line 122
    const-wide/32 v2, 0xa4cb800

    .line 129
    .end local v7    # "serverEnv":Ljava/lang/String;
    :cond_99
    :goto_99
    iget-wide v4, v6, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/HeartBeatResp;->expired:J

    .line 130
    .local v4, "expiredMs":J
    cmp-long v8, v4, v12

    if-nez v8, :cond_b0

    .line 131
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getServerEnv()Ljava/lang/String;

    move-result-object v7

    .line 132
    .restart local v7    # "serverEnv":Ljava/lang/String;
    const-string v8, "PRD"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e1

    .line 133
    const-wide v4, 0x202fbf000L

    .line 139
    .end local v7    # "serverEnv":Ljava/lang/String;
    :cond_b0
    :goto_b0
    const-string v8, "expire_account_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    add-long/2addr v10, v2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    .line 141
    iget-object v8, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$HeartBeatState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v8}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$HeartBeatState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v9}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto/16 :goto_10

    .line 113
    .end local v2    # "dormantMs":J
    .end local v4    # "expiredMs":J
    :cond_cf
    iget-object v8, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$HeartBeatState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mIntervalMs:J
    invoke-static {v8, v12, v13}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$402(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;J)J

    goto :goto_5c

    .line 123
    .restart local v2    # "dormantMs":J
    .restart local v7    # "serverEnv":Ljava/lang/String;
    :cond_d5
    const-string v8, "PREPRD"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_99

    .line 124
    const-wide/32 v2, 0x36ee80

    goto :goto_99

    .line 134
    .restart local v4    # "expiredMs":J
    :cond_e1
    const-string v8, "PREPRD"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b0

    .line 135
    const-wide/32 v4, 0x36ee80

    goto :goto_b0

    .line 146
    .end local v0    # "currentTime":J
    .end local v2    # "dormantMs":J
    .end local v4    # "expiredMs":J
    .end local v6    # "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/HeartBeatResp;
    .end local v7    # "serverEnv":Ljava/lang/String;
    :sswitch_ed
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 147
    .restart local v0    # "currentTime":J
    const-string v8, "last_heart_beat_time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    .line 148
    iget-object v8, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$HeartBeatState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mIntervalMs:J
    invoke-static {v8, v12, v13}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$402(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;J)J

    .line 149
    iget-object v8, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$HeartBeatState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v8}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$HeartBeatState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v9}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto/16 :goto_10

    .line 102
    :sswitch_data_110
    .sparse-switch
        0x82 -> :sswitch_11
        0x2710 -> :sswitch_ed
    .end sparse-switch
.end method
