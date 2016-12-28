.class public Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;
.super Landroid/widget/FrameLayout;
.source "ClearableEditText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Lcom/samsung/android/coreapps/easysignup/widget/IDrawableStateObservable$OnDrawableStateChanged;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText$OnMaxLengthReachListener;
    }
.end annotation


# instance fields
.field private mClearButton:Landroid/widget/ImageButton;

.field private mClearButtonClickListener:Landroid/view/View$OnClickListener;

.field private mEditText:Landroid/widget/EditText;

.field private mListener:Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText$OnMaxLengthReachListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mMaxLength:I

.field private mOriginalHint:Ljava/lang/CharSequence;

.field private mRootLayout:Landroid/view/ViewGroup;

.field private mSearchIconResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    sget v0, Lcom/samsung/android/coreapps/easysignuplib/R$attr;->clearableEditTextStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method private getDecoreatedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 11
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v8, 0x0

    .line 301
    iget v3, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mSearchIconResId:I

    if-nez v3, :cond_6

    .line 331
    .end local p1    # "hint":Ljava/lang/CharSequence;
    :cond_5
    :goto_5
    return-object p1

    .line 305
    .restart local p1    # "hint":Ljava/lang/CharSequence;
    :cond_6
    if-eqz p1, :cond_5

    .line 309
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v3, "   "

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 310
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 312
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/coreapps/easysignuplib/R$drawable;->tw_ic_search_api_mtrl_alpha:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 313
    .local v1, "searchIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4e

    .line 314
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getTextSize()F

    move-result v3

    float-to-double v4, v3

    const-wide v6, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .line 315
    .local v2, "textSize":I
    const-string v3, "#252525"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 316
    const/16 v3, 0x55

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 317
    invoke-virtual {v1, v8, v8, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 328
    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x2

    const/16 v5, 0x21

    invoke-virtual {v0, v3, v8, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .end local v2    # "textSize":I
    :cond_4e
    move-object p1, v0

    .line 331
    goto :goto_5
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 177
    sget-object v9, Lcom/samsung/android/coreapps/easysignuplib/R$styleable;->ClearableEditText:[I

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 179
    .local v1, "arr":Landroid/content/res/TypedArray;
    sget v9, Lcom/samsung/android/coreapps/easysignuplib/R$styleable;->ClearableEditText_android_layout:I

    sget v10, Lcom/samsung/android/coreapps/easysignuplib/R$layout;->layout_common_clearable_edit_text:I

    invoke-virtual {v1, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 181
    .local v7, "layoutResId":I
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v7, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mRootLayout:Landroid/view/ViewGroup;

    .line 182
    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v9}, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->addView(Landroid/view/View;)V

    .line 184
    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mRootLayout:Landroid/view/ViewGroup;

    instance-of v9, v9, Lcom/samsung/android/coreapps/easysignup/widget/IDrawableStateObservable;

    if-eqz v9, :cond_41

    .line 185
    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mRootLayout:Landroid/view/ViewGroup;

    check-cast v9, Lcom/samsung/android/coreapps/easysignup/widget/IDrawableStateObservable;

    invoke-interface {v9, p0}, Lcom/samsung/android/coreapps/easysignup/widget/IDrawableStateObservable;->setOnDrawableStateChanged(Lcom/samsung/android/coreapps/easysignup/widget/IDrawableStateObservable$OnDrawableStateChanged;)V

    .line 187
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 189
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_41

    .line 190
    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getDrawableState()[I

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 193
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_41
    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mRootLayout:Landroid/view/ViewGroup;

    sget v10, Lcom/samsung/android/coreapps/easysignuplib/R$id;->clearable_text1:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mEditText:Landroid/widget/EditText;

    .line 194
    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->setSingleLine()V

    .line 195
    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v9, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 201
    sget v9, Lcom/samsung/android/coreapps/easysignuplib/R$styleable;->ClearableEditText_android_maxLength:I

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 202
    .local v8, "maxLength":I
    sget v9, Lcom/samsung/android/coreapps/easysignuplib/R$styleable;->ClearableEditText_android_hint:I

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "hint":Ljava/lang/String;
    sget v9, Lcom/samsung/android/coreapps/easysignuplib/R$styleable;->ClearableEditText_android_inputType:I

    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getInputType()I

    move-result v10

    invoke-virtual {v1, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 204
    .local v5, "inputType":I
    sget v9, Lcom/samsung/android/coreapps/easysignuplib/R$styleable;->ClearableEditText_android_imeOptions:I

    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getImeOptions()I

    move-result v10

    invoke-virtual {v1, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 205
    .local v4, "imeOptions":I
    sget v9, Lcom/samsung/android/coreapps/easysignuplib/R$styleable;->ClearableEditText_android_searchIcon:I

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mSearchIconResId:I

    .line 207
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 209
    if-lez v8, :cond_8d

    .line 210
    invoke-virtual {p0, v8}, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->setMaxLength(I)V

    .line 213
    :cond_8d
    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v9, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 214
    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v9, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 216
    invoke-virtual {p0, v3}, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mEditText:Landroid/widget/EditText;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setGravity(I)V

    .line 226
    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mRootLayout:Landroid/view/ViewGroup;

    sget v10, Lcom/samsung/android/coreapps/easysignuplib/R$id;->clearable_button1:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mClearButton:Landroid/widget/ImageButton;

    .line 227
    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mClearButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mClearButton:Landroid/widget/ImageButton;

    const-string v10, "#000000"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v10, v11}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 229
    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mClearButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/samsung/android/coreapps/easysignuplib/R$string;->clear_query:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mClearButton:Landroid/widget/ImageButton;

    const/16 v10, 0x6d

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 232
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ar"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_102

    .line 233
    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mClearButton:Landroid/widget/ImageButton;

    invoke-virtual {v9}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 234
    .local v6, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/samsung/android/coreapps/easysignuplib/R$dimen;->layout_country_searchbar_cancel_icon_margin_right_launguage_ar:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 235
    .local v0, "arMarginRight":I
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v10, v0, v11}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 236
    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mClearButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, v6}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    .end local v0    # "arMarginRight":I
    .end local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_102
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->updateViews()V

    .line 240
    return-void
.end method

.method private updateViews()V
    .registers 4

    .prologue
    .line 289
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 292
    .local v0, "text":Ljava/lang/CharSequence;
    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_16

    .line 293
    :cond_e
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mClearButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 298
    :goto_15
    return-void

    .line 296
    :cond_16
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mClearButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_15
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .registers 3
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 130
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 261
    return-void
.end method

.method public append(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 245
    return-void
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mClearButtonClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_10

    .line 268
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mClearButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 271
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 272
    return-void
.end method

.method public onDrawableStateChanged(Landroid/view/View;[I)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "state"    # [I

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 278
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_9

    .line 279
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 281
    :cond_9
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 249
    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mMaxLength:I

    if-lez v0, :cond_15

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mMaxLength:I

    if-ne v0, v1, :cond_15

    .line 250
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mListener:Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText$OnMaxLengthReachListener;

    if-eqz v0, :cond_15

    .line 251
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mListener:Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText$OnMaxLengthReachListener;

    invoke-interface {v0}, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText$OnMaxLengthReachListener;->onMaxLengthReachListener()V

    .line 255
    :cond_15
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->updateViews()V

    .line 256
    return-void
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .registers 3
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 134
    return-void
.end method

.method public setClearButtonClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .param p1, "clearButtonClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mClearButtonClickListener:Landroid/view/View$OnClickListener;

    .line 67
    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .registers 3
    .param p1, "filters"    # [Landroid/text/InputFilter;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 150
    return-void
.end method

.method public setHint(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mOriginalHint:Ljava/lang/CharSequence;

    .line 103
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mEditText:Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->getDecoreatedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method

.method public setImeOptions(I)V
    .registers 3
    .param p1, "imeOptions"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 138
    return-void
.end method

.method public setInputType(I)V
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 158
    return-void
.end method

.method public setMaxLength(I)V
    .registers 7
    .param p1, "length"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mMaxLength:I

    .line 113
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget v4, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mMaxLength:I

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 114
    return-void
.end method

.method public setMinimumHeight(I)V
    .registers 3
    .param p1, "minHeight"    # I

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 73
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 74
    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .registers 3
    .param p1, "l"    # Landroid/widget/TextView$OnEditorActionListener;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 146
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 174
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnKeyListener;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 79
    return-void
.end method

.method public setOnMaxLengthReachListener(Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText$OnMaxLengthReachListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText$OnMaxLengthReachListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 53
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mListener:Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText$OnMaxLengthReachListener;

    .line 54
    return-void
.end method

.method public setSearchIcon(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 165
    iput p1, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mSearchIconResId:I

    .line 167
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mOriginalHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mOriginalHint:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_13

    .line 168
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mOriginalHint:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 170
    :cond_13
    return-void
.end method

.method public setSelection(I)V
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 122
    return-void
.end method

.method public setSelection(II)V
    .registers 4
    .param p1, "start"    # I
    .param p2, "stop"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setSelection(II)V

    .line 126
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/widget/ClearableEditText;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 87
    return-void
.end method
