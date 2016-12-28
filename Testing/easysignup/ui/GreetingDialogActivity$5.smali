.class Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$5;
.super Ljava/lang/Object;
.source "GreetingDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 219
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$5;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$5;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->onDataPopupCancelClick()V

    .line 224
    return-void
.end method
