.class public Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$MTAuthState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "AuthTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MTAuthState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)V
    .registers 2

    .prologue
    .line 341
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$MTAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected enter(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 345
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.coreapps.easysignup.ACTION_START_MT_AUTH_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 346
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_cb_handler"

    new-instance v2, Landroid/os/Messenger;

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$MTAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 347
    const-string v1, "extra_auth_methods"

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$MTAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mAuthMethods:[Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$1000(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$MTAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$2000(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 349
    return-void
.end method

.method protected processMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 354
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_78

    .line 371
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$MTAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 374
    :goto_e
    return-void

    .line 356
    :pswitch_f
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_5f

    .line 357
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 358
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$MTAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    const-string v2, "msisdn"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mMsisdn:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$1102(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 359
    const-string v1, "MT AUTH SUCCESS"

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pnum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$MTAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mMsisdn:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$1100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/coreapps/common/util/CommonLog;->debugStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$MTAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$MTAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_e

    .line 364
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_5f
    const-string v1, "MT AUTH failed "

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$MTAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$MTAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_e

    .line 354
    :pswitch_data_78
    .packed-switch 0x50
        :pswitch_f
    .end packed-switch
.end method
