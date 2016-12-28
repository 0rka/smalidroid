.class public Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;
.super Landroid/app/Service;
.source "LoginTransaction.java"

# interfaces
.implements Lcom/samsung/android/coreapps/easysignup/transaction/TokenValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$ResultState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$LoginState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$IdleState;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

.field private mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mImsi:Ljava/lang/String;

.field private mLoginState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mMessenger:Landroid/os/Messenger;

.field private mNewAccessToken:Ljava/lang/String;

.field private mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 31
    const-class v0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$IdleState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$IdleState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 39
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$LoginState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$LoginState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mLoginState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 40
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$ResultState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$ResultState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 42
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mMessenger:Landroid/os/Messenger;

    .line 44
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mImsi:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mNewAccessToken:Ljava/lang/String;

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mImsi:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mLoginState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mNewAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mNewAccessToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;II)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->notifyLoginResult(II)V

    return-void
.end method

.method private notifyLoginResult(II)V
    .registers 8
    .param p1, "serviceId"    # I
    .param p2, "result"    # I

    .prologue
    .line 232
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyLoginResult : serviceId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.android.coreapps.easysignup.ACTION_LOGIN_RESULT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "imsi"

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mImsi:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const/4 v3, -0x1

    if-eq p1, v3, :cond_38

    .line 237
    const-string v3, "service_id"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    :cond_38
    const-string v3, "extra_login_result"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 240
    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->sendBroadcast(Landroid/content/Intent;)V

    .line 242
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mMessenger:Landroid/os/Messenger;

    if-eqz v3, :cond_53

    .line 243
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 244
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0xaa

    iput v3, v2, Landroid/os/Message;->what:I

    .line 245
    iput p2, v2, Landroid/os/Message;->arg1:I

    .line 248
    :try_start_4e
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_53} :catch_54

    .line 253
    .end local v2    # "msg":Landroid/os/Message;
    :cond_53
    :goto_53
    return-void

    .line 249
    .restart local v2    # "msg":Landroid/os/Message;
    :catch_54
    move-exception v0

    .line 250
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_53
.end method

.method private obtainEventMessage(Landroid/content/Intent;I)Landroid/os/Message;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 211
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 213
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 215
    if-eqz p1, :cond_23

    .line 216
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 217
    const-string v1, "extra_cb_handler"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 218
    const-string v1, "extra_cb_handler"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mMessenger:Landroid/os/Messenger;

    .line 222
    :cond_23
    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 227
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mContext:Landroid/content/Context;

    .line 190
    const-string v0, "SERVICE CREATED"

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v0, Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;-><init>(Landroid/os/Looper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    .line 193
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->setInitialState(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 195
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-direct {v0, v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    .line 196
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 200
    const-string v1, "onStartCommand"

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    if-eqz p1, :cond_12

    .line 203
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->obtainEventMessage(Landroid/content/Intent;I)Landroid/os/Message;

    move-result-object v0

    .line 204
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->sendMessage(Landroid/os/Message;)Z

    .line 207
    .end local v0    # "msg":Landroid/os/Message;
    :cond_12
    const/4 v1, 0x2

    return v1
.end method
