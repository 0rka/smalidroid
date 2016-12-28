.class public Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ResultState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "ServiceOnOffTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)V
    .registers 2

    .prologue
    .line 242
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected processMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 246
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_26

    .line 247
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mSidOnList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$1000(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Ljava/util/ArrayList;

    move-result-object v1

    # invokes: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->notifyServiceOnResult(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$1300(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;Ljava/util/List;)V

    .line 252
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$1500(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 253
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->stopSelf()V

    .line 254
    return-void

    .line 248
    :cond_26
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_11

    .line 249
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mSidOffList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$1200(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Ljava/util/ArrayList;

    move-result-object v1

    # invokes: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->notifyServiceOffResult(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$1400(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;Ljava/util/List;)V

    goto :goto_11
.end method
