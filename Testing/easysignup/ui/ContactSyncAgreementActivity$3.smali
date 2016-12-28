.class Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$3;
.super Ljava/lang/Object;
.source "ContactSyncAgreementActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->showProgressBar(I)V
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
    .line 152
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$3;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$3;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->setResult(I)V

    .line 156
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$3;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->finish()V

    .line 157
    return-void
.end method
