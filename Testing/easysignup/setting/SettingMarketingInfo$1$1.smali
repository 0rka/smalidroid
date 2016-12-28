.class Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$1$1;
.super Ljava/lang/Object;
.source "SettingMarketingInfo.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$1;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$1;)V
    .registers 2

    .prologue
    .line 67
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$1$1;->this$1:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v1, 0x0

    .line 70
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$1$1;->this$1:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$1;

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$1;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

    # getter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->access$300(Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;)Landroid/widget/CheckBox;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$1$1;->this$1:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$1;

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$1;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

    # getter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mIsUserAgreedNow:Z
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->access$200(Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;)Z

    move-result v0

    if-nez v0, :cond_29

    const/4 v0, 0x1

    :goto_14
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 71
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$1$1;->this$1:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$1;

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$1;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/samsung/android/coreapps/easysignup/R$string;->esu_check_your_network_status:I

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 72
    return-void

    :cond_29
    move v0, v1

    .line 70
    goto :goto_14
.end method
