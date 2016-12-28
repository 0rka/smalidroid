.class Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$ProgressHandler;
.super Landroid/os/Handler;
.source "TermsAndConditionsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProgressHandler"
.end annotation


# static fields
.field private static final HIDE_PROGRESS:I = 0x1

.field private static final PROGRESS_DELAY:I = 0x12c

.field private static final SHOW_PROGRESS:I


# instance fields
.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/ProgressBar;Landroid/widget/TextView;)V
    .registers 6
    .param p1, "progressBar"    # Landroid/widget/ProgressBar;
    .param p2, "progressText"    # Landroid/widget/TextView;

    .prologue
    .line 410
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 411
    if-eqz p1, :cond_7

    if-nez p2, :cond_2a

    .line 412
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "null parameter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_2a
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$ProgressHandler;->mProgressBar:Landroid/widget/ProgressBar;

    .line 415
    iput-object p2, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$ProgressHandler;->mProgressText:Landroid/widget/TextView;

    .line 416
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 432
    const/4 v0, 0x4

    .line 433
    .local v0, "visibility":I
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_18

    .line 434
    const-string v1, "show Progress"

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const/4 v0, 0x0

    .line 441
    :cond_d
    :goto_d
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$ProgressHandler;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 442
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$ProgressHandler;->mProgressText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 443
    return-void

    .line 436
    :cond_18
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 437
    const-string v1, "hide Progress"

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const/16 v0, 0x8

    goto :goto_d
.end method

.method public hideProgress()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 425
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$ProgressHandler;->removeMessages(I)V

    .line 426
    invoke-virtual {p0, v2}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$ProgressHandler;->removeMessages(I)V

    .line 427
    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$ProgressHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 428
    return-void
.end method

.method public showProgress()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 419
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$ProgressHandler;->removeMessages(I)V

    .line 420
    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$ProgressHandler;->removeMessages(I)V

    .line 421
    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$ProgressHandler;->sendEmptyMessage(I)Z

    .line 422
    return-void
.end method
