.class Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$3;
.super Ljava/lang/Object;
.source "GreetingDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 131
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$3;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 134
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$3;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->mAlertDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->access$402(Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 136
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$3;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    # invokes: Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->sendCancelResult()V
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->access$800(Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;)V

    .line 137
    return-void
.end method
