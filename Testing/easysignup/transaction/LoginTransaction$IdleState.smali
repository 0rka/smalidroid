.class public Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$IdleState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "LoginTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)V
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected processMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 53
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->isImsiAvailable()Z

    move-result v7

    if-nez v7, :cond_1f

    .line 54
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 55
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v8}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 100
    :goto_1e
    return-void

    .line 59
    :cond_1f
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->isInvalidServer()Z

    move-result v7

    if-eqz v7, :cond_65

    .line 60
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.android.coreapps.easysignup.ACTION_LAUNCH_EASY_SIGNUP_BY_SETTING"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v6, "intent":Landroid/content/Intent;
    const/high16 v7, 0x10000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 63
    :try_start_31
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    invoke-virtual {v7, v6}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->startActivity(Landroid/content/Intent;)V
    :try_end_36
    .catch Landroid/content/ActivityNotFoundException; {:try_start_31 .. :try_end_36} :catch_60

    .line 68
    :goto_36
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    invoke-virtual {v7}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v3, "i1":Landroid/content/Intent;
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    invoke-virtual {v7, v3}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->stopService(Landroid/content/Intent;)Z

    .line 70
    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    invoke-virtual {v7}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v4, "i2":Landroid/content/Intent;
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    invoke-virtual {v7, v4}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->stopService(Landroid/content/Intent;)Z

    .line 73
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    invoke-virtual {v7}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->stopSelf()V

    goto :goto_1e

    .line 64
    .end local v3    # "i1":Landroid/content/Intent;
    .end local v4    # "i2":Landroid/content/Intent;
    :catch_60
    move-exception v0

    .line 65
    .local v0, "ane":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_36

    .line 77
    .end local v0    # "ane":Landroid/content/ActivityNotFoundException;
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_65
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v8

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$202(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 80
    .local v2, "data":Landroid/os/Bundle;
    const-string v7, "accessToken"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, "inputAccessToken":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "curAccessToken":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "inputAccessToken : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$300(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "curAccessToken : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$300(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_e0

    .line 87
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 88
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v8}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto/16 :goto_1e

    .line 90
    :cond_e0
    if-eqz v1, :cond_ea

    if-eqz v5, :cond_104

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_104

    .line 91
    :cond_ea
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 92
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mLoginState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v8}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$400(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto/16 :goto_1e

    .line 94
    :cond_104
    const-string v7, "input AccessToken is different with ESU\'s. Just use ESU\'s."

    iget-object v8, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$300(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mNewAccessToken:Ljava/lang/String;
    invoke-static {v7, v1}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$502(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 97
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v8}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto/16 :goto_1e
.end method
