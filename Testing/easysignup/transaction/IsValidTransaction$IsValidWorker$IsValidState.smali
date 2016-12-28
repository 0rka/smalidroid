.class public Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker$IsValidState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "IsValidTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IsValidState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;


# direct methods
.method protected constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;)V
    .registers 2

    .prologue
    .line 89
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker$IsValidState;->this$1:Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected enter(Landroid/os/Message;)V
    .registers 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    .line 95
    .local v7, "bundle":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker$IsValidState;->this$1:Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;

    const-string v1, "msisdn"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->mMsIsdn:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->access$402(Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    const-string v0, "msisdn"

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker$IsValidState;->this$1:Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->mMsIsdn:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->access$400(Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;->checkInvalid(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;->access$500(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "sid"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 98
    .local v5, "sid":I
    const-string v1, "sid"

    const/4 v0, 0x4

    if-gt v5, v0, :cond_58

    const-string v0, ""

    :goto_27
    # invokes: Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;->checkInvalid(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;->access$500(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "Duid"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "duid":Ljava/lang/String;
    const-string v0, "Duid"

    # invokes: Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;->checkInvalid(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;->access$500(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "Access-Token"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "accessToken":Ljava/lang/String;
    const-string v0, "Access-Token"

    # invokes: Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;->checkInvalid(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v3}, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;->access$500(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/16 v0, 0xd2

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker$IsValidState;->this$1:Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker$IsValidState;->this$1:Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->mMsIsdn:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->access$400(Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker$IsValidState;->this$1:Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->access$600(Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->isValid(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/volley/Response$ErrorListener;)V

    .line 107
    return-void

    .line 98
    .end local v2    # "duid":Ljava/lang/String;
    .end local v3    # "accessToken":Ljava/lang/String;
    :cond_58
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_27
.end method

.method protected processMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 111
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_54

    .line 122
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker$IsValidState;->this$1:Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 125
    :goto_e
    return-void

    .line 113
    :sswitch_f
    const-string v0, "isValid processed"

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker$IsValidState;->this$1:Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker$IsValidState;->this$1:Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->mMsIsdn:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->access$400(Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    # invokes: Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;->sendReplyBroadcast(Landroid/content/Context;Landroid/os/Message;Ljava/lang/String;Z)V
    invoke-static {v0, p1, v1, v2}, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;->access$700(Landroid/content/Context;Landroid/os/Message;Ljava/lang/String;Z)V

    .line 115
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker$IsValidState;->this$1:Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker$IsValidState;->this$1:Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_e

    .line 118
    :sswitch_36
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker$IsValidState;->this$1:Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker$IsValidState;->this$1:Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->mMsIsdn:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->access$400(Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;->sendReplyBroadcast(Landroid/content/Context;Landroid/os/Message;Ljava/lang/String;Z)V
    invoke-static {v0, p1, v1, v2}, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;->access$700(Landroid/content/Context;Landroid/os/Message;Ljava/lang/String;Z)V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker$IsValidState;->this$1:Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker$IsValidState;->this$1:Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_e

    .line 111
    :sswitch_data_54
    .sparse-switch
        0xd2 -> :sswitch_f
        0x2710 -> :sswitch_36
    .end sparse-switch
.end method
