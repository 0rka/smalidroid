.class public Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$ResultState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "HeartBeatTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)V
    .registers 2

    .prologue
    .line 171
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected processMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const-wide/16 v6, 0x0

    .line 174
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mIntervalMs:J
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$400(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-ltz v3, :cond_86

    .line 175
    const-string v3, "HeartBeat is ok"

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$300()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getServerEnv()Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "serverEnv":Ljava/lang/String;
    const-string v3, "last_heart_beat_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 179
    .local v0, "lastTransactionTime":J
    const-string v3, "PRD"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 180
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mIntervalMs:J
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$400(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-eqz v3, :cond_44

    .line 181
    const-string v3, "heart_beat_interval"

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mIntervalMs:J
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$400(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    .line 183
    :cond_44
    const-string v3, "heart_beat_interval"

    const-wide/32 v4, 0x2932e00

    invoke-static {v3, v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->registerAlarm(J)V

    .line 193
    .end local v0    # "lastTransactionTime":J
    .end local v2    # "serverEnv":Ljava/lang/String;
    :cond_51
    :goto_51
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    invoke-virtual {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->stopSelf()V

    .line 194
    return-void

    .line 184
    .restart local v0    # "lastTransactionTime":J
    .restart local v2    # "serverEnv":Ljava/lang/String;
    :cond_57
    const-string v3, "PREPRD"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 185
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mIntervalMs:J
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$400(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-eqz v3, :cond_78

    .line 186
    const-string v3, "heart_beat_interval"

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mIntervalMs:J
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$400(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    .line 188
    :cond_78
    const-string v3, "heart_beat_interval"

    const-wide/32 v4, 0x36ee80

    invoke-static {v3, v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->registerAlarm(J)V

    goto :goto_51

    .line 191
    .end local v0    # "lastTransactionTime":J
    .end local v2    # "serverEnv":Ljava/lang/String;
    :cond_86
    const-string v3, "heartbeat is not ok"

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$300()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51
.end method
