.class Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$1;
.super Ljava/lang/Object;
.source "SettingMarketingInfo.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->onBindView(Landroid/view/View;)V
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
    .line 59
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$1;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 10
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "###onCheckedChanged() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$1;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

    # getter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mNeedIgnoreChangedListener:Z
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->access$000(Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 64
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$1;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mNeedIgnoreChangedListener:Z
    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->access$002(Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;Z)Z

    .line 65
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$1;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

    # invokes: Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->showProgressBar()V
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->access$100(Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$1;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

    # setter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mIsUserAgreedNow:Z
    invoke-static {v0, p2}, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->access$202(Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;Z)Z

    .line 67
    const/16 v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$1;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

    iget-object v1, v1, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->httpRespHandler:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$HttpRespHandler;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$1;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

    # getter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mIsUserAgreedNow:Z
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->access$200(Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;)Z

    move-result v2

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getMCC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$1$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$1$1;-><init>(Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$1;)V

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/AcceptDisclaimerManager;->createTNCInfoForEasySignup(ILandroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 77
    :goto_54
    return-void

    .line 75
    :cond_55
    const-string v0, "###onCheckedChanged() temporary blocked"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54
.end method
