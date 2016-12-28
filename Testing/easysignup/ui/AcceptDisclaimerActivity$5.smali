.class Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$5;
.super Ljava/lang/Object;
.source "AcceptDisclaimerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;)V
    .registers 2

    .prologue
    .line 534
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$5;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 537
    const/16 v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$5;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;

    iget-object v1, v1, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->httpRespHandler:Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$HttpRespHandler;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$5;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->checkMarket:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->access$200(Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$5;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mImsi:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->access$400(Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$5;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mImsi:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->access$400(Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getMCC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$5$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$5$1;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$5;)V

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/AcceptDisclaimerManager;->createTNCInfoForEasySignup(ILandroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 543
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$5;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;

    # invokes: Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->showProgressBar()V
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->access$500(Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;)V

    .line 545
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 546
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$5;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 547
    return-void
.end method
