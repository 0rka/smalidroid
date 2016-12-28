.class Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "RelayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;)V
    .registers 2

    .prologue
    .line 77
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLocalEventReceiver - action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.samsung.android.coreapps.easysignup.ACTION_START_ACCEPT_DISCLAIMER_ACTIVITY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 87
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    # invokes: Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->startAcceptDisclaimer(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->access$100(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;Landroid/content/Intent;)V

    .line 134
    :cond_32
    :goto_32
    return-void

    .line 91
    :cond_33
    const-string v2, "com.samsung.android.coreapps.easysignup.ACTION_START_MT_AUTH_ACTIVITY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 92
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    # invokes: Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->startMtAuthActivity(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->access$200(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;Landroid/content/Intent;)V

    goto :goto_32

    .line 96
    :cond_41
    const-string v2, "com.samsung.android.coreapps.easysignup.ACTION_JOIN_RESULT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 98
    const-string v2, "extra_join_result"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 100
    .local v1, "result":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JoinResult - result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    if-ne v1, v4, :cond_ad

    .line 104
    const-string v2, "recovery"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_32

    .line 105
    sget v2, Lcom/samsung/android/coreapps/easysignup/EasySignUpBroadcaster;->SDK_REQ_AUTH_RESP_FAIL:I

    invoke-static {p1, v2, v5}, Lcom/samsung/android/coreapps/easysignup/EasySignUpBroadcaster;->sendBroadcastAuthResp(Landroid/content/Context;ILjava/lang/String;)V

    .line 106
    const-string v2, "samsungAccount"

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mEntryPoint:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->access$300(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 107
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    invoke-virtual {v2, v4}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->setResult(I)V

    .line 108
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    invoke-virtual {v2}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->finish()V

    goto :goto_32

    .line 110
    :cond_91
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    sget v4, Lcom/samsung/android/coreapps/easysignup/R$string;->esu_information:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    sget v5, Lcom/samsung/android/coreapps/easysignup/R$string;->the_verification_has_failed:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_32

    .line 114
    :cond_ad
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify Auth Result - result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    # invokes: Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->saveTNCAgreeServices()V
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->access$400(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;)V

    .line 116
    sget v2, Lcom/samsung/android/coreapps/easysignup/EasySignUpBroadcaster;->SDK_REQ_AUTH_RESP_REGISTER:I

    invoke-static {p1, v2, v5}, Lcom/samsung/android/coreapps/easysignup/EasySignUpBroadcaster;->sendBroadcastAuthResp(Landroid/content/Context;ILjava/lang/String;)V

    .line 118
    const-string v2, "extra_join_type"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_10d

    .line 119
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/DeviceUtils;->isMultiSimDevice()Z

    move-result v2

    if-eqz v2, :cond_102

    .line 120
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    const-string v3, "imsi"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mImsi:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->access$502(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mImsi:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->access$500(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_fb

    .line 122
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mImsi:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->access$502(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    :cond_fb
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    invoke-virtual {v2}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->showAuthResultPopup()V

    goto/16 :goto_32

    .line 127
    :cond_102
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    sget v3, Lcom/samsung/android/coreapps/easysignup/R$string;->verification_complete:I

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 130
    :cond_10d
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->setResult(I)V

    .line 131
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    invoke-virtual {v2}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->finish()V

    goto/16 :goto_32
.end method
