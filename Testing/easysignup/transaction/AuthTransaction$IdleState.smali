.class public Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IdleState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "AuthTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)V
    .registers 2

    .prologue
    .line 197
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected processMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 202
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->isImsiAvailable()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 203
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 204
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 224
    :goto_1e
    return-void

    .line 208
    :cond_1f
    const-string v0, "2FA"

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mAuthType:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$300(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 209
    const-string v0, "send 2FA Auth"

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 211
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mMT2FAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$500(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_1e

    .line 215
    :cond_4f
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "imsi"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$602(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    const-string v0, "is_forceauth_mode"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 218
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 219
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mForceAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$700(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_1e

    .line 221
    :cond_84
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 222
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mIsAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$800(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_1e
.end method
