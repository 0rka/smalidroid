.class public Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;
.super Landroid/app/Activity;
.source "SelfUpgradeCheckActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TOKEN_STUB_CHECK:I = 0x1


# instance fields
.field private mCanceled:Z

.field private mErrorListener:Lcom/android/volley/Response$ErrorListener;

.field private mExitDialog:Landroid/app/AlertDialog;

.field public mHandler:Landroid/os/Handler;

.field private mProgressDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->TAG:Ljava/lang/String;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->mCanceled:Z

    .line 175
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity$7;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->mHandler:Landroid/os/Handler;

    .line 206
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity$8;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->mCanceled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->mCanceled:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->showExitPopup()V

    return-void
.end method

.method private cancelAll()V
    .registers 5

    .prologue
    .line 227
    invoke-static {}, Lcom/samsung/android/coreapps/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    const-wide/32 v2, 0xf4b2a

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 228
    return-void
.end method

.method private showExitPopup()V
    .registers 4

    .prologue
    .line 128
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->mProgressDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->mProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 129
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->mProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 132
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 133
    const-string v1, "This activity was already finished...."

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :goto_1e
    return-void

    .line 137
    :cond_1f
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 138
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/samsung/android/coreapps/easysignup/R$string;->update_check:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 139
    sget v1, Lcom/samsung/android/coreapps/easysignup/R$string;->already_installed:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 140
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 141
    const v1, 0x104000a

    new-instance v2, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity$4;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 150
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity$5;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 162
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity$6;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 171
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->mExitDialog:Landroid/app/AlertDialog;

    .line 172
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->mExitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_1e
.end method

.method private showProgressDialog()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 77
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 78
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v4, Lcom/samsung/android/coreapps/easysignup/R$string;->update_check:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 80
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 81
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v4, Lcom/samsung/android/coreapps/easysignup/R$layout;->dialog_spin_progress:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 83
    .local v3, "view":Landroid/view/View;
    sget v4, Lcom/samsung/android/coreapps/easysignup/R$id;->dialog_spin_progress:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 84
    .local v2, "progressBar":Landroid/widget/ProgressBar;
    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 85
    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 86
    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 88
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 89
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 90
    const/high16 v4, 0x1040000

    new-instance v5, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity$1;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 100
    new-instance v4, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity$2;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 113
    new-instance v4, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity$3;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 123
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->mProgressDialog:Landroid/app/AlertDialog;

    .line 124
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->mProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 125
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->requestWindowFeature(I)Z

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/ConnectivityUtils;->isMobileNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/ConnectivityUtils;->isWifiAvailable()Z

    move-result v0

    if-nez v0, :cond_28

    .line 48
    sget v0, Lcom/samsung/android/coreapps/easysignup/R$string;->esu_check_your_connection:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 49
    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->setResult(I)V

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->finish()V

    .line 59
    :goto_27
    return-void

    .line 54
    :cond_28
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->showProgressDialog()V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/SelfUpgradeUtils;->requestSelfUpgrade(Landroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    .line 58
    const-string v0, "SamsungAppsApiManager.stupUpdateCheck"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 64
    const-string v0, "SelfUpgradeCheckActivity onDestroy"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->mProgressDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->mProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 66
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->mProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 68
    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->mExitDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->mExitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 69
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->mExitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 72
    :cond_2c
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->cancelAll()V

    .line 74
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 221
    if-eqz p1, :cond_5

    .line 224
    :cond_5
    return-void
.end method
