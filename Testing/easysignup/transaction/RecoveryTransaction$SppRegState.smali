.class public Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$SppRegState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "RecoveryTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SppRegState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)V
    .registers 2

    .prologue
    .line 221
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$SppRegState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected enter(Landroid/os/Message;)V
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 225
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getSppRegId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 226
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$SppRegState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$SppRegState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mJoinState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$1400(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 234
    :cond_15
    :goto_15
    return-void

    .line 230
    :cond_16
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$SppRegState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$1300(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/network/SppPushClient;->register(Landroid/content/Context;)Z

    move-result v0

    .line 231
    .local v0, "isRegRequested":Z
    if-nez v0, :cond_15

    .line 232
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$SppRegState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$SppRegState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mJoinState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$1400(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_15
.end method

.method protected processMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 238
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_20

    .line 245
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$SppRegState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 248
    :goto_e
    return-void

    .line 240
    :pswitch_f
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$SppRegState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$SppRegState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mJoinState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$1400(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_e

    .line 238
    nop

    :pswitch_data_20
    .packed-switch 0x6e
        :pswitch_f
    .end packed-switch
.end method
