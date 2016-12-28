.class public Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$GcmRegState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "UpdateTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GcmRegState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)V
    .registers 2

    .prologue
    .line 100
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$GcmRegState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected enter(Landroid/os/Message;)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 104
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

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$GcmRegState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$300(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$GcmRegState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$900(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$GcmRegState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->registerGcm(Landroid/content/Context;Landroid/os/Handler;)V

    .line 106
    return-void
.end method

.method protected processMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 110
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

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$GcmRegState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$300(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_64

    .line 130
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$GcmRegState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 134
    :goto_2c
    return-void

    .line 115
    :pswitch_2d
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 116
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "gcm_register_result"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 117
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

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$GcmRegState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$300(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$GcmRegState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$GcmRegState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mUpdateGcmRegIdState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$1000(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_2c

    .line 112
    nop

    :pswitch_data_64
    .packed-switch 0x64
        :pswitch_2d
    .end packed-switch
.end method
