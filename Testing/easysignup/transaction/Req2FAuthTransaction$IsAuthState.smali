.class public Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$IsAuthState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "Req2FAuthTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IsAuthState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)V
    .registers 2

    .prologue
    .line 152
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected enter(Landroid/os/Message;)V
    .registers 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 156
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$500(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->isAuth(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 157
    return-void
.end method

.method protected processMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsAuthState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$600()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_96

    .line 189
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 192
    :goto_2a
    return-void

    .line 165
    :sswitch_2b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;

    .line 167
    .local v1, "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;
    iget v2, v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;->auth_status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5c

    .line 168
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$700(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;->msisdn:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->setMsisdn(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$700(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->setTNCsettingTime(Ljava/lang/String;J)V

    .line 171
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mSppRegState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$800(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_2a

    .line 173
    :cond_5c
    iget-object v2, v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;->auth_info:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;

    iget-object v2, v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;->auth_methods:[Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->is2FANeeded([Ljava/lang/String;)Z

    move-result v0

    .line 174
    .local v0, "is2FAReqNeeded":Z
    if-eqz v0, :cond_76

    .line 175
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mSppRegState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$800(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_2a

    .line 177
    :cond_76
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$400(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_2a

    .line 184
    .end local v0    # "is2FAReqNeeded":Z
    .end local v1    # "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;
    :sswitch_86
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$400(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_2a

    .line 163
    :sswitch_data_96
    .sparse-switch
        0x14 -> :sswitch_2b
        0x2710 -> :sswitch_86
    .end sparse-switch
.end method
