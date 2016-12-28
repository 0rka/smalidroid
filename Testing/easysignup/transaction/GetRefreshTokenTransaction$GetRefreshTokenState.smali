.class public Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$GetRefreshTokenState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "GetRefreshTokenTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetRefreshTokenState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)V
    .registers 2

    .prologue
    .line 176
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$GetRefreshTokenState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected enter(Landroid/os/Message;)V
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 180
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v10, "sids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_6
    sget-object v1, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->SERVICE_ID_LIST:[I

    array-length v1, v1

    if-ge v7, v1, :cond_2a

    .line 183
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$GetRefreshTokenState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    invoke-virtual {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->SERVICE_ID_LIST:[I

    aget v2, v2, v7

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->getServiceStatus(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_27

    .line 184
    sget-object v1, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->SERVICE_ID_LIST:[I

    aget v1, v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_27
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 188
    :cond_2a
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v9, "pushInfoArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;>;"
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getSppRegId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 190
    new-instance v8, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getSppRegId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SPP"

    invoke-direct {v8, v1, v2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .local v8, "pushInfo":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .end local v8    # "pushInfo":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;
    :cond_43
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getGcmRegId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5b

    sget-boolean v1, Lcom/samsung/android/coreapps/common/CommonFeature;->SUPPORT_GCM:Z

    if-eqz v1, :cond_5b

    .line 194
    new-instance v8, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getGcmRegId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GCM"

    invoke-direct {v8, v1, v2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .restart local v8    # "pushInfo":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .end local v8    # "pushInfo":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;
    :cond_5b
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;

    .line 199
    .local v4, "pushInfoArray":[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinParams;

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$GetRefreshTokenState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->access$300(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10}, Lcom/samsung/android/coreapps/common/util/CommonUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CscUtil;->getCSC()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;[ILjava/lang/String;)V

    .line 201
    .local v0, "params":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinParams;
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PackageInfo;

    const-string v2, "3z5w443l4l"

    invoke-direct {v1, v2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PackageInfo;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinParams;->pkg:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PackageInfo;

    .line 203
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$GetRefreshTokenState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    const/4 v2, 0x0

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->newAccessToken:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->access$802(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    const/16 v1, 0xb4

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$GetRefreshTokenState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$GetRefreshTokenState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->access$900(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->join(ILandroid/os/Handler;Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinParams;Lcom/android/volley/Response$ErrorListener;)V

    .line 206
    return-void
.end method

.method protected processMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    .line 210
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_aa

    .line 249
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$GetRefreshTokenState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 252
    :goto_f
    return-void

    .line 212
    :sswitch_10
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinResp;

    .line 214
    .local v3, "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinResp;
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$GetRefreshTokenState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->access$300(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinResp;->duid:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->setDuid(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$GetRefreshTokenState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->access$300(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinResp;->refresh_token:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->setRefreshToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$GetRefreshTokenState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->access$300(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinResp;->access_token:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$GetRefreshTokenState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    iget-object v7, v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinResp;->access_token:Ljava/lang/String;

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->newAccessToken:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->access$802(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$GetRefreshTokenState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$GetRefreshTokenState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_f

    .line 226
    .end local v3    # "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinResp;
    :sswitch_4c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;

    .line 227
    .local v1, "errorResp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;
    invoke-virtual {v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;->getRcode()J

    move-result-wide v4

    .line 229
    .local v4, "rCode":J
    const-wide v6, 0xee7146ebL

    cmp-long v6, v4, v6

    if-nez v6, :cond_8d

    .line 230
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$GetRefreshTokenState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->access$600(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$GetRefreshTokenState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->access$300(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->removeAuthData(Landroid/content/Context;Ljava/lang/String;)V

    .line 231
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$GetRefreshTokenState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$GetRefreshTokenState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->access$300(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v8, v7}, Lcom/samsung/android/coreapps/easysignup/EasySignUpBroadcaster;->sendDeauthResult(Landroid/content/Context;ILjava/lang/String;)V

    .line 234
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.samsung.android.coreapps.easysignup.ACTION_LAUNCH_EASY_SIGNUP_DEREGISTERED_POPUP"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    .local v2, "it":Landroid/content/Intent;
    const/high16 v6, 0x34000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 236
    const-string v6, "extra_esu_is_foreground"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 238
    :try_start_88
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$GetRefreshTokenState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    invoke-virtual {v6, v2}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->startActivity(Landroid/content/Intent;)V
    :try_end_8d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_88 .. :try_end_8d} :catch_9e

    .line 244
    .end local v2    # "it":Landroid/content/Intent;
    :cond_8d
    :goto_8d
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$GetRefreshTokenState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$GetRefreshTokenState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto/16 :goto_f

    .line 239
    .restart local v2    # "it":Landroid/content/Intent;
    :catch_9e
    move-exception v0

    .line 240
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v6, "Token error & ESU Deregistered popup is not found"

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->access$500()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    .line 210
    nop

    :sswitch_data_aa
    .sparse-switch
        0xb4 -> :sswitch_10
        0x2710 -> :sswitch_4c
    .end sparse-switch
.end method
