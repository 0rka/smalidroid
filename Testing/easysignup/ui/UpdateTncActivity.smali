.class public Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;
.super Lcom/samsung/android/coreapps/common/ui/BaseActivity;
.source "UpdateTncActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$HttpRespHandler;
    }
.end annotation


# static fields
.field private static final MCC_KOR:Ljava/lang/String; = "450"

.field private static final TAG:Ljava/lang/String; = "UpdateTncActivity"

.field private static final TOKEN_CREATE_TNC_INFO:I = 0x20

.field private static final mDefaultURL:Ljava/lang/String; = "http://static.bada.com/contents/legal/234/default/"


# instance fields
.field private checkDisclaimer:Landroid/widget/CheckBox;

.field private checkPP:Landroid/widget/CheckBox;

.field httpRespHandler:Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$HttpRespHandler;

.field private isSeparatedTncPP:Z

.field mAlertDialog:Landroid/app/AlertDialog;

.field private mButtonAgree:Landroid/widget/TextView;

.field private mButtonDecline:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mImsi:Ljava/lang/String;

.field private mMessenger:Landroid/os/Messenger;

.field mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;-><init>()V

    .line 52
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mContext:Landroid/content/Context;

    .line 62
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mMessenger:Landroid/os/Messenger;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->isSeparatedTncPP:Z

    .line 186
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$HttpRespHandler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$HttpRespHandler;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$1;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->httpRespHandler:Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$HttpRespHandler;

    .line 188
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->notifyAcceptDisclaimerResult(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->showProgressBar()V

    return-void
.end method

.method private checkIsReady()V
    .registers 3

    .prologue
    .line 278
    const/4 v0, 0x0

    .line 280
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->checkDisclaimer:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 281
    iget-boolean v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->isSeparatedTncPP:Z

    if-eqz v1, :cond_1c

    .line 282
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->checkPP:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 283
    const/4 v0, 0x1

    .line 290
    :cond_16
    :goto_16
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mButtonAgree:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 291
    return-void

    .line 286
    :cond_1c
    const/4 v0, 0x1

    goto :goto_16
.end method

.method private dismissProgressBar()V
    .registers 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    .line 371
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 374
    :cond_c
    return-void
.end method

.method private notifyAcceptDisclaimerResult(Z)V
    .registers 8
    .param p1, "result"    # Z

    .prologue
    const/4 v4, 0x1

    .line 295
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 296
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x32

    iput v2, v1, Landroid/os/Message;->what:I

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyAcceptDisclaimerResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UpdateTncActivity"

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    if-ne p1, v4, :cond_57

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mI = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mImsi:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/coreapps/common/util/CommonLog;->debugStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UpdateTncActivity"

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mImsi:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->setTNCsettingTime(Ljava/lang/String;J)V

    .line 304
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 310
    :goto_4d
    :try_start_4d
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_56

    .line 311
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_56} :catch_5a

    .line 316
    :cond_56
    :goto_56
    return-void

    .line 306
    :cond_57
    iput v4, v1, Landroid/os/Message;->arg1:I

    goto :goto_4d

    .line 313
    :catch_5a
    move-exception v0

    .line 314
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_56
.end method

.method private showProgressBar()V
    .registers 4

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_35

    .line 355
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 356
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/coreapps/easysignup/R$string;->in_progress:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 358
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$4;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 364
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 365
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 367
    :cond_35
    return-void
.end method


# virtual methods
.method public cancelAction()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 256
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->stopService(Landroid/content/Intent;)Z

    .line 259
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 260
    .local v1, "i2":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->stopService(Landroid/content/Intent;)Z

    .line 262
    const-string v4, "is_tnc_updated"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_53

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getTNCsettingTime(Ljava/lang/String;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide v6, 0x95586c00L

    cmp-long v4, v4, v6

    if-lez v4, :cond_53

    .line 264
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v2, "imsi_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 268
    .local v3, "it":Landroid/content/Intent;
    const-string v4, "imsi_list"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 269
    invoke-virtual {p0, v3}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 273
    .end local v2    # "imsi_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "it":Landroid/content/Intent;
    :cond_53
    invoke-virtual {p0, v8}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->setResult(I)V

    .line 274
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->finish()V

    .line 275
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 250
    invoke-super {p0}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;->onBackPressed()V

    .line 252
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->cancelAction()V

    .line 253
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->checkIsReady()V

    .line 213
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 219
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    .line 221
    .local v7, "id":I
    sget v3, Lcom/samsung/android/coreapps/easysignup/R$id;->button_left:I

    if-ne v7, v3, :cond_e

    .line 222
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->cancelAction()V

    .line 238
    :cond_d
    :goto_d
    return-void

    .line 224
    :cond_e
    sget v3, Lcom/samsung/android/coreapps/easysignup/R$id;->button_right:I

    if-ne v7, v3, :cond_38

    .line 225
    const-string v0, "marketing_agreement"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    .line 226
    .local v2, "checkMarket":Z
    const/16 v0, 0x20

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->httpRespHandler:Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$HttpRespHandler;

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mImsi:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mImsi:Ljava/lang/String;

    invoke-static {v5}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getMCC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$1;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;)V

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/AcceptDisclaimerManager;->createTNCInfoForEasySignup(ILandroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 232
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->showProgressBar()V

    goto :goto_d

    .line 233
    .end local v2    # "checkMarket":Z
    :cond_38
    sget v3, Lcom/samsung/android/coreapps/easysignup/R$id;->update_tnc_accept_terms:I

    if-ne v7, v3, :cond_4c

    .line 234
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->checkDisclaimer:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->checkDisclaimer:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_4a

    :goto_46
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_d

    :cond_4a
    move v0, v1

    goto :goto_46

    .line 235
    :cond_4c
    sget v3, Lcom/samsung/android/coreapps/easysignup/R$id;->update_tnc_layout_pp:I

    if-ne v7, v3, :cond_d

    .line 236
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->checkPP:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->checkPP:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_5e

    :goto_5a
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_d

    :cond_5e
    move v0, v1

    goto :goto_5a
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 243
    invoke-super {p0, p1}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 244
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 245
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 246
    :cond_11
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 16
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 75
    invoke-super {p0, p1}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const-string v5, "onCreate"

    const-string v6, "UpdateTncActivity"

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    if-eqz v5, :cond_23

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 83
    :cond_23
    iput-object p0, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mContext:Landroid/content/Context;

    .line 85
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mImsi:Ljava/lang/String;

    .line 86
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mImsi:Ljava/lang/String;

    invoke-static {v5}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getMCC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "450"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->isSeparatedTncPP:Z

    .line 88
    sget v5, Lcom/samsung/android/coreapps/easysignup/R$layout;->layout_update_tnc:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->setContentView(I)V

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 91
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_4e

    .line 92
    const-string v5, "extra_cb_handler"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/Messenger;

    iput-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mMessenger:Landroid/os/Messenger;

    .line 96
    :cond_4e
    sget v5, Lcom/samsung/android/coreapps/easysignup/R$id;->update_tnc_check_accept_terms:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->checkDisclaimer:Landroid/widget/CheckBox;

    .line 97
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->checkDisclaimer:Landroid/widget/CheckBox;

    invoke-virtual {v5, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 98
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->checkDisclaimer:Landroid/widget/CheckBox;

    iget-boolean v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->isSeparatedTncPP:Z

    if-eqz v5, :cond_22f

    sget v5, Lcom/samsung/android/coreapps/easysignup/R$string;->agree_tnc:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v7, v11, [Ljava/lang/Object;

    const-string v8, ""

    aput-object v8, v7, v9

    const-string v8, ""

    aput-object v8, v7, v10

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_77
    invoke-virtual {v6, v5}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 104
    sget v5, Lcom/samsung/android/coreapps/easysignup/R$id;->update_tnc_check_accept_pp:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->checkPP:Landroid/widget/CheckBox;

    .line 105
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->checkPP:Landroid/widget/CheckBox;

    invoke-virtual {v5, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 106
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->checkPP:Landroid/widget/CheckBox;

    sget v6, Lcom/samsung/android/coreapps/easysignup/R$string;->agree_pp:I

    invoke-virtual {p0, v6}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    const-string v8, ""

    aput-object v8, v7, v9

    const-string v8, ""

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 109
    sget v5, Lcom/samsung/android/coreapps/easysignup/R$id;->button_right:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mButtonAgree:Landroid/widget/TextView;

    .line 110
    sget v5, Lcom/samsung/android/coreapps/easysignup/R$id;->button_left:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mButtonDecline:Landroid/widget/TextView;

    .line 112
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mButtonAgree:Landroid/widget/TextView;

    sget v6, Lcom/samsung/android/coreapps/easysignup/R$string;->agree:I

    invoke-virtual {p0, v6}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mButtonDecline:Landroid/widget/TextView;

    sget v6, Lcom/samsung/android/coreapps/easysignup/R$string;->decline:I

    invoke-virtual {p0, v6}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mButtonAgree:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mButtonAgree:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/samsung/android/coreapps/easysignup/R$string;->button:I

    invoke-virtual {p0, v7}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mButtonDecline:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mButtonDecline:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/samsung/android/coreapps/easysignup/R$string;->button:I

    invoke-virtual {p0, v7}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mButtonAgree:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mButtonDecline:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->checkIsReady()V

    .line 132
    const-string v5, "tnc_url"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "mTNCUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_144

    .line 134
    const-string v2, "http://static.bada.com/contents/legal/234/default/general_esu.html"

    .line 136
    :cond_144
    const-string v5, "pp_url"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "mPPUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_153

    .line 138
    const-string v1, "http://static.bada.com/contents/legal/234/default/pp_esu.html"

    .line 140
    :cond_153
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mTNCUrl : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mPPUrl : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UpdateTncActivity"

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sget v5, Lcom/samsung/android/coreapps/easysignup/R$id;->update_tnc_text_accept_terms:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 143
    .local v3, "textDisclaimer":Landroid/widget/TextView;
    iget-boolean v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->isSeparatedTncPP:Z

    if-eqz v5, :cond_24d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/samsung/android/coreapps/easysignup/R$string;->agree_tnc:I

    invoke-virtual {p0, v6}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v11, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<a href=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string v7, "</a>"

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_1bf
    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 155
    sget v5, Lcom/samsung/android/coreapps/easysignup/R$id;->update_tnc_text_accept_pp:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 156
    .local v4, "textPP":Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/samsung/android/coreapps/easysignup/R$string;->agree_pp:I

    invoke-virtual {p0, v6}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v11, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<a href=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string v7, "</a>"

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 163
    iget-boolean v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->isSeparatedTncPP:Z

    if-eqz v5, :cond_22e

    .line 164
    sget v5, Lcom/samsung/android/coreapps/easysignup/R$id;->update_tnc_layout_pp:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 166
    :cond_22e
    return-void

    .line 98
    .end local v1    # "mPPUrl":Ljava/lang/String;
    .end local v2    # "mTNCUrl":Ljava/lang/String;
    .end local v3    # "textDisclaimer":Landroid/widget/TextView;
    .end local v4    # "textPP":Landroid/widget/TextView;
    :cond_22f
    sget v5, Lcom/samsung/android/coreapps/easysignup/R$string;->agree_tnc_and_pp:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v7, v13, [Ljava/lang/Object;

    const-string v8, ""

    aput-object v8, v7, v9

    const-string v8, ""

    aput-object v8, v7, v10

    const-string v8, ""

    aput-object v8, v7, v11

    const-string v8, ""

    aput-object v8, v7, v12

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_77

    .line 143
    .restart local v1    # "mPPUrl":Ljava/lang/String;
    .restart local v2    # "mTNCUrl":Ljava/lang/String;
    .restart local v3    # "textDisclaimer":Landroid/widget/TextView;
    :cond_24d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/samsung/android/coreapps/easysignup/R$string;->agree_tnc_and_pp:I

    invoke-virtual {p0, v6}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v13, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<a href=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string v7, "</a>"

    aput-object v7, v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<a href=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    const-string v7, "</a>"

    aput-object v7, v6, v12

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1bf
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 181
    invoke-super {p0}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;->onDestroy()V

    .line 183
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->dismissProgressBar()V

    .line 184
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 170
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 172
    .local v0, "id":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_c

    .line 173
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->onBackPressed()V

    .line 176
    :cond_c
    invoke-super {p0, p1}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method protected showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_43

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_43

    .line 320
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->dismissProgressBar()V

    .line 322
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/samsung/android/coreapps/easysignup/R$string;->retry:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$3;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/samsung/android/coreapps/easysignup/R$string;->cancel:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$2;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 348
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 349
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 351
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_43
    return-void
.end method
