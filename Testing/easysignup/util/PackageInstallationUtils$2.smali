.class final Lcom/samsung/android/coreapps/easysignup/util/PackageInstallationUtils$2;
.super Landroid/os/Handler;
.source "PackageInstallationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/util/PackageInstallationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 98
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_e

    .line 99
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/util/PackageInstallationUtils;->ONCIRCLE_APK_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/util/PackageInstallationUtils;->installApkFromAsset(Ljava/lang/String;)V

    .line 100
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/util/PackageInstallationUtils;->ONCIRCLE_APK_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/util/PackageInstallationUtils;->installApkFromAsset(Ljava/lang/String;)V

    .line 102
    :cond_e
    return-void
.end method
