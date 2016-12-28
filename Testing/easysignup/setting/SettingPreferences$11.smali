.class Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$11;
.super Landroid/os/CountDownTimer;
.source "SettingPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->showProgressBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;JJ)V
    .registers 6
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 867
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$11;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .prologue
    .line 874
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$11;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # getter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$1500(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 875
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$11;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # getter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$1500(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 876
    :cond_12
    return-void
.end method

.method public onTick(J)V
    .registers 3
    .param p1, "l"    # J

    .prologue
    .line 870
    return-void
.end method
