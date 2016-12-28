.class public Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;
.super Lcom/samsung/android/coreapps/common/ui/BaseActivity;
.source "AcsAuthenticatorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final EXTRA_ACS_CODE:Ljava/lang/String; = "acs_code"

.field private static final SHOW_BUTTON_BACKGROUND:Ljava/lang/String; = "show_button_background"

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private mButtonCancel:Landroid/widget/TextView;

.field private mButtonOK:Landroid/widget/TextView;

.field private mButtonReSend:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mEditTextAuthCode:Landroid/widget/EditText;

.field private mTextTimeCount:Landroid/widget/TextView;

.field private mTimer:Landroid/os/CountDownTimer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->TAG:Ljava/lang/String;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->checkIsReady()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->mTextTimeCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->mButtonReSend:Landroid/widget/Button;

    return-object v0
.end method

.method private changeButtonBackground()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_button_background"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_27

    .line 155
    .local v0, "show":Z
    :goto_16
    if-eqz v0, :cond_26

    .line 156
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->mButtonOK:Landroid/widget/TextView;

    sget v2, Lcom/samsung/android/coreapps/easysignuplib/R$drawable;->bottom_btn_bg_for_show_button_background:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 157
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->mButtonCancel:Landroid/widget/TextView;

    sget v2, Lcom/samsung/android/coreapps/easysignuplib/R$drawable;->bottom_btn_bg_for_show_button_background:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 159
    :cond_26
    return-void

    .end local v0    # "show":Z
    :cond_27
    move v0, v1

    .line 153
    goto :goto_16
.end method

.method private checkIsReady()V
    .registers 6

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/coreapps/easysignuplib/R$drawable;->tw_btn_icon_next_mtrl:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 180
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->mEditTextAuthCode:Landroid/widget/EditText;

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->mEditTextAuthCode:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_37

    .line 181
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->mButtonOK:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 182
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->mButtonOK:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    .line 183
    .local v1, "enabled":Z
    const-string v2, "#000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 184
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->mButtonOK:Landroid/widget/TextView;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    .end local v1    # "enabled":Z
    :goto_36
    return-void

    .line 186
    :cond_37
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->mButtonOK:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 187
    const-string v2, "#FF888888"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 188
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->mButtonOK:Landroid/widget/TextView;

    sget v3, Lcom/samsung/android/coreapps/easysignuplib/R$color;->bottom_button_color:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_36
.end method

.method protected static getRemainingTime(J)Ljava/lang/String;
    .registers 8
    .param p0, "millisUntilFinished"    # J

    .prologue
    .line 131
    long-to-int v2, p0

    const v3, 0xea60

    div-int v0, v2, v3

    .line 132
    .local v0, "minute":I
    long-to-int v2, p0

    mul-int/lit8 v3, v0, 0x3c

    mul-int/lit16 v3, v3, 0x3e8

    sub-int/2addr v2, v3

    div-int/lit16 v1, v2, 0x3e8

    .line 134
    .local v1, "second":I
    const-string v2, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected cancelTimer()V
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_9

    .line 139
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 141
    :cond_9
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 166
    .local v0, "id":I
    sget v2, Lcom/samsung/android/coreapps/easysignuplib/R$id;->button_right:I

    if-ne v0, v2, :cond_23

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 168
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "acs_code"

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->mEditTextAuthCode:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->setResult(ILandroid/content/Intent;)V

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->finish()V

    .line 176
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_22
    :goto_22
    return-void

    .line 173
    :cond_23
    sget v2, Lcom/samsung/android/coreapps/easysignuplib/R$id;->button_left:I

    if-ne v0, v2, :cond_22

    .line 174
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->finish()V

    goto :goto_22
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 149
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->changeButtonBackground()V

    .line 150
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const-string v0, "onCreate"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iput-object p0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->mContext:Landroid/content/Context;

    .line 52
    sget v0, Lcom/samsung/android/coreapps/easysignuplib/R$layout;->layout_acs_authenticator:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->setContentView(I)V

    .line 54
    sget v0, Lcom/samsung/android/coreapps/easysignuplib/R$id;->acs_code:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->mEditTextAuthCode:Landroid/widget/EditText;

    .line 55
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->mEditTextAuthCode:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity$1;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 72
    sget v0, Lcom/samsung/android/coreapps/easysignuplib/R$id;->resend_acs:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->mButtonReSend:Landroid/widget/Button;

    .line 74
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->mButtonReSend:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity$2;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    sget v0, Lcom/samsung/android/coreapps/easysignuplib/R$id;->button_right:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->mButtonOK:Landroid/widget/TextView;

    .line 83
    sget v0, Lcom/samsung/android/coreapps/easysignuplib/R$id;->button_left:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->mButtonCancel:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->mButtonOK:Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/coreapps/easysignuplib/R$string;->ok:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->mButtonCancel:Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/coreapps/easysignuplib/R$string;->cancel:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->mButtonOK:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->mButtonCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->checkIsReady()V

    .line 92
    sget v0, Lcom/samsung/android/coreapps/easysignuplib/R$id;->regi_countdown:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->mTextTimeCount:Landroid/widget/TextView;

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->runCountDown()V

    .line 95
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->changeButtonBackground()V

    .line 97
    return-void
.end method

.method public runCountDown()V
    .registers 7

    .prologue
    .line 109
    const-wide/32 v2, 0xea60

    .line 111
    .local v2, "interTime":J
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_c

    .line 112
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 115
    :cond_c
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity$3;

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity$3;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;JJ)V

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->mTimer:Landroid/os/CountDownTimer;

    .line 128
    return-void
.end method

.method public validateActivity()Z
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
