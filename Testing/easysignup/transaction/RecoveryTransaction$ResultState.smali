.class public Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$ResultState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "RecoveryTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)V
    .registers 2

    .prologue
    .line 378
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected processMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 382
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$700(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_49

    .line 384
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$1300(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 385
    .local v0, "i":Landroid/content/Intent;
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$1300(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 388
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$1300(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 389
    .local v1, "i2":Landroid/content/Intent;
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$1300(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 391
    const-string v3, "auth_recovery_retry_count"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/common/util/CommonPref;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 392
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    const/4 v4, 0x1

    # invokes: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->notifyJoinResult(Z)V
    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$1700(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;Z)V

    .line 403
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "i2":Landroid/content/Intent;
    :goto_48
    return-void

    .line 394
    :cond_49
    const-string v3, "auth_recovery_retry_count"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getInt(Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 395
    .local v2, "retryCount":I
    const-string v3, "auth_recovery_retry_count"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/common/util/CommonPref;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 396
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ResultState : retryCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    if-gtz v2, :cond_81

    .line 398
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/setting/SettingAccount;->removeAccount(Lcom/samsung/android/coreapps/easysignup/authenticator/RemoveAccountCallback;)V

    .line 401
    :cond_81
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # invokes: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->notifyJoinResult(Z)V
    invoke-static {v3, v5}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$1700(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;Z)V

    goto :goto_48
.end method
