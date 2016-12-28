.class Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$1;
.super Ljava/lang/Object;
.source "CountryActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;)V
    .registers 2

    .prologue
    .line 184
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 186
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 187
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz p2, :cond_12

    .line 188
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    .line 192
    :goto_11
    return-void

    .line 190
    :cond_12
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    goto :goto_11
.end method
