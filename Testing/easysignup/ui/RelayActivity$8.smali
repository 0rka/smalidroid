.class Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$8;
.super Ljava/lang/Object;
.source "RelayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->showAuthResultPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;)V
    .registers 2

    .prologue
    .line 508
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$8;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 511
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 512
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$8;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->setResult(I)V

    .line 513
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$8;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->finish()V

    .line 514
    return-void
.end method
