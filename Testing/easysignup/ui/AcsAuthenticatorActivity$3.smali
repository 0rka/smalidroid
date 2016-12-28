.class Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity$3;
.super Landroid/os/CountDownTimer;
.source "AcsAuthenticatorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->runCountDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;JJ)V
    .registers 6
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 115
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity$3;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 5

    .prologue
    .line 123
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity$3;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->cancelTimer()V

    .line 124
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity$3;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->mTextTimeCount:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->access$100(Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->getRemainingTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity$3;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->mButtonReSend:Landroid/widget/Button;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->access$200(Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 126
    return-void
.end method

.method public onTick(J)V
    .registers 6
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 118
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity$3;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->mTextTimeCount:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->access$100(Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->getRemainingTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    return-void
.end method
