.class Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$6;
.super Ljava/lang/Object;
.source "RelayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 484
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$6;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 488
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 489
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$6;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->access$902(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 491
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$6;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->setResult(I)V

    .line 492
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$6;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->finish()V

    .line 495
    return-void
.end method
