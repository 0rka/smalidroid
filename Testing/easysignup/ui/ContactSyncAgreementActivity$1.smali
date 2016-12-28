.class Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1;
.super Ljava/lang/Object;
.source "ContactSyncAgreementActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->alert(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;)V
    .registers 2

    .prologue
    .line 71
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 75
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->setContactSyncAgreement(Z)V

    .line 77
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->mSyncNow:Z
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->access$000(Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 78
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;

    new-instance v2, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1$1;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1;)V

    # setter for: Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->mReciever:Landroid/content/BroadcastReceiver;
    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->access$102(Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 93
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.coreapps.contact.CONTACT_SYNC_END"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->mReciever:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->access$100(Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;

    sget v2, Lcom/samsung/android/coreapps/easysignup/R$string;->in_progress:I

    # invokes: Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->showProgressBar(I)V
    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->access$400(Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;I)V

    .line 97
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;

    invoke-static {v1, v4}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->serviceOn(Landroid/content/Context;I)V

    .line 98
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;

    # invokes: Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->requestContactSync(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->access$500(Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;Landroid/content/Context;)V

    .line 100
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 111
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_43
    return-void

    .line 101
    :cond_44
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->mServiceOn:Z
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->access$600(Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 102
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;

    invoke-static {v1, v4}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->serviceOn(Landroid/content/Context;I)V

    .line 103
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;

    # invokes: Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->requestContactSync(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->access$500(Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;Landroid/content/Context;)V

    .line 104
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;

    invoke-virtual {v1, v3}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->setResult(I)V

    .line 105
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;

    invoke-virtual {v1}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->finish()V

    goto :goto_43

    .line 107
    :cond_63
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;

    invoke-virtual {v1, v3}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->setResult(I)V

    .line 108
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;

    invoke-virtual {v1}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->finish()V

    goto :goto_43
.end method
