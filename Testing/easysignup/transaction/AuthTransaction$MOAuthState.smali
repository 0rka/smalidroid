.class public Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$MOAuthState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "AuthTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MOAuthState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)V
    .registers 2

    .prologue
    .line 303
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$MOAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected enter(Landroid/os/Message;)V
    .registers 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 307
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthParams;

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$MOAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$600(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MO"

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$MOAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mAuthCode:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$1700(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .local v0, "params":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthParams;
    const/16 v1, 0x46

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$MOAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$MOAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$900(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->authenticate(ILandroid/os/Handler;Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthParams;Lcom/android/volley/Response$ErrorListener;)V

    .line 309
    return-void
.end method

.method protected processMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 314
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_80

    .line 335
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$MOAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 338
    :goto_e
    return-void

    .line 316
    :sswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthResp;

    .line 317
    .local v0, "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthResp;
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$MOAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    iget-object v2, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthResp;->msisdn:Ljava/lang/String;

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mMsisdn:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$1102(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 319
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$MOAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$MOAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_e

    .line 324
    .end local v0    # "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthResp;
    :sswitch_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEntryPoint : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$MOAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mEntryPoint:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$1800(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v1, "samsungAccount"

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$MOAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mEntryPoint:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$1800(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$MOAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mFromEULA:Z
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$1200(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 326
    :cond_60
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$MOAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$MOAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_e

    .line 329
    :cond_70
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$MOAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$MOAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mMTAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$1900(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_e

    .line 314
    :sswitch_data_80
    .sparse-switch
        0x46 -> :sswitch_f
        0x2710 -> :sswitch_2a
    .end sparse-switch
.end method
