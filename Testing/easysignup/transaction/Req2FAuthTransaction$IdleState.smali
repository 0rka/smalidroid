.class public Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$IdleState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "Req2FAuthTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)V
    .registers 2

    .prologue
    .line 132
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected processMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 137
    const-string v0, "2FA_REQ"

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mAuthType:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "2FA_REQ_V3"

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mAuthType:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 138
    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mIsAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 149
    :goto_34
    return-void

    .line 141
    :cond_35
    const-string v0, "2FA_REQ_CANCEL"

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mAuthType:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 142
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 143
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mReq2FAuthCancelState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$300(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_34

    .line 147
    :cond_5c
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$400(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_34
.end method
