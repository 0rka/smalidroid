.class public Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$ForceAuthState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "AuthTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ForceAuthState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)V
    .registers 2

    .prologue
    .line 377
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$ForceAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected enter(Landroid/os/Message;)V
    .registers 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 381
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$ForceAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$600(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getMCC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/coreapps/common/util/NumberUtils;->convertMCC2CountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "ccc":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$ForceAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$600(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getSimMSISDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, "phoneNumber":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 385
    const/16 v3, 0xa

    invoke-static {v3}, Lcom/samsung/android/coreapps/common/util/RandomStringUtils;->randomNumeric(I)Ljava/lang/String;

    move-result-object v2

    .line 388
    :cond_24
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ForceAuthParams;

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$ForceAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$600(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4, v0, v2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ForceAuthParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    .local v1, "params":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ForceAuthParams;
    const/16 v3, 0x5a

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$ForceAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$ForceAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$900(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    move-result-object v5

    invoke-static {v3, v4, v1, v5}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->forceAuthenticate(ILandroid/os/Handler;Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ForceAuthParams;Lcom/android/volley/Response$ErrorListener;)V

    .line 391
    return-void
.end method

.method protected processMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 396
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_3a

    .line 410
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$ForceAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 413
    :goto_e
    return-void

    .line 398
    :sswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthResp;

    .line 399
    .local v0, "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthResp;
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$ForceAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    iget-object v2, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthResp;->msisdn:Ljava/lang/String;

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mMsisdn:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$1102(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 401
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$ForceAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$ForceAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_e

    .line 406
    .end local v0    # "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthResp;
    :sswitch_2a
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$ForceAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$ForceAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_e

    .line 396
    :sswitch_data_3a
    .sparse-switch
        0x5a -> :sswitch_f
        0x2710 -> :sswitch_2a
    .end sparse-switch
.end method
