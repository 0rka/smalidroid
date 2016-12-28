.class Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService$1;
.super Landroid/os/Handler;
.source "SelfUpgradeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService$1;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 84
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_5

    .line 101
    :goto_4
    return-void

    .line 87
    :cond_5
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_3a

    goto :goto_4

    .line 89
    :pswitch_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;

    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/util/SelfUpgradeUtils;->checkSelfUpgradeResponse(Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;)Z

    move-result v0

    .line 91
    .local v0, "bNeedToUpdate":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Need to update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    if-eqz v0, :cond_34

    .line 94
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService$1;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;

    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/util/SelfUpgradeUtils;->showNotification(Landroid/content/Context;)V

    .line 97
    :cond_34
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService$1;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;

    invoke-virtual {v1}, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;->stopSelf()V

    goto :goto_4

    .line 87
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_b
    .end packed-switch
.end method
