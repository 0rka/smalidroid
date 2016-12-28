.class public Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$SendMessageState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "SendMessageTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SendMessageState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)V
    .registers 2

    .prologue
    .line 105
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$SendMessageState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected enter(Landroid/os/Message;)V
    .registers 9
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 109
    const/16 v0, 0x104

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$SendMessageState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    const-string v2, "PUSH"

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$SendMessageState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$500(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$SendMessageState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$500(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$SendMessageState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mMsgRequest:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$SendMessageState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$700(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->sendPushMessage(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;Lcom/android/volley/Response$ErrorListener;)V

    .line 110
    return-void
.end method

.method protected processMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendMessageState received : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$SendMessageState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$300(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_12c

    .line 172
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$SendMessageState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 178
    :goto_2c
    return-void

    .line 122
    :sswitch_2d
    const-string v0, "SendMessage"

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$SendMessageState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$300(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageResponse;

    .line 125
    .local v9, "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageResponse;
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$SendMessageState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mErrorCode:I
    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$402(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;I)I

    .line 126
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$SendMessageState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    invoke-virtual {v0, v9}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->sendResult(Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageResponse;)V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$SendMessageState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$SendMessageState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_2c

    .line 136
    .end local v9    # "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageResponse;
    :sswitch_57
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_89

    .line 137
    const/16 v0, 0x104

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$SendMessageState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    const-string v2, "PUSH"

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$SendMessageState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$500(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$SendMessageState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$500(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$SendMessageState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mMsgRequest:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$SendMessageState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$700(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->sendPushMessage(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_2c

    .line 139
    :cond_89
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$SendMessageState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$SendMessageState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_2c

    .line 146
    :sswitch_99
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;

    .line 147
    .local v7, "errorResp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;
    invoke-virtual {v7}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;->getRcode()J

    move-result-wide v10

    .line 149
    .local v10, "rCode":J
    const-wide v0, 0xee7146d8L

    cmp-long v0, v10, v0

    if-nez v0, :cond_e6

    .line 151
    new-instance v8, Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$SendMessageState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$800(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    .local v8, "it":Landroid/content/Intent;
    const-string v0, "com.samsung.android.coreapps.easysignup.ACTION_LOGIN"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v0, "extra_cb_handler"

    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$SendMessageState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 154
    const-string v0, "accessToken"

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$SendMessageState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$500(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$SendMessageState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$800(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_2c

    .line 159
    .end local v8    # "it":Landroid/content/Intent;
    :cond_e6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error message:: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;->getRmsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , error code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;->getRcode()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$SendMessageState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$300(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$SendMessageState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    const/4 v1, -0x1

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mErrorCode:I
    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$402(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;I)I

    .line 161
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$SendMessageState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$SendMessageState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto/16 :goto_2c

    .line 118
    nop

    :sswitch_data_12c
    .sparse-switch
        0xaa -> :sswitch_57
        0x104 -> :sswitch_2d
        0x2710 -> :sswitch_99
    .end sparse-switch
.end method
