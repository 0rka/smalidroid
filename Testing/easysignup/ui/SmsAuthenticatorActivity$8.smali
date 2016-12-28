.class Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$8;
.super Landroid/os/Handler;
.source "SmsAuthenticatorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)V
    .registers 2

    .prologue
    .line 626
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$8;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 629
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$8;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    invoke-virtual {v4}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->validateActivity()Z

    move-result v4

    if-nez v4, :cond_b

    .line 669
    :cond_a
    :goto_a
    return-void

    .line 633
    :cond_b
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_116

    goto :goto_a

    .line 636
    :sswitch_11
    const-string v4, "reqAuthCodeHandler : TOKEN_REQUEST_AUTH_CODE"

    sget-object v5, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$8;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    invoke-virtual {v4}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->dismissProgress()V

    .line 639
    const-string v4, "succeed"

    sget-object v5, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const-string v4, "SMS"

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$8;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mAuthType:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->access$900(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 641
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$8;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$8;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    invoke-virtual {v5}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/coreapps/easysignuplib/R$string;->mt_dialog_progress:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p0, v5, v9}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->showProgress(Landroid/os/Handler;Ljava/lang/CharSequence;Z)V

    .line 642
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$8;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    invoke-virtual {v4}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->runCountDown()V

    goto :goto_a

    .line 643
    :cond_49
    const-string v4, "ACS"

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$8;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mAuthType:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->access$900(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 644
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$8;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    const-class v5, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 645
    .local v1, "it":Landroid/content/Intent;
    const/high16 v4, 0x24000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 646
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$8;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    const/16 v5, 0x65

    invoke-virtual {v4, v1, v5}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_a

    .line 651
    .end local v1    # "it":Landroid/content/Intent;
    :sswitch_6d
    const-string v4, "reqAuthCodeHandler : TOKEN_ERROR"

    sget-object v5, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;

    .line 653
    .local v0, "errorResp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;
    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;->getRcode()J

    move-result-wide v2

    .line 655
    .local v2, "rCode":J
    const-wide v4, 0xee7146e3L

    cmp-long v4, v2, v4

    if-nez v4, :cond_ac

    .line 656
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$8;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$8;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    sget v6, Lcom/samsung/android/coreapps/easysignuplib/R$string;->esu_information:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$8;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    sget v7, Lcom/samsung/android/coreapps/easysignuplib/R$string;->you_have_reached_your_daily_sms_limit:I

    invoke-virtual {v6, v7}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;->getLeftBlockingHour()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 657
    :cond_ac
    const-wide v4, 0xee7146e4L

    cmp-long v4, v2, v4

    if-nez v4, :cond_dc

    .line 658
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$8;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$8;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    sget v6, Lcom/samsung/android/coreapps/easysignuplib/R$string;->esu_information:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$8;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    sget v7, Lcom/samsung/android/coreapps/easysignuplib/R$string;->you_have_reached_your_daliy_voice_limit:I

    invoke-virtual {v6, v7}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;->getLeftBlockingHour()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 660
    :cond_dc
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/ConnectivityUtils;->isMobileNetworkConnected()Z

    move-result v4

    if-nez v4, :cond_ff

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/ConnectivityUtils;->isWifiAvailable()Z

    move-result v4

    if-nez v4, :cond_ff

    .line 661
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$8;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$8;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    sget v6, Lcom/samsung/android/coreapps/easysignuplib/R$string;->esu_information:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$8;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    sget v7, Lcom/samsung/android/coreapps/easysignuplib/R$string;->esu_check_your_connection:I

    invoke-virtual {v6, v7}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 663
    :cond_ff
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$8;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$8;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    sget v6, Lcom/samsung/android/coreapps/easysignuplib/R$string;->esu_information:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$8;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    sget v7, Lcom/samsung/android/coreapps/easysignuplib/R$string;->esu_server_error_try_later:I

    invoke-virtual {v6, v7}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 633
    :sswitch_data_116
    .sparse-switch
        0x29 -> :sswitch_11
        0x2710 -> :sswitch_6d
    .end sparse-switch
.end method
