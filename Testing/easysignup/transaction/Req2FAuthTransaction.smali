.class public Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;
.super Landroid/app/Service;
.source "Req2FAuthTransaction.java"

# interfaces
.implements Lcom/samsung/android/coreapps/easysignup/transaction/TokenValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$ResultState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthCancelState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$SppRegState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$IsAuthState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$IdleState;
    }
.end annotation


# static fields
.field public static final AUTH_TYPE_2FA_REQ:Ljava/lang/String; = "2FA_REQ"

.field public static final AUTH_TYPE_2FA_REQ_CANCEL:Ljava/lang/String; = "2FA_REQ_CANCEL"

.field public static final AUTH_TYPE_2FA_REQ_V3:Ljava/lang/String; = "2FA_REQ_V3"

.field public static final EXTRA_CC:Ljava/lang/String; = "cc"

.field public static final EXTRA_NATIONAL_PHONE_NUMBER:Ljava/lang/String; = "national_phone_number"

.field private static final FAIL:I = 0x0

.field private static final SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAuthType:Ljava/lang/String;

.field private mCbMessenger:Landroid/os/Messenger;

.field private mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

.field private mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mImsi:Ljava/lang/String;

.field private mIsAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mReq2FAuthCancelState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mReq2FAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mServerRCode:J

.field private mServiceId:I

.field private mSppRegReceiver:Landroid/content/BroadcastReceiver;

.field private mSppRegState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

.field private mSuccessCount:I

.field private mTokenReceived:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-class v0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->TAG:Ljava/lang/String;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 59
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$IdleState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$IdleState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 61
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$IsAuthState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$IsAuthState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mIsAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 63
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$SppRegState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$SppRegState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mSppRegState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 65
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mReq2FAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 67
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthCancelState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthCancelState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mReq2FAuthCancelState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 69
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$ResultState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$ResultState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mServiceId:I

    .line 79
    const/16 v0, 0x2710

    iput v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mTokenReceived:I

    .line 431
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/network/SppPushClient$SppRegReceiver;

    new-instance v1, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$1;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/coreapps/easysignup/network/SppPushClient$SppRegReceiver;-><init>(Lcom/samsung/android/coreapps/easysignup/network/SppPushClient$ISppRegChangedListener;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mSppRegReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mAuthType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    .prologue
    .line 37
    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mServiceId:I

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mTokenReceived:I

    return p1
.end method

.method static synthetic access$1202(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mSuccessCount:I

    return p1
.end method

.method static synthetic access$1300(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthResp;)I
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;
    .param p1, "x1"    # Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthResp;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->getSuccessCount(Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthResp;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthRespV3;)I
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;
    .param p1, "x1"    # Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthRespV3;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->getSuccessCount(Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthRespV3;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Cancel2FAReqResp;)I
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;
    .param p1, "x1"    # Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Cancel2FAReqResp;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->getSuccessCount(Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Cancel2FAReqResp;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1602(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;J)J
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;
    .param p1, "x1"    # J

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mServerRCode:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->sendResponseMessage()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mIsAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mReq2FAuthCancelState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mSppRegState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mReq2FAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method private getSuccessCount(Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Cancel2FAReqResp;)I
    .registers 8
    .param p1, "cancel2FAReqResp"    # Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Cancel2FAReqResp;

    .prologue
    .line 392
    if-eqz p1, :cond_6

    iget-object v5, p1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Cancel2FAReqResp;->receiver_info:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo$ReceiverInfoResp;

    if-nez v5, :cond_8

    .line 393
    :cond_6
    const/4 v4, 0x0

    .line 403
    :cond_7
    return v4

    .line 396
    :cond_8
    const/4 v4, 0x0

    .line 397
    .local v4, "successCount":I
    iget-object v0, p1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Cancel2FAReqResp;->receiver_info:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo$ReceiverInfoResp;

    .local v0, "arr$":[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo$ReceiverInfoResp;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_d
    if-ge v1, v2, :cond_7

    aget-object v3, v0, v1

    .line 398
    .local v3, "receiverInfo":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo$ReceiverInfoResp;
    iget v5, v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo$ReceiverInfoResp;->st:I

    if-eqz v5, :cond_17

    .line 399
    add-int/lit8 v4, v4, 0x1

    .line 397
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method

.method private getSuccessCount(Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthResp;)I
    .registers 8
    .param p1, "req2FAuthResp"    # Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthResp;

    .prologue
    .line 377
    if-eqz p1, :cond_6

    iget-object v5, p1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthResp;->receiver_info:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo$ReceiverInfoResp;

    if-nez v5, :cond_8

    .line 378
    :cond_6
    const/4 v4, 0x0

    .line 388
    :cond_7
    return v4

    .line 381
    :cond_8
    const/4 v4, 0x0

    .line 382
    .local v4, "successCount":I
    iget-object v0, p1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthResp;->receiver_info:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo$ReceiverInfoResp;

    .local v0, "arr$":[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo$ReceiverInfoResp;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_d
    if-ge v1, v2, :cond_7

    aget-object v3, v0, v1

    .line 383
    .local v3, "receiverInfo":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo$ReceiverInfoResp;
    iget v5, v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo$ReceiverInfoResp;->st:I

    if-eqz v5, :cond_17

    .line 384
    add-int/lit8 v4, v4, 0x1

    .line 382
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method

.method private getSuccessCount(Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthRespV3;)I
    .registers 9
    .param p1, "req2FAuthResp"    # Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthRespV3;

    .prologue
    .line 363
    if-eqz p1, :cond_6

    iget-object v5, p1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthRespV3;->receiver_info:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo$ReceiverInfoResp;

    if-nez v5, :cond_8

    .line 364
    :cond_6
    const/4 v4, 0x0

    .line 374
    :cond_7
    return v4

    .line 366
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "auth_code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthRespV3;->auth_code:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const/4 v4, 0x0

    .line 368
    .local v4, "successCount":I
    iget-object v0, p1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthRespV3;->receiver_info:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo$ReceiverInfoResp;

    .local v0, "arr$":[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo$ReceiverInfoResp;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_27
    if-ge v1, v2, :cond_7

    aget-object v3, v0, v1

    .line 369
    .local v3, "receiverInfo":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo$ReceiverInfoResp;
    iget v5, v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo$ReceiverInfoResp;->st:I

    if-eqz v5, :cond_31

    .line 370
    add-int/lit8 v4, v4, 0x1

    .line 368
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_27
.end method

.method private obtainEventMessage(Landroid/content/Intent;I)Landroid/os/Message;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const/4 v2, -0x1

    .line 105
    iput v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mServiceId:I

    .line 106
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 108
    .local v0, "msg":Landroid/os/Message;
    const-string v1, "auth_type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mAuthType:Ljava/lang/String;

    .line 109
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mImsi:Ljava/lang/String;

    .line 110
    const-string v1, "extra_cb_handler"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mCbMessenger:Landroid/os/Messenger;

    .line 111
    const-string v1, "service_id"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mServiceId:I

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auth type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mAuthType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " service ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mServiceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 114
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 115
    return-object v0
.end method

.method private sendResponseMessage()V
    .registers 7

    .prologue
    .line 407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send Response Message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mCbMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mCbMessenger:Landroid/os/Messenger;

    if-nez v3, :cond_1f

    .line 429
    :goto_1e
    return-void

    .line 413
    :cond_1f
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 414
    .local v2, "message":Landroid/os/Message;
    iget v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mTokenReceived:I

    iput v3, v2, Landroid/os/Message;->what:I

    .line 415
    iget v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mSuccessCount:I

    if-eqz v3, :cond_4f

    const/4 v3, 0x0

    :goto_2c
    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 416
    iget v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mSuccessCount:I

    iput v3, v2, Landroid/os/Message;->arg2:I

    .line 418
    iget v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mSuccessCount:I

    if-eqz v3, :cond_44

    .line 419
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 420
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "server_response_code"

    iget-wide v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mServerRCode:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 421
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 425
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_44
    :try_start_44
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mCbMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_49} :catch_4a

    goto :goto_1e

    .line 426
    :catch_4a
    move-exception v1

    .line 427
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1e

    .line 415
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4f
    const/4 v3, 0x1

    goto :goto_2c
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 84
    const-string v0, "onCreate()"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mSppRegReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/network/SppPushClient;->createIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    new-instance v0, Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;-><init>(Landroid/os/Looper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    .line 89
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->setInitialState(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 91
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-direct {v0, v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    .line 92
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 125
    const-string v0, "onDestroy()"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mSppRegReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 129
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 130
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 96
    const-string v1, "onStartCommand()"

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    if-eqz p1, :cond_12

    .line 98
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->obtainEventMessage(Landroid/content/Intent;I)Landroid/os/Message;

    move-result-object v0

    .line 99
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->sendMessage(Landroid/os/Message;)Z

    .line 101
    .end local v0    # "msg":Landroid/os/Message;
    :cond_12
    const/4 v1, 0x2

    return v1
.end method
