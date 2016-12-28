.class Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$4;
.super Ljava/lang/Object;
.source "GreetingDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->makeDataPopup()Landroid/app/Dialog;
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
    .line 225
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$4;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$4;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->onDataPopupCancelClick()V

    .line 230
    return-void
.end method
