.class Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$2;
.super Ljava/lang/Object;
.source "ContactSyncAgreementActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 117
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$2;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity$2;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/ui/ContactSyncAgreementActivity;->onBackPressed()V

    .line 121
    return-void
.end method
