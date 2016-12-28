.class public Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;
.super Landroid/app/Service;
.source "UpdateTransaction.java"

# interfaces
.implements Lcom/samsung/android/coreapps/easysignup/transaction/TokenValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$ResultState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$AcceptDisclaimerState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$GcmRegState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$IdleState;
    }
.end annotation


# static fields
.field private static final EXTRA_GCM_REGISTER_RESULT:Ljava/lang/String; = "gcm_register_result"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAcceptDisclaimerState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mAuthAllServices:Ljava/lang/Boolean;

.field private mContext:Landroid/content/Context;

.field private mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

.field private mGcmRegState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mImsi:Ljava/lang/String;

.field private mMessenger:Landroid/os/Messenger;

.field private mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mServiceIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

.field private mUpdateGcmRegIdState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mUpdateService:Z

.field private mUpdateServiceState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 41
    const-class v0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->TAG:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$IdleState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$IdleState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 51
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$GcmRegState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$GcmRegState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mGcmRegState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 52
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mUpdateGcmRegIdState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 53
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$AcceptDisclaimerState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$AcceptDisclaimerState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mAcceptDisclaimerState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 54
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$UpdateServiceState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mUpdateServiceState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 55
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$ResultState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction$ResultState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 57
    iput-boolean v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mUpdateService:Z

    .line 58
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mServiceIdList:Ljava/util/ArrayList;

    .line 59
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mAuthAllServices:Ljava/lang/Boolean;

    .line 61
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mMessenger:Landroid/os/Messenger;

    .line 63
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mImsi:Ljava/lang/String;

    .line 307
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mUpdateGcmRegIdState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mServiceIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mImsi:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mUpdateService:Z

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mAuthAllServices:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mAcceptDisclaimerState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mUpdateServiceState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mGcmRegState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private obtainEventMessage(Landroid/content/Intent;I)Landroid/os/Message;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 352
    const-string v1, "extra_cb_handler"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 353
    const-string v1, "extra_cb_handler"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mMessenger:Landroid/os/Messenger;

    .line 356
    :cond_12
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 357
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 358
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 360
    const-string v1, "com.samsung.android.coreapps.easysignup.ACTION_JOIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 361
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mUpdateService:Z

    .line 362
    const-string v1, "accept_disclaimer"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mAuthAllServices:Ljava/lang/Boolean;

    .line 363
    const-string v1, "service_id_list"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mServiceIdList:Ljava/util/ArrayList;

    .line 366
    :cond_45
    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 371
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 327
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 329
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mContext:Landroid/content/Context;

    .line 331
    const-string v0, "SERVICE CREATED"

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    new-instance v0, Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;-><init>(Landroid/os/Looper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    .line 334
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->setInitialState(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 336
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-direct {v0, v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    .line 337
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 341
    const-string v1, "onStartCommand"

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    if-eqz p1, :cond_12

    .line 344
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->obtainEventMessage(Landroid/content/Intent;I)Landroid/os/Message;

    move-result-object v0

    .line 345
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->sendMessage(Landroid/os/Message;)Z

    .line 348
    .end local v0    # "msg":Landroid/os/Message;
    :cond_12
    const/4 v1, 0x2

    return v1
.end method
