.class Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$IdleState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "SamsungAccountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)V
    .registers 2

    .prologue
    .line 115
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;
    .param p2, "x1"    # Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$1;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$IdleState;-><init>(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)V

    return-void
.end method


# virtual methods
.method protected processMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;->processMessage(Landroid/os/Message;)V

    .line 121
    iget v5, p1, Landroid/os/Message;->arg2:I

    .line 122
    .local v5, "startId":I
    iget v7, p1, Landroid/os/Message;->what:I

    const/16 v8, 0xfb

    if-eq v7, v8, :cond_1b

    .line 123
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$500(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v8}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$400(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 158
    :goto_1a
    return-void

    .line 129
    :cond_1b
    :try_start_1b
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    invoke-virtual {v7}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 130
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const-string v7, "com.osp.app.signin"

    const/16 v8, 0x80

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 131
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 132
    .local v6, "version":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SA version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SamsungAccountService"

    invoke-static {v7, v8}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_43} :catch_62

    .line 139
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 140
    .local v2, "manager":Landroid/accounts/AccountManager;
    if-nez v2, :cond_76

    .line 141
    const-string v7, "AccountManager.get() is null"

    const-string v8, "SamsungAccountService"

    invoke-static {v7, v8}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$500(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v8}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$400(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_1a

    .line 133
    .end local v2    # "manager":Landroid/accounts/AccountManager;
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "version":Ljava/lang/String;
    :catch_62
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$500(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v8}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$400(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_1a

    .line 146
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "manager":Landroid/accounts/AccountManager;
    .restart local v3    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "version":Ljava/lang/String;
    :cond_76
    const-string v7, "com.osp.app.signin"

    invoke-virtual {v2, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 148
    .local v0, "accountArr":[Landroid/accounts/Account;
    if-eqz v0, :cond_b4

    array-length v7, v0

    if-lez v7, :cond_b4

    .line 149
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Samsung Account exists : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SamsungAccountService"

    invoke-static {v7, v8}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$500(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 151
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$500(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mBindState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v8}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$600(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto/16 :goto_1a

    .line 155
    :cond_b4
    const-string v7, "There is no Samsung Account. stopself"

    const-string v8, "SamsungAccountService"

    invoke-static {v7, v8}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    invoke-virtual {v7, v5}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->stopSelf(I)V

    goto/16 :goto_1a
.end method
