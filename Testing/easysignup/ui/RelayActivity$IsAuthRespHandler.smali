.class Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$IsAuthRespHandler;
.super Landroid/os/Handler;
.source "RelayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IsAuthRespHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;)V
    .registers 2

    .prologue
    .line 137
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$IsAuthRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;
    .param p2, "x1"    # Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$1;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$IsAuthRespHandler;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 140
    const-string v3, "IsAuthRespHandler called"

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$IsAuthRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    invoke-virtual {v3}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 142
    .local v1, "context":Landroid/content/Context;
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_6c

    .line 143
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 144
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "is_auth"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 145
    .local v2, "isAuth":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TOKEN_IS_AUTH : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/4 v3, 0x1

    if-ne v2, v3, :cond_53

    .line 147
    sget v3, Lcom/samsung/android/coreapps/easysignup/EasySignUpBroadcaster;->SDK_REQ_AUTH_RESP_REGISTER:I

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$IsAuthRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mJoinServiceId:I
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->access$600(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;)I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/coreapps/common/util/PackageUtils;->getServiceAppInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/samsung/android/coreapps/easysignup/EasySignUpBroadcaster;->sendBroadcastAuthResp(Landroid/content/Context;ILjava/lang/String;)V

    .line 148
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$IsAuthRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    invoke-virtual {v3}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->finish()V

    .line 159
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "isAuth":Z
    :goto_52
    return-void

    .line 150
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "isAuth":Z
    :cond_53
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$IsAuthRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mImsi:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->access$500(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->removeAuthData(Landroid/content/Context;Ljava/lang/String;)V

    .line 151
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$IsAuthRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mImsi:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->access$500(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/samsung/android/coreapps/easysignup/EasySignUpBroadcaster;->sendDeauthResult(Landroid/content/Context;ILjava/lang/String;)V

    .line 153
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$IsAuthRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    # invokes: Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->requestJoin()V
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->access$700(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;)V

    goto :goto_52

    .line 157
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "isAuth":Z
    :cond_6c
    sget v3, Lcom/samsung/android/coreapps/easysignup/EasySignUpBroadcaster;->SDK_REQ_AUTH_RESP_FAIL:I

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$IsAuthRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mJoinServiceId:I
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->access$600(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;)I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/coreapps/common/util/PackageUtils;->getServiceAppInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/samsung/android/coreapps/easysignup/EasySignUpBroadcaster;->sendBroadcastAuthResp(Landroid/content/Context;ILjava/lang/String;)V

    .line 158
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$IsAuthRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    invoke-virtual {v3}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->finish()V

    goto :goto_52
.end method
