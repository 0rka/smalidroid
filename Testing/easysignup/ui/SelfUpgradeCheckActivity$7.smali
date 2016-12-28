.class Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity$7;
.super Landroid/os/Handler;
.source "SelfUpgradeCheckActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;)V
    .registers 2

    .prologue
    .line 175
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity$7;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 178
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_5

    .line 203
    :goto_4
    return-void

    .line 181
    :cond_5
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_54

    goto :goto_4

    .line 183
    :pswitch_b
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity$7;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->mCanceled:Z
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->access$000(Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 184
    const-string v1, "get response but already canceled!"

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 188
    :cond_1d
    const-string v1, "last_update_check_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    .line 189
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;

    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/util/SelfUpgradeUtils;->checkSelfUpgradeResponse(Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;)Z

    move-result v0

    .line 191
    .local v0, "bNeedToUpdate":Z
    if-eqz v0, :cond_4e

    .line 192
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity$7;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;

    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/util/SelfUpgradeUtils;->sendBroadcastToUpgrade(Landroid/content/Context;)V

    .line 194
    const-string v1, "setResult ok, finish()"

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity$7;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->setResult(I)V

    .line 196
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity$7;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;

    invoke-virtual {v1}, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->finish()V

    goto :goto_4

    .line 198
    :cond_4e
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity$7;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;

    # invokes: Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->showExitPopup()V
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->access$200(Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;)V

    goto :goto_4

    .line 181
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_b
    .end packed-switch
.end method
