.class public Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker$IdleState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "IsValidTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;


# direct methods
.method protected constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;)V
    .registers 2

    .prologue
    .line 75
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker$IdleState;->this$1:Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected processMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 79
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->isImsiAvailable()Z

    move-result v0

    if-nez v0, :cond_27

    .line 80
    const-string v0, "SIM is not ready"

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker$IdleState;->this$1:Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 82
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker$IdleState;->this$1:Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker$IdleState;->this$1:Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 84
    :cond_27
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker$IdleState;->this$1:Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker$IdleState;->this$1:Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker$IdleState;->this$1:Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->mIsValidState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->access$300(Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 86
    return-void
.end method
