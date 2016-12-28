.class public Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;
.super Landroid/app/Activity;
.source "SampleActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$LocalReceiver;,
        Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$OkBtnHandler;
    }
.end annotation


# static fields
.field private static final TOKEN_AUTH:I = 0xa


# instance fields
.field private REQUEST_CODE_MT_AUTH_ACTIVITY:I

.field private final TAG:Ljava/lang/String;

.field private final authHandler:Landroid/os/Handler;

.field private localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private localReceiver:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$LocalReceiver;

.field mAlertDialog:Landroid/app/AlertDialog;

.field mImsi:Ljava/lang/String;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private msisdn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const-class v0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->TAG:Ljava/lang/String;

    .line 34
    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->REQUEST_CODE_MT_AUTH_ACTIVITY:I

    .line 43
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->msisdn:Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$1;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->authHandler:Landroid/os/Handler;

    .line 269
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$LocalReceiver;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$LocalReceiver;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$1;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->localReceiver:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$LocalReceiver;

    .line 270
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->authHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;Landroid/os/Handler;I)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->requestAuth(Landroid/os/Handler;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->msisdn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->startMtAuthActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private dismissProgressBar()V
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    .line 206
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 209
    :cond_c
    return-void
.end method

.method private getIMSIfromSIM()Ljava/lang/String;
    .registers 6

    .prologue
    .line 312
    const-string v0, ""

    .line 314
    .local v0, "imsi":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Config.isMultiSimDevice() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/DeviceUtils;->isMultiSimDevice()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/DeviceUtils;->isMultiSimDevice()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 317
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/sdl/MultiSimManagerRef;->isNoSIM()Z

    move-result v3

    if-nez v3, :cond_38

    .line 318
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/samsung/android/coreapps/common/util/sdl/MultiSimManagerRef;->getDefaultSubscriptionId(I)I

    move-result v1

    .line 319
    .local v1, "subId":I
    invoke-static {v1}, Lcom/samsung/android/coreapps/common/util/sdl/MultiSimManagerRef;->getSlotId(I)I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/coreapps/common/util/sdl/MultiSimManagerRef;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 334
    .end local v1    # "subId":I
    :goto_37
    return-object v0

    .line 321
    :cond_38
    const-string v3, "The device has no SIM"

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    .line 325
    :cond_40
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 327
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_54

    .line 328
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    goto :goto_37

    .line 330
    :cond_54
    const-string v3, "SIM state is not ready"

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37
.end method

.method private requestAuth(Landroid/os/Handler;I)V
    .registers 6
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "token"    # I

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    .local v0, "it":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->mImsi:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 153
    const-string v1, "imsi"

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->mImsi:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    :cond_12
    const-string v1, "extra_cb_handler"

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 157
    const-string v1, "extra_token"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 161
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->showProgressBar()V

    .line 162
    return-void
.end method

.method private showProgressBar()V
    .registers 3

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->dismissProgressBar()V

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_36

    .line 180
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 182
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    sget v1, Lcom/samsung/android/coreapps/easysignuplib/R$string;->in_progress:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 184
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$3;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 199
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 200
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 202
    :cond_36
    return-void
.end method

.method private startMtAuthActivity(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 166
    const-string v1, "start SmsAuthenticatorActivity"

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    .local v0, "it":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 171
    const-string v1, "extra_cb_handler"

    const-string v2, "extra_cb_handler"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 172
    const-string v1, "imsi"

    const-string v2, "imsi"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    iget v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->REQUEST_CODE_MT_AUTH_ACTIVITY:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 174
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 295
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

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->REQUEST_CODE_MT_AUTH_ACTIVITY:I

    if-ne p1, v0, :cond_31

    .line 298
    if-eqz p2, :cond_2b

    const/4 v0, 0x7

    if-ne p2, v0, :cond_31

    .line 299
    :cond_2b
    invoke-virtual {p0, p2}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->setResult(I)V

    .line 300
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->finish()V

    .line 303
    :cond_31
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    sget v1, Lcom/samsung/android/coreapps/easysignuplib/R$layout;->activity_authtest:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->setContentView(I)V

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "imsi"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->mImsi:Ljava/lang/String;

    .line 105
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->mImsi:Ljava/lang/String;

    if-nez v1, :cond_1e

    .line 106
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->getIMSIfromSIM()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->mImsi:Ljava/lang/String;

    .line 116
    :cond_1e
    sget v1, Lcom/samsung/android/coreapps/easysignuplib/R$id;->reqAuthBtn:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 121
    .local v0, "reqAuthBtn":Landroid/widget/Button;
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$2;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 133
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->localReceiver:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$LocalReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.samsung.android.coreapps.easysignup.ACTION_START_MT_AUTH_ACTIVITY"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 134
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 140
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->dismissProgressBar()V

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .local v0, "it":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->stopService(Landroid/content/Intent;)Z

    .line 145
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->localReceiver:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$LocalReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 147
    return-void
.end method

.method protected showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$OkBtnHandler;)V
    .registers 9
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "btnMessage"    # Ljava/lang/CharSequence;
    .param p4, "okBtnHandler"    # Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$OkBtnHandler;

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->dismissProgressBar()V

    .line 214
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3d

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_3d

    .line 215
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$5;

    invoke-direct {v2, p0, p4}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$5;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$OkBtnHandler;)V

    invoke-virtual {v1, p3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/samsung/android/coreapps/easysignuplib/R$string;->cancel:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$4;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 235
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 236
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 238
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_3d
    return-void
.end method

.method public showAuthResultPopup()V
    .registers 7

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->dismissProgressBar()V

    .line 244
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_59

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v3, :cond_59

    .line 245
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->msisdn:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "formattedPhoneNumber":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/samsung/android/coreapps/easysignuplib/R$string;->the_verified_number_is:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "bodyMsg":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/samsung/android/coreapps/easysignuplib/R$string;->esu_information:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/samsung/android/coreapps/easysignuplib/R$string;->ok:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$6;

    invoke-direct {v5, p0}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$6;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 260
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 261
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 265
    .end local v0    # "bodyMsg":Ljava/lang/String;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "formattedPhoneNumber":Ljava/lang/String;
    :cond_59
    return-void
.end method
