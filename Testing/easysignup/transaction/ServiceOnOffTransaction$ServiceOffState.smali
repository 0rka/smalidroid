.class public Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ServiceOffState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "ServiceOnOffTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceOffState"
.end annotation


# instance fields
.field mIsFromSettingDefaultSms:Z

.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)V
    .registers 3

    .prologue
    .line 179
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ServiceOffState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ServiceOffState;->mIsFromSettingDefaultSms:Z

    return-void
.end method


# virtual methods
.method protected enter(Landroid/os/Message;)V
    .registers 9
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 184
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 185
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v0, "from_setting_default_sms"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 186
    const-string v0, "from_setting_default_sms"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ServiceOffState;->mIsFromSettingDefaultSms:Z

    .line 188
    :cond_15
    const/16 v0, 0xa0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ServiceOffState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ServiceOffState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mSidOffList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$1200(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ServiceOffState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ServiceOffState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ServiceOffState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$1100(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->off(ILandroid/os/Handler;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 189
    return-void
.end method

.method protected processMessage(Landroid/os/Message;)V
    .registers 13
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceOffState received : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ServiceOffState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$600(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_10e

    .line 236
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ServiceOffState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 239
    :goto_2c
    return-void

    .line 197
    :sswitch_2d
    const-string v0, "service off"

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ServiceOffState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$600(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServiceStatusResp;

    .line 200
    .local v10, "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServiceStatusResp;
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ServiceOffState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v10, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServiceStatusResp;->services:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServiceInfo;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->setSIDs(Ljava/lang/String;[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServiceInfo;)V

    .line 201
    iget-boolean v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ServiceOffState;->mIsFromSettingDefaultSms:Z

    if-nez v0, :cond_5f

    .line 202
    const-string v0, "last_free_message_status"

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ServiceOffState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$300(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->getServiceStatus(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    :cond_5f
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ServiceOffState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ServiceOffState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_2c

    .line 210
    .end local v10    # "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServiceStatusResp;
    :sswitch_6f
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_9f

    .line 211
    const/16 v0, 0xa0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ServiceOffState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ServiceOffState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mSidOffList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$1200(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ServiceOffState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ServiceOffState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ServiceOffState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$1100(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->off(ILandroid/os/Handler;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_2c

    .line 213
    :cond_9f
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ServiceOffState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ServiceOffState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto/16 :goto_2c

    .line 219
    :sswitch_b0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;

    .line 220
    .local v6, "errorResp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;
    invoke-virtual {v6}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;->getRcode()J

    move-result-wide v8

    .line 222
    .local v8, "rCode":J
    const-wide v0, 0xee7146d8L

    cmp-long v0, v8, v0

    if-nez v0, :cond_fd

    .line 223
    new-instance v7, Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ServiceOffState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$300(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    .local v7, "it":Landroid/content/Intent;
    const-string v0, "com.samsung.android.coreapps.easysignup.ACTION_LOGIN"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v0, "extra_cb_handler"

    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ServiceOffState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 226
    const-string v0, "accessToken"

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ServiceOffState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ServiceOffState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$300(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_2c

    .line 230
    .end local v7    # "it":Landroid/content/Intent;
    :cond_fd
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ServiceOffState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ServiceOffState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto/16 :goto_2c

    .line 195
    :sswitch_data_10e
    .sparse-switch
        0xa0 -> :sswitch_2d
        0xaa -> :sswitch_6f
        0x2710 -> :sswitch_b0
    .end sparse-switch
.end method
