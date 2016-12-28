.class Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$6;
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

.field final synthetic val$bodyCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;Landroid/widget/CheckBox;)V
    .registers 3

    .prologue
    .line 208
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$6;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    iput-object p2, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$6;->val$bodyCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "isChecked":Z
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$6;->val$bodyCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_b

    .line 214
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$6;->val$bodyCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 217
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$6;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->onDataPopupOkClick(Z)V

    .line 218
    return-void
.end method
