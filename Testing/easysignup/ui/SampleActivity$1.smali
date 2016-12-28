.class Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$1;
.super Landroid/os/Handler;
.source "SampleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 69
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_35

    .line 70
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 72
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "extra_auth_result"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 74
    .local v1, "result":I
    if-ne v1, v5, :cond_36

    .line 75
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;

    sget v5, Lcom/samsung/android/coreapps/easysignuplib/R$string;->esu_information:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;

    sget v6, Lcom/samsung/android/coreapps/easysignuplib/R$string;->the_verification_has_failed:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;

    sget v7, Lcom/samsung/android/coreapps/easysignuplib/R$string;->retry:I

    invoke-virtual {v6, v7}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$1$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$1$1;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$1;)V

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$OkBtnHandler;)V

    .line 95
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "result":I
    :cond_35
    :goto_35
    return-void

    .line 83
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "result":I
    :cond_36
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;

    const-string v4, "key_msisdn"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->msisdn:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->access$202(Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/DeviceUtils;->isMultiSimDevice()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 86
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;

    invoke-virtual {v3}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->showAuthResultPopup()V

    goto :goto_35

    .line 88
    :cond_4d
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;

    sget v6, Lcom/samsung/android/coreapps/easysignuplib/R$string;->verification_complete:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msisdn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->msisdn:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->access$200(Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 89
    .local v2, "t":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 91
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;

    invoke-virtual {v3}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->finish()V

    goto :goto_35
.end method
