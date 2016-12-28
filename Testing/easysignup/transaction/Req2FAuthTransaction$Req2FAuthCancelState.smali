.class public Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthCancelState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "Req2FAuthTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Req2FAuthCancelState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)V
    .registers 2

    .prologue
    .line 306
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthCancelState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected enter(Landroid/os/Message;)V
    .registers 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 310
    const-string v5, "Req2FAuthCancelState enter"

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$600()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 314
    .local v1, "data":Landroid/os/Bundle;
    const-string v5, "cc"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 315
    .local v0, "cccList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "national_phone_number"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 317
    .local v2, "nationalPhoneNumberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_29

    if-eqz v2, :cond_29

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_42

    .line 318
    :cond_29
    const-string v5, "wrong parameter"

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$600()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthCancelState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthCancelState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$400(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 327
    :goto_41
    return-void

    .line 323
    :cond_42
    invoke-static {v0, v2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;->fromList(Ljava/util/ArrayList;Ljava/util/ArrayList;)[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;

    move-result-object v4

    .line 325
    .local v4, "receiverInfo":[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;
    new-instance v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Cancel2FAReqParams;

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Cancel2FAReqParams;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;)V

    .line 326
    .local v3, "params":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Cancel2FAReqParams;
    const/16 v5, 0x54

    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthCancelState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthCancelState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$500(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    move-result-object v7

    invoke-static {v5, v3, v6, v7}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->cancel2FARequest(ILcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Cancel2FAReqParams;Landroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_41
.end method

.method protected processMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 331
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_5e

    .line 345
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthCancelState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 348
    :goto_e
    return-void

    .line 333
    :sswitch_f
    const-string v2, "2FA REQ CANCEL succeed"

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$600()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Cancel2FAReqResp;

    .line 335
    .local v0, "cancel2FAReqResp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Cancel2FAReqResp;
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthCancelState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthCancelState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # invokes: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->getSuccessCount(Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Cancel2FAReqResp;)I
    invoke-static {v3, v0}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$1500(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Cancel2FAReqResp;)I

    move-result v3

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mSuccessCount:I
    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$1202(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;I)I

    .line 336
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthCancelState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthCancelState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$400(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_e

    .line 339
    .end local v0    # "cancel2FAReqResp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Cancel2FAReqResp;
    :sswitch_37
    const-string v2, "2FA REQ CANCEL failed"

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$600()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;

    .line 341
    .local v1, "errorResp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthCancelState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    invoke-virtual {v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;->getRcode()J

    move-result-wide v4

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mServerRCode:J
    invoke-static {v2, v4, v5}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$1602(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;J)J

    .line 342
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthCancelState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthCancelState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$400(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_e

    .line 331
    nop

    :sswitch_data_5e
    .sparse-switch
        0x54 -> :sswitch_f
        0x2710 -> :sswitch_37
    .end sparse-switch
.end method
