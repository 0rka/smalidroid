.class public Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$ResultState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "DeleteAccountTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)V
    .registers 2

    .prologue
    .line 194
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected processMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 198
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mImsiList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_29

    .line 199
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$900(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mImsiList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/samsung/android/coreapps/easysignup/EasySignUpBroadcaster;->sendDeauthResult(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 210
    :goto_23
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->stopSelf()V

    .line 211
    return-void

    .line 201
    :cond_29
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # invokes: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->isDeleteService()Z
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$500(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 202
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mServiceCount:I
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$1000(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)I

    move-result v0

    if-lez v0, :cond_49

    .line 203
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$900(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mServiceId:I
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$700(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)I

    move-result v1

    invoke-static {v0, v2, v1}, Lcom/samsung/android/coreapps/easysignup/EasySignUpBroadcaster;->sendDeleteServiceResult(Landroid/content/Context;II)V

    goto :goto_23

    .line 205
    :cond_49
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$900(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mServiceId:I
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$700(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)I

    move-result v1

    invoke-static {v0, v3, v1}, Lcom/samsung/android/coreapps/easysignup/EasySignUpBroadcaster;->sendDeleteServiceResult(Landroid/content/Context;II)V

    goto :goto_23

    .line 207
    :cond_59
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$900(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mImsiList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/samsung/android/coreapps/easysignup/EasySignUpBroadcaster;->sendDeauthResult(Landroid/content/Context;ILjava/util/ArrayList;)V

    goto :goto_23
.end method
