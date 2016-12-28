.class public Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$IdleState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "GetRefreshTokenTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)V
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected processMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 88
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->isImsiAvailable()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 89
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 90
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 108
    :goto_1e
    return-void

    .line 94
    :cond_1f
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 95
    .local v0, "data":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    const-string v2, "imsi"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->access$302(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->access$300(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_53

    .line 102
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 103
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_1e

    .line 105
    :cond_53
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 106
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mGcmRegState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->access$400(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_1e
.end method
