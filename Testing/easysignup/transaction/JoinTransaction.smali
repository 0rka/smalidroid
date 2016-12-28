.class public Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;
.super Landroid/app/Service;
.source "JoinTransaction.java"

# interfaces
.implements Lcom/samsung/android/coreapps/easysignup/transaction/TokenValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$ResultState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$GetUserState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$JoinState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$SppRegState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$GcmRegState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$AuthState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$AcceptDisclaimerState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IdleState;
    }
.end annotation


# static fields
.field public static final ACTION_GET_POLICY_FINISHED:Ljava/lang/String; = "com.samsung.android.coreapps.easysignup.ACTION_GET_POLICY_FINISHTED"

.field public static final ACTION_SERVICE_STOPPED:Ljava/lang/String; = "com.samsung.android.coreapps.easysignup.ACTION_SERVICE_STOPPED"

.field public static final ACTION_START_MT_AUTH_ACTIVITY:Ljava/lang/String; = "com.samsung.android.coreapps.easysignup.ACTION_START_MT_AUTH_ACTIVITY"

.field public static final EXTRA_GCM_REGISTER_RESULT:Ljava/lang/String; = "gcm_register_result"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAcceptDisclaimerState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mAuthAllServices:Ljava/lang/Boolean;

.field private mAuthCode:Ljava/lang/String;

.field private mAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mAuthType:Ljava/lang/String;

.field private mAutoMOResponse:Landroid/os/Messenger;

.field private mContext:Landroid/content/Context;

.field private mEntryPoint:Ljava/lang/String;

.field private mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

.field private mFromEULA:Z

.field private mGcmRegState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mGetUserState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mImsi:Ljava/lang/String;

.field private mIsAgreeMarketing:Z

.field private mIsAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mIsDisclaimerAgreed:Z

.field private mIsMOSupport:Z

.field private mJoinState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mMoNumber:Ljava/lang/String;

.field private mMoPrefix:Ljava/lang/String;

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
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    const-class v0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->TAG:Ljava/lang/String;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 82
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IdleState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IdleState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 83
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$IsAuthState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mIsAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 84
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$AcceptDisclaimerState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$AcceptDisclaimerState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mAcceptDisclaimerState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 85
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$AuthState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$AuthState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 86
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$GcmRegState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$GcmRegState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mGcmRegState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 87
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$SppRegState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$SppRegState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mSppRegState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 88
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$JoinState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$JoinState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mJoinState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 89
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$GetUserState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$GetUserState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mGetUserState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 90
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$ResultState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$ResultState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 92
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mImsi:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mAuthCode:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mAuthType:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mMoNumber:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mMoPrefix:Ljava/lang/String;

    .line 99
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mAuthAllServices:Ljava/lang/Boolean;

    .line 101
    iput-boolean v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mFromEULA:Z

    .line 102
    iput-boolean v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mIsMOSupport:Z

    .line 104
    iput-boolean v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mIsAgreeMarketing:Z

    .line 106
    iput-boolean v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mIsDisclaimerAgreed:Z

    .line 108
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mEntryPoint:Ljava/lang/String;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mServiceIdList:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/network/SppPushClient$SppRegReceiver;

    new-instance v1, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$1;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/coreapps/easysignup/network/SppPushClient$SppRegReceiver;-><init>(Lcom/samsung/android/coreapps/easysignup/network/SppPushClient$ISppRegChangedListener;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mSppRegReceiver:Landroid/content/BroadcastReceiver;

    .line 648
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mSppRegState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mGcmRegState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mAcceptDisclaimerState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mIsMOSupport:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mIsMOSupport:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mMoNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mMoNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mMoPrefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mMoPrefix:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mAuthAllServices:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mIsDisclaimerAgreed:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mEntryPoint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mIsAgreeMarketing:Z

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mServiceIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mGetUserState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->notifyJoinResult(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mAuthType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mAuthType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mJoinState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mIsAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mFromEULA:Z

    return v0
.end method

.method private initValues()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mImsi:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mAuthType:Ljava/lang/String;

    .line 116
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mMoNumber:Ljava/lang/String;

    .line 118
    iput-boolean v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mIsAgreeMarketing:Z

    .line 120
    iput-boolean v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mIsDisclaimerAgreed:Z

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mServiceIdList:Ljava/util/ArrayList;

    .line 123
    return-void
.end method

.method public static makeDestNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "ccc"    # Ljava/lang/String;
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "international_phone_number"    # Ljava/lang/String;

    .prologue
    .line 706
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ccc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nationalNumber = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "international_phone_number = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 711
    .local v2, "phoneUtil":Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 713
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    const-string v5, "+"

    const-string v6, ""

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 714
    const-string v5, "[\\s\\-()]"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 716
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 717
    .local v3, "regionCode":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "regionCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 720
    .local v0, "iso":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iso = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_dd

    .line 724
    const-string v5, "iso is not equal to regioncode"

    sget-object v6, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    move-object v1, p2

    .line 728
    .local v1, "number":Ljava/lang/String;
    if-eqz v1, :cond_c4

    .line 729
    const-string v5, "[\\s\\-()]"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 740
    :cond_c4
    :goto_c4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "destNumber = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    return-object v1

    .line 737
    .end local v1    # "number":Ljava/lang/String;
    :cond_dd
    move-object v1, p1

    .restart local v1    # "number":Ljava/lang/String;
    goto :goto_c4
.end method

.method private notifyJoinResult(Z)V
    .registers 8
    .param p1, "result"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 671
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyJoinResult : result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->hideNotification(Landroid/content/Context;)V

    .line 675
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.coreapps.easysignup.ACTION_JOIN_RESULT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 676
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "imsi"

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mImsi:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 677
    if-eqz p1, :cond_a4

    .line 678
    const-string v2, "extra_join_type"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 679
    const-string v2, "extra_join_result"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 680
    const-string v2, "is_mo_sms_sent"

    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->remove(Ljava/lang/String;)V

    .line 682
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 683
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    const v2, 0xc8041

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 685
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

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    .end local v1    # "notificationManager":Landroid/app/NotificationManager;
    :goto_80
    iget-boolean v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mFromEULA:Z

    if-eqz v2, :cond_aa

    .line 691
    if-eqz p1, :cond_91

    .line 692
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->setContactSyncAgreement(Z)V

    .line 693
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mContext:Landroid/content/Context;

    sget v3, Lcom/samsung/android/coreapps/easysignup/EasySignUpBroadcaster;->SDK_REQ_AUTH_RESP_REGISTER:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/samsung/android/coreapps/easysignup/EasySignUpBroadcaster;->sendBroadcastAuthResp(Landroid/content/Context;ILjava/lang/String;)V

    .line 695
    :cond_91
    invoke-virtual {p0, p1}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->sendEULAResult(Z)V

    .line 699
    :goto_94
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 700
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->initValues()V

    .line 702
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->stopSelf()V

    .line 703
    return-void

    .line 687
    :cond_a4
    const-string v2, "extra_join_result"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_80

    .line 697
    :cond_aa
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->setContactSyncAgreement(Z)V

    goto :goto_94
.end method

.method private obtainEventMessage(Landroid/content/Intent;I)Landroid/os/Message;
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 194
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 195
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

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v2, "agreeMarketing"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mIsAgreeMarketing:Z

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsAgreeMarketing : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mIsAgreeMarketing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v2, "AuthRequestFrom"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mEntryPoint:Ljava/lang/String;

    .line 201
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mEntryPoint:Ljava/lang/String;

    if-nez v2, :cond_50

    .line 202
    const-string v2, "unknown"

    iput-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mEntryPoint:Ljava/lang/String;

    .line 204
    :cond_50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEntryPoint : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mEntryPoint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v2, "imsi"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mImsi:Ljava/lang/String;

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mI : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mImsi:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/coreapps/common/util/CommonLog;->debugStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iput-boolean v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mFromEULA:Z

    .line 210
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mEntryPoint:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b2

    const-string v2, "EULA"

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mEntryPoint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 211
    iput-boolean v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mFromEULA:Z

    .line 212
    const-string v2, "auto_mo_handler"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    iput-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mAutoMOResponse:Landroid/os/Messenger;

    .line 213
    iput-boolean v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mIsMOSupport:Z

    .line 215
    :cond_b2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFromEULA = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mFromEULA:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v2, "auth_type"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mAuthType:Ljava/lang/String;

    .line 218
    const-string v2, "accept_disclaimer"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mAuthAllServices:Ljava/lang/Boolean;

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAuthType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mAuthType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v2, "disclaimer_agreed"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mIsDisclaimerAgreed:Z

    .line 224
    const-string v2, "service_id_list"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mServiceIdList:Ljava/util/ArrayList;

    .line 226
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 227
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->action2token(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 228
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 229
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 230
    return-object v1
.end method

.method public static registerGcm(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 751
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction$2;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 784
    .local v0, "regTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 785
    return-void
.end method


# virtual methods
.method public action2token(Ljava/lang/String;)I
    .registers 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 137
    const/4 v0, -0x1

    .line 139
    .local v0, "token":I
    const-string v1, "com.samsung.android.coreapps.easysignup.ACTION_JOIN"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 140
    const/16 v0, 0xa

    .line 145
    :cond_b
    :goto_b
    return v0

    .line 141
    :cond_c
    const-string v1, "com.samsung.android.coreapps.easysignup.ACTION_SPP_REG_DONE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 142
    const/16 v0, 0x6e

    goto :goto_b
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 152
    const-string v0, "onCreate()"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mContext:Landroid/content/Context;

    .line 156
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mSppRegReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/network/SppPushClient;->createIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 158
    new-instance v0, Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;-><init>(Landroid/os/Looper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    .line 159
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->setInitialState(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 161
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-direct {v0, v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    .line 162
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 171
    const-string v1, "onDestroy()"

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.coreapps.easysignup.ACTION_SERVICE_STOPPED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 176
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mSppRegReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 178
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 179
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 183
    const-string v1, "onStartCommand"

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    if-eqz p1, :cond_12

    .line 186
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->obtainEventMessage(Landroid/content/Intent;I)Landroid/os/Message;

    move-result-object v0

    .line 187
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->sendMessage(Landroid/os/Message;)Z

    .line 190
    .end local v0    # "msg":Landroid/os/Message;
    :cond_12
    const/4 v1, 0x2

    return v1
.end method

.method public sendEULAResult(Z)V
    .registers 7
    .param p1, "isAuth"    # Z

    .prologue
    .line 234
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 235
    .local v2, "resultMsg":Landroid/os/Message;
    const/16 v3, 0x384

    iput v3, v2, Landroid/os/Message;->what:I

    .line 236
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 237
    .local v0, "data":Landroid/os/Bundle;
    const-string v3, "extra_is_mo_support"

    iget-boolean v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mIsMOSupport:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 238
    const-string v3, "extra_auth_result"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 239
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 240
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mAutoMOResponse:Landroid/os/Messenger;

    if-eqz v3, :cond_3d

    .line 242
    :try_start_20
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->mAutoMOResponse:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send reuslt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_3d} :catch_3e

    .line 248
    :cond_3d
    :goto_3d
    return-void

    .line 244
    :catch_3e
    move-exception v1

    .line 245
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed Send reuslt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d
.end method
