.class public Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;
.super Landroid/app/Service;
.source "GetRefreshTokenTransaction.java"

# interfaces
.implements Lcom/samsung/android/coreapps/easysignup/transaction/TokenValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$ResultState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$GetRefreshTokenState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$SppRegState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$GcmRegState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$IdleState;
    }
.end annotation


# static fields
.field private static final EXTRA_GCM_REGISTER_RESULT:Ljava/lang/String; = "gcm_register_result"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

.field private mGcmRegState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mGetRefreshTokenState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mImsi:Ljava/lang/String;

.field private mMessenger:Landroid/os/Messenger;

.field private mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mSppRegReceiver:Landroid/content/BroadcastReceiver;

.field private mSppRegState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

.field private newAccessToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const-class v0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->TAG:Ljava/lang/String;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 58
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$IdleState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$IdleState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 59
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$GcmRegState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$GcmRegState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mGcmRegState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 60
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$SppRegState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$SppRegState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mSppRegState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 61
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$GetRefreshTokenState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$GetRefreshTokenState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mGetRefreshTokenState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 62
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$ResultState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$ResultState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 64
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mMessenger:Landroid/os/Messenger;

    .line 66
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mImsi:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->newAccessToken:Ljava/lang/String;

    .line 72
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/network/SppPushClient$SppRegReceiver;

    new-instance v1, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$1;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/coreapps/easysignup/network/SppPushClient$SppRegReceiver;-><init>(Lcom/samsung/android/coreapps/easysignup/network/SppPushClient$ISppRegChangedListener;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mSppRegReceiver:Landroid/content/BroadcastReceiver;

    .line 255
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mSppRegState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;I)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->notifyGetRefreshTokenResult(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mImsi:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mGcmRegState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mGetRefreshTokenState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$802(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->newAccessToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    return-object v0
.end method

.method private notifyGetRefreshTokenResult(I)V
    .registers 7
    .param p1, "result"    # I

    .prologue
    .line 330
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyGetRefreshTokenResult - result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mMessenger:Landroid/os/Messenger;

    if-eqz v3, :cond_3a

    .line 333
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 334
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0xb4

    iput v3, v2, Landroid/os/Message;->what:I

    .line 335
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 337
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 338
    .local v0, "data":Landroid/os/Bundle;
    const-string v3, "accessToken"

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->newAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 342
    :try_start_35
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3a} :catch_3b

    .line 347
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3a
    :goto_3a
    return-void

    .line 343
    .restart local v0    # "data":Landroid/os/Bundle;
    .restart local v2    # "msg":Landroid/os/Message;
    :catch_3b
    move-exception v1

    .line 344
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3a
.end method

.method private obtainEventMessage(Landroid/content/Intent;I)Landroid/os/Message;
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 308
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 309
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "action":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 314
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 316
    const-string v2, "extra_cb_handler"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 317
    const-string v2, "extra_cb_handler"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    iput-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mMessenger:Landroid/os/Messenger;

    .line 320
    :cond_3d
    return-object v1
.end method

.method public static registerGcm(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x0

    .line 352
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$2;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 385
    .local v0, "regTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_14

    .line 386
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 389
    :goto_13
    return-void

    .line 388
    :cond_14
    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_13
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 325
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 273
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 275
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mContext:Landroid/content/Context;

    .line 277
    const-string v0, "SERVICE CREATED"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mSppRegReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/network/SppPushClient;->createIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 281
    new-instance v0, Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;-><init>(Landroid/os/Looper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    .line 282
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->setInitialState(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 284
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-direct {v0, v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    .line 285
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 289
    const-string v0, "onDestroy()"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mSppRegReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 292
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 293
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 297
    const-string v1, "onStartCommand"

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    if-eqz p1, :cond_12

    .line 300
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->obtainEventMessage(Landroid/content/Intent;I)Landroid/os/Message;

    move-result-object v0

    .line 301
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->sendMessage(Landroid/os/Message;)Z

    .line 304
    .end local v0    # "msg":Landroid/os/Message;
    :cond_12
    const/4 v1, 0x2

    return v1
.end method
