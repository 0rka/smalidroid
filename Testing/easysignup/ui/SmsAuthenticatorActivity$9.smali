.class Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$9;
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
    .line 672
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$9;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 675
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$9;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    invoke-virtual {v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->validateActivity()Z

    move-result v1

    if-nez v1, :cond_9

    .line 714
    :goto_8
    return-void

    .line 679
    :cond_9
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_ee

    goto :goto_8

    .line 681
    :sswitch_f
    const-string v1, "mtAuthHandler : TOKEN_MT_AUTHENTICATE"

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$9;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    invoke-virtual {v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->dismissProgress()V

    .line 684
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$9;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthResp;

    # setter for: Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->successResp:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthResp;
    invoke-static {v4, v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->access$1102(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthResp;)Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthResp;

    .line 685
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$9;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    const/4 v4, 0x1

    # invokes: Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->notifyMTAuthResult(Z)V
    invoke-static {v1, v4}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->access$1200(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;Z)V

    .line 687
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$9;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->setResult(I)V

    .line 688
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$9;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    invoke-virtual {v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->finish()V

    goto :goto_8

    .line 692
    :sswitch_36
    const-string v1, "mtAuthHandler : TOKEN_ERROR"

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;

    .line 694
    .local v0, "errorResp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;
    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;->getRcode()J

    move-result-wide v2

    .line 696
    .local v2, "rCode":J
    const-wide v4, 0xee7146ecL

    cmp-long v1, v2, v4

    if-nez v1, :cond_aa

    .line 697
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$9;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$9;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    sget v5, Lcom/samsung/android/coreapps/easysignuplib/R$string;->esu_information:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$9;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    sget v6, Lcom/samsung/android/coreapps/easysignuplib/R$string;->you_have_entered_incorrect_code:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 705
    :goto_63
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$9;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mCountryCodeLetter2:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->access$300(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7d

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$9;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mCountryCodeLetter2:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->access$300(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "MM"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9d

    :cond_7d
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$9;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mIsSMSAvailable:Z
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->access$400(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Z

    move-result v1

    if-eqz v1, :cond_8d

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$9;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mIsACSAvailable:Z
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->access$500(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Z

    move-result v1

    if-eqz v1, :cond_9d

    :cond_8d
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$9;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mIsSMSAvailable:Z
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->access$400(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Z

    move-result v1

    if-nez v1, :cond_e2

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$9;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mIsACSAvailable:Z
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->access$500(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Z

    move-result v1

    if-eqz v1, :cond_e2

    .line 707
    :cond_9d
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$9;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mVerificationMethodSelector:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->access$600(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_8

    .line 699
    :cond_aa
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/ConnectivityUtils;->isMobileNetworkConnected()Z

    move-result v1

    if-nez v1, :cond_cc

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/ConnectivityUtils;->isWifiAvailable()Z

    move-result v1

    if-nez v1, :cond_cc

    .line 700
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$9;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$9;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    sget v5, Lcom/samsung/android/coreapps/easysignuplib/R$string;->esu_information:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$9;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    sget v6, Lcom/samsung/android/coreapps/easysignuplib/R$string;->esu_check_your_connection:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_63

    .line 702
    :cond_cc
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$9;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$9;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    sget v5, Lcom/samsung/android/coreapps/easysignuplib/R$string;->esu_information:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$9;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    sget v6, Lcom/samsung/android/coreapps/easysignuplib/R$string;->the_verification_has_failed:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_63

    .line 709
    :cond_e2
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$9;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mVerificationMethodSelector:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->access$600(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_8

    .line 679
    :sswitch_data_ee
    .sparse-switch
        0x2a -> :sswitch_f
        0x2710 -> :sswitch_36
    .end sparse-switch
.end method
