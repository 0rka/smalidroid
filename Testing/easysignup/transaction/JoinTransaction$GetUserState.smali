.class public Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$GetUserState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "JoinTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetUserState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)V
    .registers 2

    .prologue
    .line 624
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$GetUserState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected enter(Landroid/os/Message;)V
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 628
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$GetUserState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$2100(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/coreapps/easysignup/transaction/GetUserTransaction;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 629
    .local v0, "it":Landroid/content/Intent;
    const-string v1, "extra_cb_handler"

    new-instance v2, Landroid/os/Messenger;

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$GetUserState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 630
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$GetUserState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$2100(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 631
    return-void
.end method

.method protected processMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetUserState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_4e

    .line 643
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$GetUserState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 645
    :goto_2a
    return-void

    .line 639
    :sswitch_2b
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$GetUserState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$GetUserState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$700(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$GetUserState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mServiceIdList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$2000(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/coreapps/easysignup/EasySignUpBroadcaster;->sendAuthResult(Landroid/content/Context;ILjava/lang/String;Ljava/util/ArrayList;)V

    .line 640
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$GetUserState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$GetUserState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$300(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_2a

    .line 636
    nop

    :sswitch_data_4e
    .sparse-switch
        0xe6 -> :sswitch_2b
        0x2710 -> :sswitch_2b
    .end sparse-switch
.end method
