.class public Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$ResultState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "UpdateTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)V
    .registers 2

    .prologue
    .line 307
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected processMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 311
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_38

    .line 321
    :goto_5
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    invoke-virtual {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->stopSelf()V

    .line 322
    return-void

    .line 313
    :pswitch_b
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.coreapps.easysignup.ACTION_JOIN_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "imsi"

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    const-string v1, "extra_join_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    const-string v1, "extra_join_result"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 317
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$900(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_5

    .line 311
    nop

    :pswitch_data_38
    .packed-switch 0xc8
        :pswitch_b
    .end packed-switch
.end method
