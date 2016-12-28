.class public Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$IdleState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "UpdateTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)V
    .registers 2

    .prologue
    .line 67
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected processMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 72
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->isImsiAvailable()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 73
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 74
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 97
    :goto_1e
    return-void

    .line 82
    :cond_1f
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$202(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mI = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/coreapps/common/util/CommonLog;->debugStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$300(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 89
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mUpdateService:Z
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$400(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 90
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mAuthAllServices:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$500(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 91
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mAcceptDisclaimerState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$600(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_1e

    .line 93
    :cond_7b
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mUpdateServiceState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$700(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_1e

    .line 95
    :cond_8b
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mGcmRegState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$800(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_1e
.end method
