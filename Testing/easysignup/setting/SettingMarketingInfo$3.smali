.class Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$3;
.super Ljava/lang/Object;
.source "SettingMarketingInfo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->showProgressBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;)V
    .registers 2

    .prologue
    .line 162
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$3;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 165
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    const-string v1, "EsuRequestManager"

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 166
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$3;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$3;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

    # getter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mIsUserAgreedNow:Z
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->access$200(Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;)Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    :goto_14
    # setter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mIsUserAgreedNow:Z
    invoke-static {v1, v0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->access$202(Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;Z)Z

    .line 167
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$3;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->updateGuiOnly()V

    .line 168
    return-void

    .line 166
    :cond_1d
    const/4 v0, 0x0

    goto :goto_14
.end method
