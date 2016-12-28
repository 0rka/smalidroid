.class public Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "JoinTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IsAuthState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)V
    .registers 2

    .prologue
    .line 282
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected enter(Landroid/os/Message;)V
    .registers 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 286
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$700(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$800(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->isAuth(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 287
    return-void
.end method

.method protected processMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 291
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_1bc

    .line 354
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 357
    :goto_f
    return-void

    .line 293
    :sswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;

    .line 295
    .local v0, "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;
    iget v1, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;->auth_status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_62

    .line 296
    const-string v1, "Device was authenticated..."

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$700(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;->msisdn:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->setMsisdn(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$700(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->setTNCsettingTime(Ljava/lang/String;J)V

    .line 299
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mFromEULA:Z
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$900(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 300
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mGcmRegState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$1000(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_f

    .line 302
    :cond_52
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mAcceptDisclaimerState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$1100(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_f

    .line 305
    :cond_62
    iget-object v1, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;->auth_info:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;

    iget-object v1, v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;->MO:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$MoAuth;

    if-nez v1, :cond_107

    .line 306
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mFromEULA:Z
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$900(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 307
    const-string v1, "MO Auth not supported"

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mIsMOSupport:Z
    invoke-static {v1, v5}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$1202(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;Z)Z

    .line 309
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$300(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_f

    .line 312
    :cond_8e
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    const-string v2, "MT"

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mAuthType:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$402(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 330
    :goto_95
    iget-object v1, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;->ss:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PolicyResp$SupportedService;

    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/db/PolicyDBMgr;->setPolicies([Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PolicyResp$SupportedService;)V

    .line 332
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$700(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getTNCsettingTime(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_19a

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mFromEULA:Z
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$900(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Z

    move-result v1

    if-nez v1, :cond_19a

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsAuthState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " preload type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mAuthAllServices:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$1500(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", disclaimer agreed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mIsDisclaimerAgreed:Z
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$1600(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mIsDisclaimerAgreed:Z
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$1600(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Z

    move-result v1

    if-eqz v1, :cond_16c

    .line 335
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$1700(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto/16 :goto_f

    .line 314
    :cond_107
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    const-string v2, "MO"

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mAuthType:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$402(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 315
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    iget-object v2, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;->auth_info:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;

    iget-object v2, v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;->MO:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$MoAuth;

    iget-object v2, v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$MoAuth;->ccc:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;->auth_info:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;

    iget-object v3, v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;->MO:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$MoAuth;

    iget-object v3, v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$MoAuth;->national_phone_number:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;->auth_info:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;

    iget-object v4, v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;->MO:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$MoAuth;

    iget-object v4, v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$MoAuth;->international_phone_number:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->makeDestNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mMoNumber:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$1302(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 317
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mMoNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$1300(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15f

    .line 318
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mFromEULA:Z
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$900(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Z

    move-result v1

    if-eqz v1, :cond_158

    .line 319
    const-string v1, "MO Auth not supported. Because MoNumber was null"

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mIsMOSupport:Z
    invoke-static {v1, v5}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$1202(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;Z)Z

    .line 321
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$300(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto/16 :goto_f

    .line 324
    :cond_158
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    const-string v2, "MT"

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mAuthType:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$402(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 327
    :cond_15f
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    iget-object v2, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;->auth_info:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;

    iget-object v2, v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;->MO:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$MoAuth;

    iget-object v2, v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$MoAuth;->prefix:Ljava/lang/String;

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mMoPrefix:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$1402(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_95

    .line 336
    :cond_16c
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mAuthAllServices:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$1500(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_189

    .line 337
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mAcceptDisclaimerState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$1100(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto/16 :goto_f

    .line 339
    :cond_189
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$1700(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto/16 :goto_f

    .line 342
    :cond_19a
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$1700(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto/16 :goto_f

    .line 349
    .end local v0    # "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;
    :sswitch_1ab
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$300(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto/16 :goto_f

    .line 291
    :sswitch_data_1bc
    .sparse-switch
        0x14 -> :sswitch_10
        0x2710 -> :sswitch_1ab
    .end sparse-switch
.end method
