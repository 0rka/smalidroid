.class public Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;
.super Landroid/app/Service;
.source "RecoveryTransaction.java"

# interfaces
.implements Lcom/samsung/android/coreapps/easysignup/transaction/TokenValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$ResultState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$CheckTncState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$JoinState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$SppRegState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$GcmRegState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuth2ndState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IdleState;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCheckTncState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mContext:Landroid/content/Context;

.field private mDeviceId1:Ljava/lang/String;

.field private mDeviceId2:Ljava/lang/String;

.field private mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

.field private mGcmRegState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mImsi:Ljava/lang/String;

.field private mImsiList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAuth2ndState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mIsAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mJoinState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

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

.field private mSppRegReceiver:Landroid/content/BroadcastReceiver;

.field private mSppRegState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 58
    const-class v0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->TAG:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mServiceIdList:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IdleState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IdleState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 69
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mIsAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 70
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuth2ndState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuth2ndState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mIsAuth2ndState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 71
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$GcmRegState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$GcmRegState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mGcmRegState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 72
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$SppRegState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$SppRegState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mSppRegState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 73
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$JoinState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$JoinState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mJoinState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 74
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$CheckTncState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$CheckTncState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mCheckTncState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 75
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$ResultState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$ResultState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mImsi:Ljava/lang/String;

    .line 78
    sget v0, Lcom/samsung/android/coreapps/common/util/DeviceUtils;->PHONE_TYPE_GSM:I

    invoke-static {v0}, Lcom/samsung/android/coreapps/common/util/DeviceUtils;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mDeviceId1:Ljava/lang/String;

    .line 79
    sget v0, Lcom/samsung/android/coreapps/common/util/DeviceUtils;->PHONE_TYPE_CDMA:I

    invoke-static {v0}, Lcom/samsung/android/coreapps/common/util/DeviceUtils;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mDeviceId2:Ljava/lang/String;

    .line 526
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/network/SppPushClient$SppRegReceiver;

    new-instance v1, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$1;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/coreapps/easysignup/network/SppPushClient$SppRegReceiver;-><init>(Lcom/samsung/android/coreapps/easysignup/network/SppPushClient$ISppRegChangedListener;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mSppRegReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mIsAuth2ndState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mDeviceId2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mSppRegState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mJoinState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mServiceIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mCheckTncState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->notifyJoinResult(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mIsAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mDeviceId1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mImsiList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mImsi:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;
    .param p1, "x1"    # Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->handleSuccessResponse(Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mGcmRegState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method private handleSuccessResponse(Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;Ljava/lang/String;)V
    .registers 16
    .param p1, "resp"    # Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;
    .param p2, "did"    # Ljava/lang/String;

    .prologue
    .line 435
    iget-object v1, p1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;->app_status:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AppStatus;

    .line 436
    .local v1, "apps_status":[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AppStatus;
    iget-object v10, p1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;->device_type_value:Ljava/lang/String;

    .line 438
    .local v10, "type":Ljava/lang/String;
    const-string v11, "01"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1c

    const-string v11, "02"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1c

    const-string v11, "03"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_54

    .line 439
    :cond_1c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "deviceid :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->TAG:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {p2, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 442
    :cond_54
    invoke-static {p2}, Lcom/samsung/android/coreapps/common/util/CommonPref;->setDeviceId(Ljava/lang/String;)V

    .line 444
    if-eqz v1, :cond_5c

    array-length v11, v1

    if-nez v11, :cond_6b

    .line 445
    :cond_5c
    const-string v11, "no apps... service ids..."

    iget-object v12, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->TAG:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :goto_63
    iget-object v11, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mImsi:Ljava/lang/String;

    iget-object v12, p1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;->msisdn:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->setMsisdn(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    return-void

    .line 447
    :cond_6b
    iget-object v11, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mServiceIdList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 448
    move-object v2, v1

    .local v2, "arr$":[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AppStatus;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v2    # "arr$":[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AppStatus;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .local v5, "i$":I
    :goto_74
    if-ge v5, v6, :cond_ac

    aget-object v0, v2, v5

    .line 449
    .local v0, "app_status":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AppStatus;
    iget-object v9, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AppStatus;->services:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$Services;

    .line 450
    .local v9, "services":[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$Services;
    const-string v11, "3z5w443l4l"

    iget-object v12, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AppStatus;->appid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a8

    if-eqz v9, :cond_a8

    array-length v11, v9

    if-lez v11, :cond_a8

    .line 451
    move-object v3, v9

    .local v3, "arr$":[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$Services;
    array-length v7, v3

    .local v7, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_8c
    if-ge v4, v7, :cond_a8

    aget-object v8, v3, v4

    .line 452
    .local v8, "service":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$Services;
    iget v11, v8, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$Services;->status:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_9a

    iget v11, v8, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$Services;->status:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_a5

    .line 453
    :cond_9a
    iget-object v11, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mServiceIdList:Ljava/util/ArrayList;

    iget v12, v8, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$Services;->sid:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    :cond_a5
    add-int/lit8 v4, v4, 0x1

    goto :goto_8c

    .line 448
    .end local v3    # "arr$":[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$Services;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "service":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$Services;
    :cond_a8
    add-int/lit8 v4, v5, 0x1

    .restart local v4    # "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_74

    .line 458
    .end local v0    # "app_status":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AppStatus;
    .end local v9    # "services":[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$Services;
    :cond_ac
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Recovery sids: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mServiceIdList:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->TAG:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_63
.end method

.method private notifyJoinResult(Z)V
    .registers 8
    .param p1, "result"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 407
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyJoinResult : result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->hideNotification(Landroid/content/Context;)V

    .line 411
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.coreapps.easysignup.ACTION_JOIN_RESULT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "imsi"

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mImsi:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    const-string v2, "recovery"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 414
    if-eqz p1, :cond_9a

    .line 415
    const-string v2, "extra_join_type"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 416
    const-string v2, "extra_join_result"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 417
    const-string v2, "is_mo_sms_sent"

    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->remove(Ljava/lang/String;)V

    .line 419
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 420
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    const v2, 0xc8041

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Registered]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mContext:Landroid/content/Context;

    sget v3, Lcom/samsung/android/coreapps/easysignup/EasySignUpBroadcaster;->SDK_REQ_AUTH_RESP_REGISTER:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/samsung/android/coreapps/easysignup/EasySignUpBroadcaster;->sendBroadcastAuthResp(Landroid/content/Context;ILjava/lang/String;)V

    .line 429
    .end local v1    # "notificationManager":Landroid/app/NotificationManager;
    :goto_8d
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 430
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->stopSelf()V

    .line 431
    return-void

    .line 426
    :cond_9a
    const-string v2, "extra_join_result"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_8d
.end method

.method private obtainEventMessage(Landroid/content/Intent;I)Landroid/os/Message;
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 510
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 511
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

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v2, "imsi"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mImsi:Ljava/lang/String;

    .line 514
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getImsiList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mImsiList:Ljava/util/ArrayList;

    .line 515
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mImsiList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3b

    .line 516
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mImsiList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mImsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    :cond_3b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "obtainEventMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mImsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 521
    .local v1, "msg":Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 522
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 523
    return-object v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 494
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 466
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 468
    const-string v0, "onCreate()"

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mContext:Landroid/content/Context;

    .line 472
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mSppRegReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/network/SppPushClient;->createIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 474
    new-instance v0, Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;-><init>(Landroid/os/Looper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    .line 475
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->setInitialState(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 477
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-direct {v0, v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    .line 478
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 482
    const-string v1, "onDestroy()"

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.coreapps.easysignup.ACTION_SERVICE_STOPPED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 485
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 487
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mSppRegReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 489
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 490
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    if-eqz p1, :cond_2d

    .line 502
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->obtainEventMessage(Landroid/content/Intent;I)Landroid/os/Message;

    move-result-object v0

    .line 503
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->sendMessage(Landroid/os/Message;)Z

    .line 506
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2d
    const/4 v1, 0x2

    return v1
.end method
