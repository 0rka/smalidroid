.class Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$6;
.super Landroid/os/CountDownTimer;
.source "SmsAuthenticatorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->runCountDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;JJ)V
    .registers 6
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 511
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$6;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 5

    .prologue
    .line 519
    const-string v0, "CountdownTimer is finished. show AlertDialog"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$6;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->cancelTimer()V

    .line 521
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$6;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->dismissProgress()V

    .line 522
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$6;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$6;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    sget v2, Lcom/samsung/android/coreapps/easysignuplib/R$string;->esu_information:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$6;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    sget v3, Lcom/samsung/android/coreapps/easysignuplib/R$string;->the_verification_has_failed:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 523
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$6;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mCountryCodeLetter2:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->access$300(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$6;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mCountryCodeLetter2:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->access$300(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    :cond_40
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$6;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mIsSMSAvailable:Z
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->access$400(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$6;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mIsACSAvailable:Z
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->access$500(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Z

    move-result v0

    if-eqz v0, :cond_60

    :cond_50
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$6;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mIsSMSAvailable:Z
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->access$400(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Z

    move-result v0

    if-nez v0, :cond_6c

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$6;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mIsACSAvailable:Z
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->access$500(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 525
    :cond_60
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$6;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mVerificationMethodSelector:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->access$600(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 529
    :goto_6b
    return-void

    .line 527
    :cond_6c
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$6;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mVerificationMethodSelector:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->access$600(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6b
.end method

.method public onTick(J)V
    .registers 3
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 514
    return-void
.end method
