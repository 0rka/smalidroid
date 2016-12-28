.class Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$2;
.super Ljava/lang/Object;
.source "GreetingDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->alert(Ljava/lang/String;)V
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
    .line 122
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$2;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 126
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$2;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->mAlertDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->access$402(Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 128
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$2;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    # invokes: Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->sendCancelResult()V
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->access$800(Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;)V

    .line 129
    return-void
.end method
