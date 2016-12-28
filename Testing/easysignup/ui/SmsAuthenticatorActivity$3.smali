.class Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$3;
.super Ljava/lang/Object;
.source "SmsAuthenticatorActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 332
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$3;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 7
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 334
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$3;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    invoke-virtual {v2}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->validateActivity()Z

    move-result v2

    if-nez v2, :cond_9

    .line 349
    :goto_8
    return-void

    .line 338
    :cond_9
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$3;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mButtonOK:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->access$100(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$3;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mEditTextPhoneNumber:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->access$000(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_4f

    const/4 v2, 0x1

    :goto_1c
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 339
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$3;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mButtonOK:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->access$100(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    .line 340
    .local v1, "enabled":Z
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$3;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    invoke-virtual {v2}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/coreapps/easysignuplib/R$drawable;->tw_btn_icon_next_mtrl:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 341
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_51

    .line 342
    const-string v2, "#000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 343
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$3;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mButtonOK:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->access$100(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    .line 338
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "enabled":Z
    :cond_4f
    const/4 v2, 0x0

    goto :goto_1c

    .line 346
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "enabled":Z
    :cond_51
    const-string v2, "#FF888888"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 347
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$3;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mButtonOK:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->access$100(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lcom/samsung/android/coreapps/easysignuplib/R$color;->bottom_button_color:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 352
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 355
    return-void
.end method
