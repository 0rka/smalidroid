.class Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$HttpRespHandler;
.super Landroid/os/Handler;
.source "SettingMarketingInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpRespHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;


# direct methods
.method private constructor <init>(Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;)V
    .registers 2

    .prologue
    .line 146
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$HttpRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;
    .param p2, "x1"    # Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$1;

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$HttpRespHandler;-><init>(Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 149
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_3e

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage mIsUserAgreedNow : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$HttpRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

    # getter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mIsUserAgreedNow:Z
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->access$200(Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v0, "marketing_agreement"

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$HttpRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

    # getter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mIsUserAgreedNow:Z
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->access$200(Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 152
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$HttpRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

    # invokes: Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->dismissProgressBar()V
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->access$700(Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;)V

    .line 153
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$HttpRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mNeedIgnoreChangedListener:Z
    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->access$002(Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;Z)Z

    .line 155
    :cond_3e
    return-void
.end method
