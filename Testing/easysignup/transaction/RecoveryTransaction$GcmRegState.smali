.class public Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$GcmRegState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "RecoveryTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GcmRegState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)V
    .registers 2

    .prologue
    .line 185
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$GcmRegState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected enter(Landroid/os/Message;)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GcmRegState] enter. message.what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$GcmRegState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CommonFeature.SUPPORT_GCM : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/coreapps/common/CommonFeature;->SUPPORT_GCM:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CommonPref.getGcmRegId() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getGcmRegId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$GcmRegState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    sget-boolean v0, Lcom/samsung/android/coreapps/common/CommonFeature;->SUPPORT_GCM:Z

    if-eqz v0, :cond_54

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getGcmRegId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 193
    :cond_54
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$GcmRegState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$GcmRegState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mSppRegState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$1200(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 198
    :goto_63
    return-void

    .line 197
    :cond_64
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$GcmRegState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$1300(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$GcmRegState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->registerGcm(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_63
.end method

.method protected processMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RegisterGcmState] processMessage. message.what : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$GcmRegState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_64

    .line 215
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$GcmRegState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 218
    :goto_2c
    return-void

    .line 206
    :pswitch_2d
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 207
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "gcm_register_result"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 208
    .local v1, "result":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GcmRegState] processMessage. result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$GcmRegState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$GcmRegState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$GcmRegState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mSppRegState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$1200(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_2c

    .line 204
    nop

    :pswitch_data_64
    .packed-switch 0x64
        :pswitch_2d
    .end packed-switch
.end method
