.class Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$2;
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
    .line 339
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$2;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 342
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 343
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$2;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 344
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$2;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->cancelAction()V

    .line 345
    return-void
.end method
