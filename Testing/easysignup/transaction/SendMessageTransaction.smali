.class public Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;
.super Landroid/app/Service;
.source "SendMessageTransaction.java"

# interfaces
.implements Lcom/samsung/android/coreapps/easysignup/transaction/TokenValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$ResultState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$SendMessageState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$IdleState;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mErrorCode:I

.field private mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

.field private mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mImsi:Ljava/lang/String;

.field private mMsgRequest:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;

.field private mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mSendMessageState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    const-class v0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$IdleState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$IdleState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 43
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$SendMessageState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$SendMessageState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mSendMessageState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 45
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$ResultState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$ResultState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mImsi:Ljava/lang/String;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mErrorCode:I

    .line 182
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mMsgRequest:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    .prologue
    .line 32
    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mErrorCode:I

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mErrorCode:I

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mImsi:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mSendMessageState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private obtainEventMessage(Landroid/content/Intent;)Landroid/os/Message;
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 224
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {v3}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 226
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "action":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const/4 v2, 0x0

    .line 232
    .local v2, "token":I
    iput v2, v1, Landroid/os/Message;->what:I

    .line 234
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 235
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    invoke-virtual {v3, v4}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->setInitialState(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 237
    invoke-virtual {p0, p1}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->getSSFPushMessage(Landroid/content/Intent;)Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mMsgRequest:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;

    .line 239
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mMsgRequest:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;

    if-nez v3, :cond_3e

    .line 240
    const/4 v1, 0x0

    .line 243
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3e
    return-object v1
.end method


# virtual methods
.method public getSSFPushMessage(Landroid/content/Intent;)Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;
    .registers 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x0

    .line 248
    new-instance v10, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;

    invoke-direct {v10}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;-><init>()V

    .line 249
    .local v10, "ssfPushMessage":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;
    const-string v0, "service_id"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;->setTargetSid(I)V

    .line 250
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest$PushMessage;

    const-string v1, "noti"

    const-string v2, "title"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "desc"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pkg"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "url"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ope"

    invoke-virtual {p1, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "imgae_url"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ext_fields"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest$PushMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;->setPushMessage(Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest$PushMessage;)V

    .line 258
    const/4 v0, 0x1

    new-array v9, v0, [Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;

    .line 259
    .local v9, "pushReceiverInfo":[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;

    const-string v1, "cc"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "national_phone_number"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v9, v11

    .line 261
    invoke-virtual {v10, v9}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;->setReciverInformation([Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;)V

    .line 262
    aget-object v0, v9, v11

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;->ccc:Ljava/lang/String;

    if-eqz v0, :cond_69

    aget-object v0, v9, v11

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;->phone_number:Ljava/lang/String;

    if-nez v0, :cond_71

    .line 263
    :cond_69
    const-string v0, "Some arguments are missing...."

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const/4 v10, 0x0

    .line 266
    .end local v10    # "ssfPushMessage":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;
    :cond_71
    return-object v10
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 194
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 196
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mContext:Landroid/content/Context;

    .line 198
    const-string v0, "SERVICE CREATED"

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    new-instance v0, Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;-><init>(Landroid/os/Looper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    .line 201
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->setInitialState(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 203
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-direct {v0, v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    .line 204
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 208
    const-string v1, "onStartCommand"

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    if-eqz p1, :cond_14

    .line 211
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->obtainEventMessage(Landroid/content/Intent;)Landroid/os/Message;

    move-result-object v0

    .line 213
    .local v0, "msg":Landroid/os/Message;
    if-eqz v0, :cond_14

    .line 214
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->sendMessage(Landroid/os/Message;)Z

    .line 217
    .end local v0    # "msg":Landroid/os/Message;
    :cond_14
    const/4 v1, 0x2

    return v1
.end method

.method public sendResult(Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageResponse;)V
    .registers 10
    .param p1, "resp"    # Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageResponse;

    .prologue
    .line 271
    if-eqz p1, :cond_7c

    .line 272
    invoke-virtual {p1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageResponse;->getReciverInformation()[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo$ReceiverInfoResp;

    move-result-object v4

    .line 273
    .local v4, "receiverresp":[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo$ReceiverInfoResp;
    if-eqz v4, :cond_74

    array-length v6, v4

    if-lez v6, :cond_74

    .line 274
    const/4 v1, 0x0

    .line 275
    .local v1, "i":I
    move-object v0, v4

    .local v0, "arr$":[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo$ReceiverInfoResp;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_f
    if-ge v2, v3, :cond_7b

    aget-object v5, v0, v2

    .line 276
    .local v5, "response":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo$ReceiverInfoResp;
    iget v6, v5, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo$ReceiverInfoResp;->st:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_41

    .line 277
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Succesfully send response for : CCC "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo$ReceiverInfoResp;->ccc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " phone number:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo$ReceiverInfoResp;->phone_number:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :goto_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 279
    :cond_41
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not able to send for: ccc:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo$ReceiverInfoResp;->ccc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " phonenumber:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo$ReceiverInfoResp;->phone_number:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " st:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo$ReceiverInfoResp;->st:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 283
    .end local v0    # "arr$":[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo$ReceiverInfoResp;
    .end local v1    # "i":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "response":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo$ReceiverInfoResp;
    :cond_74
    const-string v6, "ReceiverInfo in response was null"

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .end local v4    # "receiverresp":[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo$ReceiverInfoResp;
    :cond_7b
    :goto_7b
    return-void

    .line 286
    :cond_7c
    const-string v6, "Error response:"

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7b
.end method
