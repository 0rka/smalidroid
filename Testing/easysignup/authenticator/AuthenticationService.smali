.class public Lcom/samsung/android/coreapps/easysignup/authenticator/AuthenticationService;
.super Landroid/app/Service;
.source "AuthenticationService.java"


# instance fields
.field private authenticator:Lcom/samsung/android/coreapps/easysignup/authenticator/Authenticator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/authenticator/AuthenticationService;->authenticator:Lcom/samsung/android/coreapps/easysignup/authenticator/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/authenticator/Authenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 14
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 15
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/authenticator/Authenticator;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/authenticator/Authenticator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/authenticator/AuthenticationService;->authenticator:Lcom/samsung/android/coreapps/easysignup/authenticator/Authenticator;

    .line 16
    return-void
.end method
