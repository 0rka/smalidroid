.class Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$HttpRespHandler;
.super Landroid/os/Handler;
.source "AcceptDisclaimerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpRespHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;)V
    .registers 2

    .prologue
    .line 370
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$HttpRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;
    .param p2, "x1"    # Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$1;

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$HttpRespHandler;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 373
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_4e

    .line 375
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$HttpRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;

    const/4 v1, 0x1

    # invokes: Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->notifyAcceptDisclaimerResult(Z)V
    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->access$100(Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;Z)V

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AcceptDisclaimerActivity isCheckedMarket  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$HttpRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->checkMarket:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->access$200(Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v0, "marketing_agreement"

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$HttpRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->checkMarket:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->access$200(Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 380
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$HttpRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->setResult(I)V

    .line 381
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$HttpRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->finish()V

    .line 383
    :cond_4e
    return-void
.end method
