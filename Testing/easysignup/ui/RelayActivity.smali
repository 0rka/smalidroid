.class public Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;
.super Landroid/app/Activity;
.source "RelayActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$IsAuthRespHandler;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE_ACCEPT_DISCLAIMER_ACTIVITY:I = 0xc8

.field private static final REQUEST_CODE_GREETING_ACTIVITY:I = 0x64

.field private static final REQUEST_CODE_MT_AUTH_ACTIVITY:I = 0x12c

.field private static final REQUEST_CODE_SETTING_ACTIVITY:I = 0x190

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAuthAllServices:Ljava/lang/Boolean;

.field private mAuthType:Ljava/lang/String;

.field private mEntryPoint:Ljava/lang/String;

.field private mImsi:Ljava/lang/String;

.field private mIsAgreeMarketing:Z

.field private mIsAuthRespHandler:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$IsAuthRespHandler;

.field private mIsDisclaimerAgreed:Ljava/lang/Boolean;

.field private mJoinServiceId:I

.field private mJoinServiceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private mLocalEventReceiver:Landroid/content/BroadcastReceiver;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mServiceId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const-class v0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->TAG:Ljava/lang/String;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mImsi:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mAuthType:Ljava/lang/String;

    .line 64
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mAuthAllServices:Ljava/lang/Boolean;

    .line 65
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mIsDisclaimerAgreed:Ljava/lang/Boolean;

    .line 69
    iput-boolean v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mIsAgreeMarketing:Z

    .line 71
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mEntryPoint:Ljava/lang/String;

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mServiceId:I

    .line 75
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mIsAuthRespHandler:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$IsAuthRespHandler;

    .line 77
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$1;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mLocalEventReceiver:Landroid/content/BroadcastReceiver;

    .line 137
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->startAcceptDisclaimer(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->startMtAuthActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mEntryPoint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->saveTNCAgreeServices()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mImsi:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    .prologue
    .line 44
    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mJoinServiceId:I

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->requestJoin()V

    return-void
.end method

.method static synthetic access$902(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private dismissProgressBar()V
    .registers 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    .line 432
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 433
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 435
    :cond_c
    return-void
.end method

.method private initialize()V
    .registers 16

    .prologue
    const/high16 v14, 0x24000000

    const/16 v13, 0x64

    const/4 v12, 0x1

    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 173
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 174
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 175
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "action":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initialize action : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v6, "is_popup_mode"

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 180
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 181
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mLocalEventReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "com.samsung.android.coreapps.easysignup.ACTION_GET_POLICY_FINISHTED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 182
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mLocalEventReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "com.samsung.android.coreapps.easysignup.ACTION_START_ACCEPT_DISCLAIMER_ACTIVITY"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 183
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mLocalEventReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "com.samsung.android.coreapps.easysignup.ACTION_START_MT_AUTH_ACTIVITY"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 184
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mLocalEventReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "com.samsung.android.coreapps.easysignup.ACTION_JOIN_RESULT"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 186
    const-string v6, "service_id"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9c

    .line 187
    const-string v6, "service_id"

    invoke-virtual {v2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mServiceId:I

    .line 188
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mServiceId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mServiceId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_9c
    const-string v6, "auth_type"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mAuthType:Ljava/lang/String;

    .line 192
    const-string v6, "imsi"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mImsi:Ljava/lang/String;

    .line 193
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mImsi:Ljava/lang/String;

    if-nez v6, :cond_b6

    .line 194
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mImsi:Ljava/lang/String;

    .line 197
    :cond_b6
    const-string v6, "AuthRequestFrom"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e0

    .line 198
    const-string v6, "AuthRequestFrom"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mEntryPoint:Ljava/lang/String;

    .line 199
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mEntryPoint : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mEntryPoint:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_e0
    const-string v6, "service_id"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13d

    .line 202
    const-string v6, "service_id"

    invoke-virtual {v2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mJoinServiceId:I

    .line 203
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mJoinServiceId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mJoinServiceId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mJoinServiceId:I

    invoke-static {p0, v6}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->isJoined(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_15b

    const-string v6, "2FA_JOIN"

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mAuthType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15b

    .line 205
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "service was already joined : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mJoinServiceId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0, v11}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->setResult(I)V

    .line 207
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->finish()V

    .line 295
    :cond_13c
    :goto_13c
    return-void

    .line 210
    :cond_13d
    const-string v6, "samsungAccount"

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mEntryPoint:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15b

    .line 211
    invoke-static {p0}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_15b

    .line 212
    const-string v6, "service was already joined before SA auth request "

    sget-object v7, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0, v12}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->setResult(I)V

    .line 214
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->finish()V

    goto :goto_13c

    .line 219
    :cond_15b
    iget v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mJoinServiceId:I

    invoke-static {v6}, Lcom/samsung/android/coreapps/common/util/PackageUtils;->isPreloadType(I)Z

    move-result v5

    .line 220
    .local v5, "preloadType":Z
    iget v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mJoinServiceId:I

    invoke-static {v6}, Lcom/samsung/android/coreapps/common/util/PackageUtils;->isSDKService(I)Z

    move-result v3

    .line 222
    .local v3, "isSDKService":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "preloadType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "isSDKService : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mJoinServiceId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    if-nez v5, :cond_1a5

    if-nez v3, :cond_1a5

    .line 225
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mAuthAllServices:Ljava/lang/Boolean;

    .line 227
    :cond_1a5
    const-string v6, "disclaimer_agreed"

    invoke-virtual {v2, v6, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mIsDisclaimerAgreed:Ljava/lang/Boolean;

    .line 228
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIsDisclaimerAgreed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mIsDisclaimerAgreed:Ljava/lang/Boolean;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v6, "com.samsung.android.coreapps.easysignup.ACTION_REQ_AUTH"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1db

    const-string v6, "com.samsung.android.coreapps.easysignup.ACTION_SDK_REQ_AUTH"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b0

    .line 233
    :cond_1db
    invoke-static {p0}, Lcom/samsung/android/coreapps/common/util/CommonUtils;->isOwner(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1f1

    .line 234
    const-string v6, "owner : false"

    sget-object v7, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const/4 v6, 0x7

    invoke-virtual {p0, v6}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->setResult(I)V

    .line 236
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->finish()V

    goto/16 :goto_13c

    .line 240
    :cond_1f1
    const-string v6, "agreeMarketing"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21b

    .line 241
    const-string v6, "agreeMarketing"

    invoke-virtual {v2, v6, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mIsAgreeMarketing:Z

    .line 242
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIsAgreeMarketing : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mIsAgreeMarketing:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_21b
    const-string v6, "TEST"

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mAuthType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22a

    .line 246
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->requestTestAuth()V

    goto/16 :goto_13c

    .line 247
    :cond_22a
    const-string v6, "2FA"

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mAuthType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_239

    .line 248
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->request2FAuth()V

    goto/16 :goto_13c

    .line 249
    :cond_239
    const-string v6, "2FA_JOIN"

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mAuthType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_248

    .line 250
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->requestJoin()V

    goto/16 :goto_13c

    .line 251
    :cond_248
    invoke-static {p0}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_282

    .line 252
    if-eqz v3, :cond_27d

    .line 253
    const-string v6, "tnc_agree_service_list"

    iget v7, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mJoinServiceId:I

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/ServiceListManager;->findService(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_26b

    .line 254
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mIsAuthRespHandler:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$IsAuthRespHandler;

    if-nez v6, :cond_266

    .line 255
    new-instance v6, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$IsAuthRespHandler;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$IsAuthRespHandler;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$1;)V

    iput-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mIsAuthRespHandler:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$IsAuthRespHandler;

    .line 256
    :cond_266
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->isAuth()V

    goto/16 :goto_13c

    .line 258
    :cond_26b
    sget v6, Lcom/samsung/android/coreapps/easysignup/EasySignUpBroadcaster;->SDK_REQ_AUTH_RESP_TNC:I

    iget v7, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mJoinServiceId:I

    invoke-static {v7}, Lcom/samsung/android/coreapps/common/util/PackageUtils;->getServiceAppInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v6, v7}, Lcom/samsung/android/coreapps/easysignup/EasySignUpBroadcaster;->sendBroadcastAuthResp(Landroid/content/Context;ILjava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->finish()V

    goto/16 :goto_13c

    .line 262
    :cond_27d
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->requestServiceUpdate()V

    goto/16 :goto_13c

    .line 264
    :cond_282
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mAuthType:Ljava/lang/String;

    if-eqz v6, :cond_28b

    .line 265
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->requestJoin()V

    goto/16 :goto_13c

    .line 267
    :cond_28b
    const-string v6, "samsungAccount"

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mEntryPoint:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2ab

    .line 269
    const-string v6, "Send intent to Greeting Activity"

    sget-object v7, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    .local v4, "it":Landroid/content/Intent;
    invoke-virtual {v4, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 273
    invoke-virtual {p0, v4, v13}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_13c

    .line 275
    .end local v4    # "it":Landroid/content/Intent;
    :cond_2ab
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->requestJoin()V

    goto/16 :goto_13c

    .line 278
    :cond_2b0
    const-string v6, "com.samsung.android.coreapps.easysignup.ACTION_LAUNCH_EASY_SIGNUP_BY_SETTING"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2de

    .line 279
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mImsi:Ljava/lang/String;

    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2cf

    .line 281
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    .restart local v4    # "it":Landroid/content/Intent;
    invoke-virtual {v4, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0, v4, v13}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_13c

    .line 286
    .end local v4    # "it":Landroid/content/Intent;
    :cond_2cf
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    .restart local v4    # "it":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->startActivity(Landroid/content/Intent;)V

    .line 288
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->finish()V

    goto/16 :goto_13c

    .line 290
    .end local v4    # "it":Landroid/content/Intent;
    :cond_2de
    const-string v6, "com.samsung.android.coreapps.easysignup.ACTION_ACCESS_SETTING"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13c

    .line 291
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 292
    .restart local v4    # "it":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->startActivity(Landroid/content/Intent;)V

    .line 293
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->finish()V

    goto/16 :goto_13c
.end method

.method private isAuth()V
    .registers 5

    .prologue
    .line 589
    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mIsAuthRespHandler:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$IsAuthRespHandler;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 590
    .local v1, "messenger":Landroid/os/Messenger;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.coreapps.easysignup.ACTION_IS_AUTH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 591
    .local v0, "intent":Landroid/content/Intent;
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 592
    const-string v2, "extra_cb_handler"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 593
    const-string v2, "token"

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 594
    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 595
    return-void
.end method

.method private request2FAuth()V
    .registers 5

    .prologue
    .line 552
    const-string v2, "request 2F Auth"

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 554
    .local v0, "fromIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 555
    .local v1, "it":Landroid/content/Intent;
    const-string v2, "accessToken"

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mImsi:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    const-string v2, "duid"

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mImsi:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    const-string v2, "extra_auth_type"

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mAuthType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    const-string v2, "auth_code"

    const-string v3, "auth_code"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 560
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->setResult(I)V

    .line 561
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->finish()V

    .line 562
    return-void
.end method

.method private requestJoin()V
    .registers 4

    .prologue
    .line 531
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 532
    .local v0, "it":Landroid/content/Intent;
    const-string v1, "com.samsung.android.coreapps.easysignup.ACTION_JOIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mAuthType:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 535
    const-string v1, "auth_type"

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mAuthType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    :cond_17
    const-string v1, "imsi"

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mImsi:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    const-string v1, "agreeMarketing"

    iget-boolean v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mIsAgreeMarketing:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 540
    const-string v1, "AuthRequestFrom"

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mEntryPoint:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    const-string v1, "accept_disclaimer"

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mAuthAllServices:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 542
    const-string v1, "disclaimer_agreed"

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mIsDisclaimerAgreed:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 543
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mJoinServiceId:I

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ServiceListManager;->getServiceList(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mJoinServiceList:Ljava/util/ArrayList;

    .line 544
    const-string v1, "service_id_list"

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mJoinServiceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 546
    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 548
    sget v1, Lcom/samsung/android/coreapps/easysignup/R$string;->in_progress:I

    invoke-direct {p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->showProgressBar(I)V

    .line 549
    return-void
.end method

.method private requestServiceUpdate()V
    .registers 4

    .prologue
    .line 565
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 566
    .local v0, "it":Landroid/content/Intent;
    const-string v1, "com.samsung.android.coreapps.easysignup.ACTION_JOIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    const-string v1, "accept_disclaimer"

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mAuthAllServices:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 568
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mJoinServiceId:I

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ServiceListManager;->getServiceList(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mJoinServiceList:Ljava/util/ArrayList;

    .line 569
    const-string v1, "service_id_list"

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mJoinServiceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 570
    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 571
    return-void
.end method

.method private requestTestAuth()V
    .registers 4

    .prologue
    .line 522
    const-string v1, "test auth start"

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 524
    .local v0, "it":Landroid/content/Intent;
    const-string v1, "com.samsung.android.coreapps.easysignup.ACTION_JOIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    const-string v1, "imsi"

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mImsi:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 527
    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 528
    return-void
.end method

.method private saveTNCAgreeServices()V
    .registers 4

    .prologue
    .line 576
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/PackageUtils;->getSDKServiceList()Ljava/util/ArrayList;

    move-result-object v0

    .line 577
    .local v0, "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v0, :cond_e

    .line 578
    const-string v1, "tnc_agree_service_list"

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mJoinServiceList:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ServiceListManager;->saveServiceList(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 586
    :goto_d
    return-void

    .line 580
    :cond_e
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mJoinServiceList:Ljava/util/ArrayList;

    if-eqz v1, :cond_17

    .line 582
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mJoinServiceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 584
    :cond_17
    const-string v1, "tnc_agree_service_list"

    invoke-static {v1, v0}, Lcom/samsung/android/coreapps/easysignup/util/ServiceListManager;->saveServiceList(Ljava/lang/String;Ljava/util/ArrayList;)Z

    goto :goto_d
.end method

.method private showProgressBar(I)V
    .registers 4
    .param p1, "stringResource"    # I

    .prologue
    .line 403
    const-string v0, "showProgressBar"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->dismissProgressBar()V

    .line 407
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 428
    :goto_10
    return-void

    .line 411
    :cond_11
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 412
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 414
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$2;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 426
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 427
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_10
.end method

.method private startAcceptDisclaimer(Landroid/content/Intent;)V
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v8, 0xc8

    .line 354
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->dismissProgressBar()V

    .line 356
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/DeviceUtils;->isScreenLocked()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/DeviceUtils;->isPhoneRinging()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 357
    const-string v4, "phone calling - exiting..."

    sget-object v5, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v8, v4, v5}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 384
    :goto_1d
    return-void

    .line 362
    :cond_1e
    const-string v4, "start AcceptDisclaimerActivity"

    sget-object v5, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 366
    .local v2, "it":Landroid/content/Intent;
    const/high16 v4, 0x24000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 367
    const-string v4, "extra_cb_handler"

    const-string v5, "extra_cb_handler"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 369
    const-string v4, "auth_type"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "authType":Ljava/lang/String;
    if-eqz v0, :cond_49

    .line 371
    const-string v4, "auth_type"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    :cond_49
    const-string v4, "AuthRequestFrom"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "entryPoint":Ljava/lang/String;
    const-string v4, "AuthRequestFrom"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    const-string v4, "service_id_list"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 378
    .local v3, "serviceIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v4, "service_id_list"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 379
    const-string v4, "token"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 383
    invoke-virtual {p0, v2, v8}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1d
.end method

.method private startMtAuthActivity(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v3, 0x12c

    .line 387
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/DeviceUtils;->isScreenLocked()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/DeviceUtils;->isPhoneRinging()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 388
    const-string v1, "phone calling - exiting..."

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v3, v1, v2}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 400
    :goto_1a
    return-void

    .line 392
    :cond_1b
    const-string v1, "start SmsAuthenticatorActivity"

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 395
    .local v0, "it":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 396
    const-string v1, "extra_cb_handler"

    const-string v2, "extra_cb_handler"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 397
    const-string v1, "imsi"

    const-string v2, "imsi"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    const-string v1, "extra_auth_methods"

    const-string v2, "extra_auth_methods"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1a
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0xc8

    const/16 v3, 0x64

    const/4 v2, -0x1

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    if-eq p1, v3, :cond_2f

    if-eq p1, v4, :cond_2f

    const/16 v0, 0x12c

    if-ne p1, v0, :cond_3d

    .line 303
    :cond_2f
    if-eqz p2, :cond_34

    const/4 v0, 0x7

    if-ne p2, v0, :cond_3d

    .line 304
    :cond_34
    invoke-virtual {p0, p2}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->setResult(I)V

    .line 305
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->dismissProgressBar()V

    .line 306
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->finish()V

    .line 310
    :cond_3d
    if-ne p1, v3, :cond_4b

    .line 311
    if-ne p2, v2, :cond_4b

    .line 312
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->requestSetUrl(Landroid/content/Context;)V

    .line 313
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->requestJoin()V

    .line 317
    :cond_4b
    if-ne p1, v4, :cond_5e

    .line 318
    if-ne p2, v2, :cond_5e

    .line 319
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 320
    sget v0, Lcom/samsung/android/coreapps/easysignup/R$string;->validating_phone_number:I

    invoke-direct {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->showProgressBar(I)V

    .line 324
    :cond_5e
    const/16 v0, 0x190

    if-ne p1, v0, :cond_68

    .line 325
    invoke-virtual {p0, p2}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->setResult(I)V

    .line 326
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->finish()V

    .line 329
    :cond_68
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 333
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 335
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->setResult(I)V

    .line 336
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->finish()V

    .line 337
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 166
    const-string v0, "onCreate"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->initialize()V

    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/EasySignUp;->init(Landroid/app/Application;)V

    .line 170
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 341
    const-string v0, "onDestroy"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->dismissProgressBar()V

    .line 344
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->stopService(Landroid/content/Intent;)Z

    .line 345
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->stopService(Landroid/content/Intent;)Z

    .line 347
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    if-eqz v0, :cond_29

    .line 348
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mLocalEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 350
    :cond_29
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 351
    return-void
.end method

.method protected showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->dismissProgressBar()V

    .line 440
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_4b

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_4b

    .line 441
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/samsung/android/coreapps/easysignup/R$string;->retry:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$4;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/samsung/android/coreapps/easysignup/R$string;->cancel:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$3;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 461
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$5;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 469
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 470
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 472
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_4b
    return-void
.end method

.method public showAuthResultPopup()V
    .registers 8

    .prologue
    .line 476
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->dismissProgressBar()V

    .line 478
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_6d

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_6d

    .line 479
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mImsi:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 480
    .local v3, "msisdn":Ljava/lang/String;
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 481
    .local v2, "formattedPhoneNumber":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/samsung/android/coreapps/easysignup/R$string;->the_verified_number_is:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "bodyMsg":Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lcom/samsung/android/coreapps/easysignup/R$string;->esu_information:I

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/samsung/android/coreapps/easysignup/R$string;->ok:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$6;

    invoke-direct {v6, p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$6;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 497
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v4, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$7;

    invoke-direct {v4, p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$7;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 508
    new-instance v4, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$8;

    invoke-direct {v4, p0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$8;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 516
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 517
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 519
    .end local v0    # "bodyMsg":Ljava/lang/String;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "formattedPhoneNumber":Ljava/lang/String;
    .end local v3    # "msisdn":Ljava/lang/String;
    :cond_6d
    return-void
.end method
