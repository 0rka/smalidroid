.class Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1$1;
.super Landroid/content/BroadcastReceiver;
.source "ContactSyncAgreementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1;)V
    .registers 2

    .prologue
    .line 78
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1$1;->this$1:Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mReceiver - action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1$1;->this$1:Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1;

    iget-object v2, v2, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->access$200(Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "com.samsung.android.coreapps.contact.CONTACT_SYNC_END"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 84
    const-string v1, "contact sync end"

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1$1;->this$1:Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1;

    iget-object v2, v2, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->access$200(Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1$1;->this$1:Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1;

    iget-object v1, v1, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;

    # invokes: Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->dismissProgressBar()V
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->access$300(Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;)V

    .line 86
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1$1;->this$1:Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1;

    iget-object v1, v1, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->setResult(I)V

    .line 87
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1$1;->this$1:Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1;

    iget-object v1, v1, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;

    invoke-virtual {v1}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->finish()V

    .line 89
    :cond_4d
    return-void
.end method
