.class public Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IsAuthState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "AuthTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IsAuthState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)V
    .registers 2

    .prologue
    .line 227
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected enter(Landroid/os/Message;)V
    .registers 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 231
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$600(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$900(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->isAuth(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 232
    return-void
.end method

.method protected processMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 236
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_110

    .line 286
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 289
    :goto_f
    return-void

    .line 238
    :sswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;

    .line 240
    .local v0, "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;
    iget-object v1, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;->auth_info:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;

    iget-object v1, v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;->auth_methods:[Ljava/lang/String;

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;->auth_info:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;

    iget-object v1, v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;->auth_methods:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_2a

    .line 241
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    iget-object v2, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;->auth_info:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;

    iget-object v2, v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;->auth_methods:[Ljava/lang/String;

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mAuthMethods:[Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$1002(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;[Ljava/lang/String;)[Ljava/lang/String;

    .line 244
    :cond_2a
    iget v1, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;->auth_status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_46

    .line 245
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    iget-object v2, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;->msisdn:Ljava/lang/String;

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mMsisdn:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$1102(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 246
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_f

    .line 248
    :cond_46
    iget-object v1, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;->auth_info:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;

    iget-object v1, v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;->MO:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$MoAuth;

    if-eqz v1, :cond_60

    const-string v1, "is_mo_sms_sent"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_9a

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mFromEULA:Z
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$1200(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Z

    move-result v1

    if-nez v1, :cond_9a

    .line 249
    :cond_60
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mFromEULA:Z
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$1200(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 250
    iget-object v1, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;->auth_info:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;

    iget-object v1, v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;->MO:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$MoAuth;

    if-nez v1, :cond_8c

    .line 251
    const-string v1, "MO Auth not supported"

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mIsMOSupport:Z
    invoke-static {v1, v5}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$1302(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;Z)Z

    .line 253
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_f

    .line 257
    :cond_8c
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    const-string v2, "MT"

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mAuthType:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$302(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 276
    :goto_93
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # invokes: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->startAuth()V
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$1600(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)V

    goto/16 :goto_f

    .line 259
    :cond_9a
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    const-string v2, "MO"

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mAuthType:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$302(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 260
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    iget-object v2, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;->auth_info:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;

    iget-object v2, v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;->MO:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$MoAuth;

    iget-object v2, v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$MoAuth;->ccc:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;->auth_info:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;

    iget-object v3, v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;->MO:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$MoAuth;

    iget-object v3, v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$MoAuth;->national_phone_number:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;->auth_info:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;

    iget-object v4, v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;->MO:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$MoAuth;

    iget-object v4, v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$MoAuth;->international_phone_number:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/coreapps/common/util/NumberUtils;->makeDestNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mMoNumber:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$1402(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 262
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mMoNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$1400(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f2

    .line 263
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mFromEULA:Z
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$1200(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 264
    const-string v1, "mMoNumber was null"

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mIsMOSupport:Z
    invoke-static {v1, v5}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$1302(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;Z)Z

    .line 266
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto/16 :goto_f

    .line 270
    :cond_eb
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    const-string v2, "MT"

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mAuthType:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$302(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 273
    :cond_f2
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    iget-object v2, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;->auth_info:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;

    iget-object v2, v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;->MO:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$MoAuth;

    iget-object v2, v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$MoAuth;->prefix:Ljava/lang/String;

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mMoPrefix:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$1502(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_93

    .line 282
    .end local v0    # "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;
    :sswitch_fe
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto/16 :goto_f

    .line 236
    nop

    :sswitch_data_110
    .sparse-switch
        0x14 -> :sswitch_10
        0x2710 -> :sswitch_fe
    .end sparse-switch
.end method
