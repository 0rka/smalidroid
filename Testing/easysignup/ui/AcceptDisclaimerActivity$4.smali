.class Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$4;
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
    .line 548
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$4;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 551
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 552
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$4;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 553
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$4;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->cancelAction()V

    .line 554
    return-void
.end method
