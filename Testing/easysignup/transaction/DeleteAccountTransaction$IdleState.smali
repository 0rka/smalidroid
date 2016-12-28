.class public Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$IdleState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "DeleteAccountTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)V
    .registers 2

    .prologue
    .line 53
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected processMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 58
    .local v0, "data":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    const-string v2, "imsi_list"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mImsiList:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$002(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 60
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->isImsiAvailable()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 61
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 62
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 68
    :goto_2d
    return-void

    .line 66
    :cond_2e
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 67
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mDeleteAccountState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$300(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_2d
.end method
