.class public Lcom/samsung/android/coreapps/easysignup/authenticator/AuthenticatorActivity;
.super Landroid/accounts/AccountAuthenticatorActivity;
.source "AuthenticatorActivity.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/accounts/AccountAuthenticatorActivity;-><init>()V

    .line 13
    const-class v0, Lcom/samsung/android/coreapps/easysignup/authenticator/AuthenticatorActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/authenticator/AuthenticatorActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private doCancel()V
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/authenticator/AuthenticatorActivity;->setResult(I)V

    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/authenticator/AuthenticatorActivity;->finish()V

    .line 87
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/accounts/AccountAuthenticatorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const-string v2, "onCreate"

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/authenticator/AuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.coreapps.easysignup.ACTION_REQ_AUTH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "AuthRequestFrom"

    const-string v3, "setting"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    :try_start_18
    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/authenticator/AuthenticatorActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_18 .. :try_end_1b} :catch_1f

    .line 32
    :goto_1b
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/authenticator/AuthenticatorActivity;->finish()V

    .line 33
    return-void

    .line 27
    :catch_1f
    move-exception v0

    .line 28
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "ActivityNotFoundException"

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/authenticator/AuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method
