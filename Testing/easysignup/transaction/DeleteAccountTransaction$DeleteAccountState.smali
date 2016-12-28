.class public Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "DeleteAccountTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteAccountState"
.end annotation


# instance fields
.field mDuidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)V
    .registers 3

    .prologue
    .line 73
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->mDuidList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected enter(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 80
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mImsiList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 81
    .local v8, "imsi":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteAccount("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v8}, Lcom/samsung/android/coreapps/common/util/CommonLog;->debugStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 84
    .end local v8    # "imsi":Ljava/lang/String;
    :cond_3c
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mImsiList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_46
    :goto_46
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 85
    .restart local v8    # "imsi":Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 86
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->mDuidList:Ljava/util/ArrayList;

    invoke-static {v8}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_46

    .line 90
    .end local v8    # "imsi":Ljava/lang/String;
    :cond_62
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->mDuidList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "]"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "list":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # invokes: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->isDeleteService()Z
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$500(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 93
    const/16 v0, 0xf0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # invokes: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->getAgentStatus()I
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$600(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)I

    move-result v2

    .end local v2    # "list":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mServiceId:I
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$700(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mImsiList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mImsiList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getRefreshToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$800(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->deleteService(ILandroid/os/Handler;IILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 96
    :goto_c5
    return-void

    .line 95
    .restart local v2    # "list":Ljava/lang/String;
    :cond_c6
    const/16 v0, 0x8c

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mImsiList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mImsiList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getRefreshToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$800(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->deleteUser(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_c5
.end method

.method protected processMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_1de

    .line 157
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 160
    :goto_f
    return-void

    .line 103
    :sswitch_10
    const-string v0, "account is deleted"

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$900(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mImsiList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->removeAuthData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_f

    .line 110
    :sswitch_38
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/DeleteServiceResp;

    .line 111
    .local v9, "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/DeleteServiceResp;
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    iget v1, v9, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/DeleteServiceResp;->app_count:I

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mServiceCount:I
    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$1002(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;I)I

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "service or account is deleted. service_count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mServiceCount:I
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$1000(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mServiceCount:I
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$1000(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)I

    move-result v0

    if-nez v0, :cond_8a

    .line 114
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$900(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mImsiList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->removeAuthData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 118
    :cond_7a
    :goto_7a
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_f

    .line 115
    :cond_8a
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mServiceCount:I
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$1000(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)I

    move-result v0

    if-lez v0, :cond_7a

    .line 116
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mImsiList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, v9, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/DeleteServiceResp;->services:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServiceInfo;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->setJoinSIDs(Ljava/lang/String;[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServiceInfo;)V

    goto :goto_7a

    .line 123
    .end local v9    # "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/DeleteServiceResp;
    :sswitch_a4
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;

    .line 124
    .local v7, "errorResp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;
    invoke-virtual {v7}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;->getRcode()J

    move-result-wide v10

    .line 126
    .local v10, "rCode":J
    const-wide v0, 0xee7146d7L

    cmp-long v0, v10, v0

    if-nez v0, :cond_ee

    .line 127
    new-instance v8, Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$900(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .local v8, "it":Landroid/content/Intent;
    const-string v0, "extra_cb_handler"

    new-instance v1, Landroid/os/Messenger;

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 129
    const-string v1, "imsi"

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mImsiList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$900(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_f

    .line 132
    .end local v8    # "it":Landroid/content/Intent;
    :cond_ee
    const-wide v0, 0xee7146ebL

    cmp-long v0, v10, v0

    if-nez v0, :cond_120

    .line 133
    const-string v0, "account is already deleted"

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$900(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mImsiList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->removeAuthData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto/16 :goto_f

    .line 137
    :cond_120
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto/16 :goto_f

    .line 143
    .end local v7    # "errorResp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;
    .end local v10    # "rCode":J
    :sswitch_131
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1cd

    .line 144
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # invokes: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->isDeleteService()Z
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$500(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Z

    move-result v0

    if-eqz v0, :cond_17c

    .line 145
    const/16 v0, 0xf0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # invokes: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->getAgentStatus()I
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$600(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mServiceId:I
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$700(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mImsiList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mImsiList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getRefreshToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$800(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->deleteService(ILandroid/os/Handler;IILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    goto/16 :goto_f

    .line 147
    :cond_17c
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->mDuidList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "]"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "list":Ljava/lang/String;
    const/16 v0, 0x8c

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mImsiList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mImsiList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getRefreshToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$800(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->deleteUser(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    goto/16 :goto_f

    .line 151
    .end local v2    # "list":Ljava/lang/String;
    :cond_1cd
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto/16 :goto_f

    .line 100
    :sswitch_data_1de
    .sparse-switch
        0x8c -> :sswitch_10
        0xb4 -> :sswitch_131
        0xf0 -> :sswitch_38
        0x2710 -> :sswitch_a4
    .end sparse-switch
.end method
