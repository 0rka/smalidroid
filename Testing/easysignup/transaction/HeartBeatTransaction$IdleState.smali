.class public Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$IdleState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "HeartBeatTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)V
    .registers 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected processMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 50
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->isImsiAvailable()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 51
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 58
    :goto_1e
    return-void

    .line 56
    :cond_1f
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mHeartBeatState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_1e
.end method
