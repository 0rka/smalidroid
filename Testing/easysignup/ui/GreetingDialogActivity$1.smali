.class Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$1;
.super Landroid/telephony/PhoneStateListener;
.source "GreetingDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;)V
    .registers 2

    .prologue
    .line 42
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 8
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 45
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    invoke-virtual {v3}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 46
    const-string v3, "This activity was already destroyed..."

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->access$100(Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    if-eqz v3, :cond_29

    .line 48
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->access$100(Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->access$200(Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;)Landroid/telephony/PhoneStateListener;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 72
    :cond_29
    :goto_29
    return-void

    .line 52
    :cond_2a
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    # setter for: Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->mServiceState:I
    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->access$302(Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;I)I

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->mServiceState:I
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->access$300(Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->mAlertDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->access$400(Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;)Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_67

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->mAlertDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->access$400(Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_7b

    :cond_67
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->mDataPopup:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->access$500(Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;)Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_85

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->mDataPopup:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->access$500(Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_85

    .line 56
    :cond_7b
    const-string v3, "already dialog is shown, ignore"

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 60
    :cond_85
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    # invokes: Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->checkNetwork()Z
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->access$600(Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 61
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 62
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 63
    .local v2, "mWifi":Landroid/net/NetworkInfo;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->isChineseModelDataDestrictionPopupShow()Z

    move-result v1

    .line 65
    .local v1, "mIsDataPopupShow":Z
    if-eqz v2, :cond_b1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_b1

    if-eqz v1, :cond_b1

    .line 66
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    invoke-virtual {v3}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->showDataPopup()V

    goto/16 :goto_29

    .line 68
    :cond_b1
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    # invokes: Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->proceedOK()V
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->access$700(Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;)V

    goto/16 :goto_29
.end method
