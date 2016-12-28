.class Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$3;
.super Ljava/lang/Object;
.source "UpdateTncActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;)V
    .registers 2

    .prologue
    .line 324
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$3;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 327
    const-string v0, "marketing_agreement"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    .line 328
    .local v2, "checkMarket":Z
    const/16 v0, 0x20

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$3;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;

    iget-object v1, v1, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->httpRespHandler:Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$HttpRespHandler;

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$3;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mImsi:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->access$200(Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$3;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mImsi:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->access$200(Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getMCC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$3$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$3$1;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$3;)V

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/AcceptDisclaimerManager;->createTNCInfoForEasySignup(ILandroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 334
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$3;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;

    # invokes: Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->showProgressBar()V
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->access$300(Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;)V

    .line 336
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 337
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$3;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 338
    return-void
.end method
