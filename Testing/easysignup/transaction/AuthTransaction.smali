.class public Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;
.super Landroid/app/Service;
.source "AuthTransaction.java"

# interfaces
.implements Lcom/samsung/android/coreapps/easysignup/transaction/TokenValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$1;,
        Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$ResultState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$Mt2FAuthState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$ForceAuthState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$MTAuthState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$MOAuthState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IsAuthState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IdleState;
    }
.end annotation


# static fields
.field public static final ACTION_START_MT_AUTH_ACTIVITY:Ljava/lang/String; = "com.samsung.android.coreapps.easysignup.ACTION_START_MT_AUTH_ACTIVITY"

.field private static final AUTH_STATUS_AUTHENTICATED:I = 0x1

.field public static final AUTH_TYPE_2FA:Ljava/lang/String; = "2FA"

.field public static final AUTH_TYPE_2FA_ACCEPT:Ljava/lang/String; = "accept"

.field public static final AUTH_TYPE_2FA_REFUSE:Ljava/lang/String; = "refuse"

.field public static final AUTH_TYPE_MO:Ljava/lang/String; = "MO"

.field public static final AUTH_TYPE_MT:Ljava/lang/String; = "MT"

.field public static final ENTER_FROM_EULA:Ljava/lang/String; = "EULA"

.field public static final ENTER_FROM_SA:Ljava/lang/String; = "samsungAccount"

.field public static final EXTRA_ACCESS_TOKEN:Ljava/lang/String; = "accessToken"

.field public static final EXTRA_AUTH_CODE:Ljava/lang/String; = "auth_code"

.field public static final EXTRA_AUTH_METHODS:Ljava/lang/String; = "extra_auth_methods"

.field public static final EXTRA_AUTH_RESULT:Ljava/lang/String; = "extra_auth_result"

.field public static final EXTRA_AUTH_TYPE:Ljava/lang/String; = "extra_auth_type"

.field public static final EXTRA_CB_HANDLER:Ljava/lang/String; = "extra_cb_handler"

.field public static final EXTRA_DUID:Ljava/lang/String; = "duid"

.field public static final EXTRA_ENTRY_PATH:Ljava/lang/String; = "AuthRequestFrom"

.field public static final EXTRA_IMSI:Ljava/lang/String; = "imsi"

.field public static final EXTRA_IS_MO_SUPPORT:Ljava/lang/String; = "extra_is_mo_support"

.field public static final EXTRA_MO_NUMBER:Ljava/lang/String; = "extra_mo_number"

.field public static final EXTRA_MO_PREFIX:Ljava/lang/String; = "extra_mo_prefix"

.field public static final EXTRA_MSISDN:Ljava/lang/String; = "key_msisdn"

.field public static final EXTRA_TOKEN:Ljava/lang/String; = "extra_token"

.field public static final PREF_AUTH_CODE:Ljava/lang/String; = "auth_code"

.field public static final RESULT_FAILED:I = 0x1

.field public static final RESULT_FAILED_2FA_IS_NEEDED:I = 0x3

.field public static final RESULT_NOT_AUTHENTICATED:I = 0x2

.field public static final RESULT_SUCCESS:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAuthCode:Ljava/lang/String;

.field private mAuthMethods:[Ljava/lang/String;

.field private mAuthType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEntryPoint:Ljava/lang/String;

.field private mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

.field private mForceAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mFromEULA:Z

.field private mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mImsi:Ljava/lang/String;

.field private mIsAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mIsMOSupport:Z

.field private mMOAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mMT2FAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mMTAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mMoNumber:Ljava/lang/String;

.field private mMoPrefix:Ljava/lang/String;

.field private mMsisdn:Ljava/lang/String;

.field private mRequestIntentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-class v0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->TAG:Ljava/lang/String;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 78
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IdleState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IdleState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 79
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IsAuthState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$IsAuthState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mIsAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 80
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$MOAuthState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$MOAuthState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mMOAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 81
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$MTAuthState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$MTAuthState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mMTAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 82
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$Mt2FAuthState;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$Mt2FAuthState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$1;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mMT2FAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 83
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$ForceAuthState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$ForceAuthState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mForceAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 84
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$ResultState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$ResultState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 86
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mImsi:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mAuthType:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mMoNumber:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mMoPrefix:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mAuthMethods:[Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mAuthCode:Ljava/lang/String;

    .line 105
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mMsisdn:Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mRequestIntentList:Ljava/util/ArrayList;

    .line 114
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mEntryPoint:Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mFromEULA:Z

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mIsMOSupport:Z

    .line 448
    return-void
.end method

.method public static SHA1(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 511
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 512
    .local v0, "md":Ljava/security/MessageDigest;
    const-string v2, "iso-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 513
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 514
    .local v1, "sha1hash":[B
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->convertToHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static synthetic access$100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mAuthMethods:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mAuthMethods:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mMsisdn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mMsisdn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mFromEULA:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mIsMOSupport:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mIsMOSupport:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mMoNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mMoNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mMoPrefix:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->startAuth()V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mAuthCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mEntryPoint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mMTAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mRequestIntentList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->initValues()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mAuthType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mAuthType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mMT2FAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mImsi:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mForceAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mIsAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    return-object v0
.end method

.method private static convertToHex([B)Ljava/lang/String;
    .registers 10
    .param p0, "data"    # [B

    .prologue
    .line 498
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 499
    .local v2, "buf":Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_8
    if-ge v4, v5, :cond_2e

    aget-byte v1, v0, v4

    .line 500
    .local v1, "b":B
    ushr-int/lit8 v8, v1, 0x4

    and-int/lit8 v3, v8, 0xf

    .line 501
    .local v3, "halfbyte":I
    const/4 v6, 0x0

    .local v6, "two_halfs":I
    move v7, v6

    .line 503
    .end local v6    # "two_halfs":I
    .local v7, "two_halfs":I
    :goto_12
    if-ltz v3, :cond_28

    const/16 v8, 0x9

    if-gt v3, v8, :cond_28

    add-int/lit8 v8, v3, 0x30

    int-to-char v8, v8

    :goto_1b
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 504
    and-int/lit8 v3, v1, 0xf

    .line 505
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "two_halfs":I
    .restart local v6    # "two_halfs":I
    const/4 v8, 0x1

    if-lt v7, v8, :cond_33

    .line 499
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 503
    .end local v6    # "two_halfs":I
    .restart local v7    # "two_halfs":I
    :cond_28
    add-int/lit8 v8, v3, -0xa

    add-int/lit8 v8, v8, 0x61

    int-to-char v8, v8

    goto :goto_1b

    .line 507
    .end local v1    # "b":B
    .end local v3    # "halfbyte":I
    .end local v7    # "two_halfs":I
    :cond_2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .restart local v1    # "b":B
    .restart local v3    # "halfbyte":I
    .restart local v6    # "two_halfs":I
    :cond_33
    move v7, v6

    .end local v6    # "two_halfs":I
    .restart local v7    # "two_halfs":I
    goto :goto_12
.end method

.method private initValues()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mImsi:Ljava/lang/String;

    .line 122
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mAuthCode:Ljava/lang/String;

    .line 123
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mAuthType:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mMoNumber:Ljava/lang/String;

    .line 126
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mMsisdn:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mRequestIntentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 129
    return-void
.end method

.method public static is2FANeeded([Ljava/lang/String;)Z
    .registers 7
    .param p0, "authMethods"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 293
    if-nez p0, :cond_4

    .line 300
    :cond_3
    :goto_3
    return v4

    .line 296
    :cond_4
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_7
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 297
    .local v1, "authMethod":Ljava/lang/String;
    const-string v5, "2FA"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 298
    const/4 v4, 0x1

    goto :goto_3

    .line 296
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method

.method private obtainEventMessage(Landroid/content/Intent;I)Landroid/os/Message;
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const/4 v4, 0x1

    .line 169
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 170
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "action":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v2, "extra_auth_type"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mAuthType:Ljava/lang/String;

    .line 175
    const-string v2, "auth_code"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mAuthCode:Ljava/lang/String;

    .line 176
    const-string v2, "extra_mo_number"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mMoNumber:Ljava/lang/String;

    .line 177
    const-string v2, "extra_mo_prefix"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mMoPrefix:Ljava/lang/String;

    .line 178
    const-string v2, "key_msisdn"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mMsisdn:Ljava/lang/String;

    .line 180
    const-string v2, "AuthRequestFrom"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mEntryPoint:Ljava/lang/String;

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EXTRA_ENTRY_PATH : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mEntryPoint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mFromEULA:Z

    .line 185
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mEntryPoint:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_86

    const-string v2, "EULA"

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mEntryPoint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 186
    iput-boolean v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mFromEULA:Z

    .line 187
    iput-boolean v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mIsMOSupport:Z

    .line 190
    :cond_86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFromEULA "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mFromEULA:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 193
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 194
    return-object v1
.end method

.method private sendAuthCodeForMO(Ljava/lang/String;)V
    .registers 10
    .param p1, "destNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 519
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->createSmsAuthCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mAuthCode:Ljava/lang/String;

    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mMoPrefix:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " 01"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mAuthCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 525
    .local v3, "body":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/DeviceUtils;->isMultiSimDevice()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 526
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mImsi:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getSubIdUsingImsi(Ljava/lang/String;)I

    move-result v1

    int-to-long v6, v1

    .line 527
    .local v6, "subId":J
    long-to-int v1, v6

    invoke-static {v1}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v0

    .end local v6    # "subId":J
    .local v0, "smsManager":Landroid/telephony/SmsManager;
    :goto_40
    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    .line 532
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendAuthCodeForMO - destNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/coreapps/common/util/CommonLog;->debugStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , body = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string v1, "is_mo_sms_sent"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 537
    return-void

    .line 529
    .end local v0    # "smsManager":Landroid/telephony/SmsManager;
    :cond_77
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .restart local v0    # "smsManager":Landroid/telephony/SmsManager;
    goto :goto_40
.end method

.method private startAuth()V
    .registers 4

    .prologue
    .line 540
    const-string v1, "MO"

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mAuthType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 542
    :try_start_a
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mMoNumber:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->sendAuthCodeForMO(Ljava/lang/String;)V

    .line 543
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mMOAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_17

    .line 564
    :cond_16
    :goto_16
    return-void

    .line 545
    :catch_17
    move-exception v0

    .line 546
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 549
    const-string v1, "samsungAccount"

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mEntryPoint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 550
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_16

    .line 554
    :cond_2f
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mMTAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_16

    .line 556
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_37
    const-string v1, "MT"

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mAuthType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEntryPoint : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mEntryPoint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v1, "samsungAccount"

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mEntryPoint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 559
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_16

    .line 561
    :cond_6d
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mMTAuthState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_16
.end method


# virtual methods
.method public createSmsAuthCode()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v3, 0x1

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 494
    .local v6, "seed":Ljava/lang/String;
    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/coreapps/common/util/RandomStringUtils;->random(IIIZZ[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 133
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 134
    const-string v0, "onCreate"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mContext:Landroid/content/Context;

    .line 138
    new-instance v0, Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;-><init>(Landroid/os/Looper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    .line 139
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->setInitialState(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 141
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-direct {v0, v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    .line 142
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 151
    const-string v0, "onDestroy"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 154
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 159
    if-eqz p1, :cond_10

    .line 160
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mRequestIntentList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->obtainEventMessage(Landroid/content/Intent;I)Landroid/os/Message;

    move-result-object v0

    .line 162
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->sendMessage(Landroid/os/Message;)Z

    .line 165
    .end local v0    # "msg":Landroid/os/Message;
    :cond_10
    const/4 v1, 0x2

    return v1
.end method
