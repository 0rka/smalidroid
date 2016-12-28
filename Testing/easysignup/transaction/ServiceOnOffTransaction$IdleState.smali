.class public Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$IdleState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "ServiceOnOffTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected processMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/16 v6, 0xe

    const/4 v5, 0x0

    .line 62
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->isImsiAvailable()Z

    move-result v3

    if-nez v3, :cond_22

    .line 63
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 64
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 111
    :cond_21
    :goto_21
    return-void

    .line 68
    :cond_22
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$202(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 71
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    const-string v4, "imsi"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$202(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4b

    .line 73
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$202(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    :cond_4b
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$300(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mServiceId:I
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$400(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->isJoined(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_9b

    .line 77
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v6, :cond_9b

    .line 78
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mServiceId:I
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$400(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)I

    move-result v4

    # invokes: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->sendServiceOnBroadcast(II)V
    invoke-static {v3, v4, v5}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$500(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;II)V

    .line 79
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.coreapps.easysignup.ACTION_REQ_AUTH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v2, "i":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 82
    :try_start_78
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    invoke-virtual {v3, v2}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->startActivity(Landroid/content/Intent;)V
    :try_end_7d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_78 .. :try_end_7d} :catch_8e

    .line 86
    :goto_7d
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mServiceId:I
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$400(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)I

    move-result v4

    # invokes: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->sendServiceOffBroadcast(II)V
    invoke-static {v3, v4, v5}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$700(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;II)V

    .line 87
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    invoke-virtual {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->stopSelf()V

    goto :goto_21

    .line 83
    :catch_8e
    move-exception v1

    .line 84
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "ActivityNotFoundException"

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$600(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7d

    .line 92
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "i":Landroid/content/Intent;
    :cond_9b
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_da

    .line 93
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/coreapps/common/util/SettingsGlobalHelper$Auth;->remove(Landroid/content/Context;)V

    .line 94
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/coreapps/common/util/SettingsGlobalHelper$ServiceStatus;->remove(Landroid/content/Context;)V

    .line 95
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/coreapps/common/util/SettingsGlobalHelper$JoinServiceStatus;->remove(Landroid/content/Context;)V

    .line 97
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 98
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto/16 :goto_21

    .line 102
    :cond_da
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v6, :cond_f6

    .line 103
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 104
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mServiceOnState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$800(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 107
    :cond_f6
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0xf

    if-ne v3, v4, :cond_21

    .line 108
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 109
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mServiceOffState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$900(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto/16 :goto_21
.end method
