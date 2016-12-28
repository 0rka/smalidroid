.class public Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;
.super Landroid/app/Activity;
.source "ContactSyncAgreementActivity.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAlertDialog:Landroid/app/Dialog;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReciever:Landroid/content/BroadcastReceiver;

.field private mServiceOn:Z

.field private mSyncNow:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const-class v0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->TAG:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->mReciever:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->mSyncNow:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->mReciever:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;
    .param p1, "x1"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->mReciever:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->dismissProgressBar()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;I)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->showProgressBar(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->requestContactSync(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->mServiceOn:Z

    return v0
.end method

.method private alert(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 68
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/samsung/android/coreapps/easysignup/R$string;->esu_information:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/samsung/android/coreapps/easysignup/R$string;->ok:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 114
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    if-eqz p2, :cond_27

    .line 115
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 117
    :cond_27
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$2;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 123
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->mAlertDialog:Landroid/app/Dialog;

    .line 124
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 125
    return-void
.end method

.method private dismissProgressBar()V
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    .line 165
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 168
    :cond_c
    return-void
.end method

.method private requestContactSync(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    const-string v3, "requestContactSync"

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v0, "com.samsung.android.coreapps.contact.ACTION_CONTACT_CHANGED_ME_POFILE"

    .line 131
    .local v0, "ACTION_CONTACT_CHANGED_ME_PROFILE":Ljava/lang/String;
    const-string v1, "extra_contact_sync"

    .line 133
    .local v1, "EXTRA_CONTACT_SYNC":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 134
    .local v2, "service":Landroid/content/Intent;
    const-string v3, "com.samsung.android.coreapps.contact.transaction.ContactService"

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v3, "com.samsung.android.coreapps.contact.ACTION_CONTACT_CHANGED_ME_POFILE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v3, "extra_contact_sync"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 137
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 138
    return-void
.end method

.method private showProgressBar(I)V
    .registers 4
    .param p1, "stringResource"    # I

    .prologue
    .line 141
    const-string v0, "showProgressBar"

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->dismissProgressBar()V

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 161
    :goto_10
    return-void

    .line 149
    :cond_11
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 150
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 152
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$3;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 159
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 160
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_10
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->setResult(I)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->dismissProgressBar()V

    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->finish()V

    .line 65
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {p0}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->getContactSyncAgreement(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 37
    const-string v1, "contact sync is true"

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->setResult(I)V

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->finish()V

    .line 42
    :cond_18
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 43
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_sync_now"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->mSyncNow:Z

    .line 44
    const-string v1, "extra_service_on"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->mServiceOn:Z

    .line 46
    sget v1, Lcom/samsung/android/coreapps/easysignup/R$string;->contact_sync_agreement_desc:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/samsung/android/coreapps/easysignup/R$string;->app_name:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/samsung/android/coreapps/easysignup/R$string;->disclaimer:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->alert(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->mReciever:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_9

    .line 52
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->mReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 53
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 54
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->dismissProgressBar()V

    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 56
    return-void
.end method
