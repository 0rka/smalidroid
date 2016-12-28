.class public Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$ResultState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "JoinTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)V
    .registers 2

    .prologue
    .line 648
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected processMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 652
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_44

    .line 653
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$700(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_45

    .line 655
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$2100(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 656
    .local v0, "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$2100(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 659
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$2100(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 660
    .local v1, "i2":Landroid/content/Intent;
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$2100(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 662
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    const/4 v3, 0x1

    # invokes: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->notifyJoinResult(Z)V
    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$2300(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;Z)V

    .line 667
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "i2":Landroid/content/Intent;
    :cond_44
    :goto_44
    return-void

    .line 664
    :cond_45
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    const/4 v3, 0x0

    # invokes: Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->notifyJoinResult(Z)V
    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->access$2300(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;Z)V

    goto :goto_44
.end method
