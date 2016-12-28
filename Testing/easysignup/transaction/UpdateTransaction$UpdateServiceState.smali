.class public Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "UpdateTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateServiceState"
.end annotation


# instance fields
.field private mParams:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/UpdateServiceParams;

.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)V
    .registers 2

    .prologue
    .line 239
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected enter(Landroid/os/Message;)V
    .registers 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 244
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/UpdateServiceParams;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mServiceIdList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$1200(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/coreapps/common/util/CommonUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/UpdateServiceParams;-><init>([I)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;->mParams:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/UpdateServiceParams;

    .line 245
    const/16 v0, 0xc8

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;->mParams:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/UpdateServiceParams;

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$1100(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->update(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;Lcom/android/volley/Response$ErrorListener;)V

    .line 246
    return-void
.end method

.method protected processMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 251
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_11e

    .line 301
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 304
    :goto_f
    return-void

    .line 253
    :sswitch_10
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/UpdateServiceResp;

    .line 255
    .local v9, "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/UpdateServiceResp;
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v9, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/UpdateServiceResp;->services:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServiceInfo;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->setJoinSIDs(Ljava/lang/String;[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServiceInfo;)V

    .line 257
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mServiceIdList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$1200(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/coreapps/easysignup/EasySignUpBroadcaster;->sendUpdateResult(Landroid/content/Context;ILjava/lang/String;Ljava/util/ArrayList;)V

    .line 259
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 260
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_f

    .line 266
    .end local v9    # "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/UpdateServiceResp;
    :sswitch_4a
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_76

    .line 267
    const/16 v0, 0xc8

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;->mParams:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/UpdateServiceParams;

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$1100(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->update(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_f

    .line 269
    :cond_76
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_f

    .line 275
    :sswitch_86
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;

    .line 276
    .local v6, "errorResp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;
    invoke-virtual {v6}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;->getRcode()J

    move-result-wide v10

    .line 278
    .local v10, "rCode":J
    const-wide v0, 0xee7146d8L

    cmp-long v0, v10, v0

    if-nez v0, :cond_d3

    .line 279
    new-instance v8, Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$900(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 280
    .local v8, "it":Landroid/content/Intent;
    const-string v0, "com.samsung.android.coreapps.easysignup.ACTION_LOGIN"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string v0, "extra_cb_handler"

    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 282
    const-string v0, "accessToken"

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$900(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_f

    .line 286
    .end local v8    # "it":Landroid/content/Intent;
    :cond_d3
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mServiceIdList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$1200(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v3, v1, v2}, Lcom/samsung/android/coreapps/easysignup/EasySignUpBroadcaster;->sendUpdateResult(Landroid/content/Context;ILjava/lang/String;Ljava/util/ArrayList;)V

    .line 288
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.samsung.android.coreapps.easysignup.ACTION_JOIN_RESULT"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "imsi"

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const-string v0, "extra_join_type"

    invoke-virtual {v7, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    const-string v0, "extra_join_result"

    invoke-virtual {v7, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$900(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 294
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto/16 :goto_f

    .line 251
    :sswitch_data_11e
    .sparse-switch
        0xaa -> :sswitch_4a
        0xc8 -> :sswitch_10
        0x2710 -> :sswitch_86
    .end sparse-switch
.end method
