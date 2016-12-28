.class Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService$1;
.super Landroid/os/Handler;
.source "AutoMOAuthService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;)V
    .registers 2

    .prologue
    .line 51
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService$1;->this$0:Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 55
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x384

    if-ne v3, v4, :cond_3e

    .line 56
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 57
    .local v0, "data":Landroid/os/Bundle;
    const-string v3, "extra_auth_result"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 58
    .local v2, "result":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MO AUTH Result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    if-eqz v2, :cond_44

    .line 60
    const-string v3, "Result sucess..."

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService$1;->this$0:Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;

    # invokes: Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->resetRetry()V
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->access$100(Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;)V

    .line 76
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v2    # "result":Z
    :cond_3e
    :goto_3e
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService$1;->this$0:Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;

    invoke-virtual {v3}, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->stopSelf()V

    .line 77
    return-void

    .line 64
    .restart local v0    # "data":Landroid/os/Bundle;
    .restart local v2    # "result":Z
    :cond_44
    const-string v3, "extra_is_mo_support"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 65
    .local v1, "isMOSupport":Z
    if-eqz v1, :cond_5c

    .line 66
    const-string v3, "MOAuth is supported but result was fail. Retry"

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService$1;->this$0:Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;

    # invokes: Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->retry()V
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->access$200(Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;)V

    goto :goto_3e

    .line 70
    :cond_5c
    const-string v3, "MOAuth was not supported for this device/sim"

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService$1;->this$0:Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;

    # invokes: Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->resetRetry()V
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->access$100(Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;)V

    goto :goto_3e
.end method
