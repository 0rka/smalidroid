.class public Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$AcceptDisclaimerState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "UpdateTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AcceptDisclaimerState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)V
    .registers 2

    .prologue
    .line 200
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$AcceptDisclaimerState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected enter(Landroid/os/Message;)V
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 204
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.coreapps.easysignup.ACTION_START_ACCEPT_DISCLAIMER_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "imsi"

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$AcceptDisclaimerState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const-string v1, "extra_cb_handler"

    new-instance v2, Landroid/os/Messenger;

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$AcceptDisclaimerState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 209
    const-string v1, "service_id_list"

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$AcceptDisclaimerState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mServiceIdList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$1200(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 210
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$AcceptDisclaimerState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$900(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 211
    return-void
.end method

.method protected processMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 216
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_50

    .line 233
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$AcceptDisclaimerState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 236
    :goto_e
    return-void

    .line 218
    :sswitch_f
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_30

    .line 219
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$AcceptDisclaimerState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->setTNCsettingTime(Ljava/lang/String;J)V

    .line 220
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$AcceptDisclaimerState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$AcceptDisclaimerState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mUpdateServiceState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$700(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_e

    .line 222
    :cond_30
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$AcceptDisclaimerState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$AcceptDisclaimerState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_e

    .line 228
    :sswitch_40
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$AcceptDisclaimerState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$AcceptDisclaimerState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_e

    .line 216
    :sswitch_data_50
    .sparse-switch
        0x32 -> :sswitch_f
        0x2710 -> :sswitch_40
    .end sparse-switch
.end method
