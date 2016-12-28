.class public Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$LoginState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "LoginTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoginState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)V
    .registers 2

    .prologue
    .line 103
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$LoginState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected enter(Landroid/os/Message;)V
    .registers 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$LoginState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mNewAccessToken:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$502(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    const/16 v0, 0xaa

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$LoginState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "orca"

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->getUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$LoginState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$LoginState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getRefreshToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$LoginState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$600(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/AuthManager;->login(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 109
    return-void
.end method

.method protected processMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 114
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LoginState processMessage  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$LoginState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$300(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_bc

    .line 150
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$LoginState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 153
    :goto_2c
    return-void

    .line 117
    :sswitch_2d
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/LoginResp;

    .line 118
    .local v3, "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/LoginResp;
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$LoginState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    iget-object v7, v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/LoginResp;->access_token:Ljava/lang/String;

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mNewAccessToken:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$502(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$LoginState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$LoginState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_2c

    .line 125
    .end local v3    # "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/LoginResp;
    :sswitch_48
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 127
    .local v0, "data":Landroid/os/Bundle;
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$LoginState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    const-string v7, "accessToken"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mNewAccessToken:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$502(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$LoginState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$LoginState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_2c

    .line 134
    .end local v0    # "data":Landroid/os/Bundle;
    :sswitch_67
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;

    .line 135
    .local v1, "errorResp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;
    invoke-virtual {v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;->getRcode()J

    move-result-wide v4

    .line 137
    .local v4, "rCode":J
    const-wide v6, 0xee714abfL

    cmp-long v6, v4, v6

    if-nez v6, :cond_aa

    .line 138
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$LoginState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$700(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    .local v2, "it":Landroid/content/Intent;
    const-string v6, "extra_cb_handler"

    new-instance v7, Landroid/os/Messenger;

    iget-object v8, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$LoginState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v8}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 140
    const-string v6, "imsi"

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$LoginState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$LoginState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$700(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2c

    .line 145
    .end local v2    # "it":Landroid/content/Intent;
    :cond_aa
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$LoginState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$LoginState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto/16 :goto_2c

    .line 115
    nop

    :sswitch_data_bc
    .sparse-switch
        0xaa -> :sswitch_2d
        0xb4 -> :sswitch_48
        0x2710 -> :sswitch_67
    .end sparse-switch
.end method
