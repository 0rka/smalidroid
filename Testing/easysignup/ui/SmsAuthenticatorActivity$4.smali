.class Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$4;
.super Ljava/lang/Object;
.source "SmsAuthenticatorActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)V
    .registers 2

    .prologue
    .line 358
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$4;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 360
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$4;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 361
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz p2, :cond_17

    .line 362
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$4;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mEditTextPhoneNumber:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->access$000(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 366
    :goto_16
    return-void

    .line 364
    :cond_17
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    goto :goto_16
.end method
