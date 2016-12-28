.class public Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;
.super Lcom/samsung/android/coreapps/common/ui/BaseActivity;
.source "AcceptDisclaimerActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$HttpRespHandler;
    }
.end annotation


# static fields
.field private static final SHOW_BUTTON_BACKGROUND:Ljava/lang/String; = "show_button_background"

.field private static final TAG:Ljava/lang/String;

.field private static final TOKEN_CREATE_TNC_INFO:I = 0x1f

.field private static final mDefaultURL:Ljava/lang/String; = "http://static.bada.com/contents/legal/234/default/"


# instance fields
.field private checkDisclaimer:Landroid/widget/CheckBox;

.field private checkMarket:Landroid/widget/CheckBox;

.field httpRespHandler:Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$HttpRespHandler;

.field mAlertDialog:Landroid/app/AlertDialog;

.field private mAuthType:Ljava/lang/String;

.field private mButtonAgree:Landroid/widget/TextView;

.field private mButtonDecline:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mIconCT:Landroid/view/View;

.field private mIconES:Landroid/view/View;

.field private mIconFM:Landroid/view/View;

.field private mImsi:Ljava/lang/String;

.field private mIntroductionCT:Landroid/view/View;

.field private mIntroductionES:Landroid/view/View;

.field private mIntroductionFM:Landroid/view/View;

.field private mMessenger:Landroid/os/Messenger;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field private mServiceIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    const-class v0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->TAG:Ljava/lang/String;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;-><init>()V

    .line 67
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mContext:Landroid/content/Context;

    .line 79
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mMessenger:Landroid/os/Messenger;

    .line 80
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mAuthType:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mServiceIdList:Ljava/util/ArrayList;

    .line 368
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$HttpRespHandler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$HttpRespHandler;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$1;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->httpRespHandler:Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$HttpRespHandler;

    .line 370
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->notifyAcceptDisclaimerResult(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;)Landroid/widget/CheckBox;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->checkMarket:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->showProgressBar()V

    return-void
.end method

.method private changeButtonBackground()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 444
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_button_background"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_27

    .line 446
    .local v0, "show":Z
    :goto_16
    if-eqz v0, :cond_26

    .line 447
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mButtonAgree:Landroid/widget/TextView;

    sget v2, Lcom/samsung/android/coreapps/easysignup/R$drawable;->bottom_btn_bg_for_show_button_background:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 448
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mButtonDecline:Landroid/widget/TextView;

    sget v2, Lcom/samsung/android/coreapps/easysignup/R$drawable;->bottom_btn_bg_for_show_button_background:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 450
    :cond_26
    return-void

    .end local v0    # "show":Z
    :cond_27
    move v0, v1

    .line 444
    goto :goto_16
.end method

.method private checkIsReady()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 474
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->checkDisclaimer:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    .line 477
    .local v3, "enabled":Z
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 478
    .local v2, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 479
    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 480
    .local v1, "density":F
    float-to-int v5, v1

    mul-int/lit8 v4, v5, 0x16

    .line 482
    .local v4, "pixels":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5f

    .line 483
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/coreapps/easysignup/R$drawable;->tw_btn_icon_previous_mtrl:I

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 484
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v8, v8, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 485
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mButtonAgree:Landroid/widget/TextView;

    invoke-virtual {v5, v0, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 492
    :goto_3a
    if-eqz v3, :cond_72

    .line 493
    const-string v5, "#252525"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 494
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mButtonAgree:Landroid/widget/TextView;

    const-string v6, "#252525"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 495
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mButtonAgree:Landroid/widget/TextView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 502
    :goto_59
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mButtonAgree:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 503
    return-void

    .line 487
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_5f
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/coreapps/easysignup/R$drawable;->tw_btn_icon_next_mtrl:I

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 488
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v8, v8, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 489
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mButtonAgree:Landroid/widget/TextView;

    invoke-virtual {v5, v7, v7, v0, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3a

    .line 498
    :cond_72
    const-string v5, "#323232"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 499
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mButtonAgree:Landroid/widget/TextView;

    const v6, 0x3eb33333    # 0.35f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 500
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mButtonAgree:Landroid/widget/TextView;

    const-string v6, "#323232"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_59
.end method

.method private createIntroductionIconView(I)Landroid/widget/LinearLayout;
    .registers 10
    .param p1, "serviceId"    # I

    .prologue
    const/4 v5, 0x0

    .line 337
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 338
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v6, Lcom/samsung/android/coreapps/easysignup/R$layout;->layout_introduction_icon:I

    invoke-virtual {v2, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 339
    .local v3, "introctionView":Landroid/widget/LinearLayout;
    sget v6, Lcom/samsung/android/coreapps/easysignup/R$id;->service_icon:I

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 340
    .local v4, "serviceIcon":Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/samsung/android/coreapps/common/util/PackageUtils;->getServiceAppInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 341
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const-string v6, "coreapps_service_icon"

    invoke-static {v0, v6}, Lcom/samsung/android/coreapps/common/util/PackageUtils;->readDrawable(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 343
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sdk app info : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    if-nez v1, :cond_3f

    move-object v3, v5

    .line 348
    .end local v3    # "introctionView":Landroid/widget/LinearLayout;
    :goto_3e
    return-object v3

    .line 347
    .restart local v3    # "introctionView":Landroid/widget/LinearLayout;
    :cond_3f
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3e
.end method

.method private createIntroductionView(I)Landroid/widget/LinearLayout;
    .registers 14
    .param p1, "serviceId"    # I

    .prologue
    const/4 v9, 0x0

    .line 314
    const-string v10, "layout_inflater"

    invoke-virtual {p0, v10}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 315
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v10, Lcom/samsung/android/coreapps/easysignup/R$layout;->layout_introduction:I

    invoke-virtual {v2, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 316
    .local v3, "introctionView":Landroid/widget/LinearLayout;
    sget v10, Lcom/samsung/android/coreapps/easysignup/R$id;->service_name:I

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 317
    .local v8, "serviceName":Landroid/widget/TextView;
    sget v10, Lcom/samsung/android/coreapps/easysignup/R$id;->service_introduction:I

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 318
    .local v7, "serviceIntroduction":Landroid/widget/TextView;
    sget v10, Lcom/samsung/android/coreapps/easysignup/R$id;->service_icon:I

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 320
    .local v6, "serviceIcon":Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/samsung/android/coreapps/common/util/PackageUtils;->getServiceAppInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 321
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const-string v10, "coreapps_service_name"

    invoke-static {v0, v10}, Lcom/samsung/android/coreapps/common/util/PackageUtils;->readString(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 322
    .local v5, "name":Ljava/lang/String;
    const-string v10, "coreapps_service_introduction"

    invoke-static {v0, v10}, Lcom/samsung/android/coreapps/common/util/PackageUtils;->readString(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 323
    .local v4, "introduction":Ljava/lang/String;
    const-string v10, "coreapps_service_icon"

    invoke-static {v0, v10}, Lcom/samsung/android/coreapps/common/util/PackageUtils;->readDrawable(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 325
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sdk app info : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " name "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " introduction "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->TAG:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    if-eqz v5, :cond_71

    if-eqz v4, :cond_71

    if-nez v1, :cond_73

    :cond_71
    move-object v3, v9

    .line 333
    .end local v3    # "introctionView":Landroid/widget/LinearLayout;
    :goto_72
    return-object v3

    .line 329
    .restart local v3    # "introctionView":Landroid/widget/LinearLayout;
    :cond_73
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_72
.end method

.method private dismissProgressBar()V
    .registers 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    .line 581
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 582
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 584
    :cond_c
    return-void
.end method

.method private initialize()V
    .registers 27

    .prologue
    .line 142
    const-string v20, "initialize"

    sget-object v21, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->TAG:Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v20

    if-eqz v20, :cond_26

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/ActionBar;->hide()V

    .line 149
    :cond_26
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mContext:Landroid/content/Context;

    .line 151
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mImsi:Ljava/lang/String;

    .line 153
    sget v20, Lcom/samsung/android/coreapps/easysignup/R$layout;->layout_accept_disclaimer:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->setContentView(I)V

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 156
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_71

    .line 157
    const-string v20, "extra_cb_handler"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Landroid/os/Messenger;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mMessenger:Landroid/os/Messenger;

    .line 158
    const-string v20, "auth_type"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mAuthType:Ljava/lang/String;

    .line 159
    const-string v20, "service_id_list"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mServiceIdList:Ljava/util/ArrayList;

    .line 162
    :cond_71
    sget v20, Lcom/samsung/android/coreapps/easysignup/R$id;->terms_and_conditions:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 163
    .local v18, "tvTnc":Landroid/widget/TextView;
    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v20

    or-int/lit8 v20, v20, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 164
    new-instance v20, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$1;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    sget v20, Lcom/samsung/android/coreapps/easysignup/R$id;->privacy_policy:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 173
    .local v17, "tvPP":Landroid/widget/TextView;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v20

    or-int/lit8 v20, v20, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 174
    new-instance v20, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$2;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    sget v20, Lcom/samsung/android/coreapps/easysignup/R$id;->check_accept_terms:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/CheckBox;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->checkDisclaimer:Landroid/widget/CheckBox;

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->checkDisclaimer:Landroid/widget/CheckBox;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 187
    new-instance v20, Landroid/widget/CheckBox;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->checkMarket:Landroid/widget/CheckBox;

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->checkMarket:Landroid/widget/CheckBox;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 190
    sget v20, Lcom/samsung/android/coreapps/easysignup/R$id;->button_right:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mButtonAgree:Landroid/widget/TextView;

    .line 191
    sget v20, Lcom/samsung/android/coreapps/easysignup/R$id;->button_left:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mButtonDecline:Landroid/widget/TextView;

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mButtonAgree:Landroid/widget/TextView;

    move-object/from16 v20, v0

    sget v21, Lcom/samsung/android/coreapps/easysignup/R$string;->start_now:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    sget-object v22, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mButtonDecline:Landroid/widget/TextView;

    move-object/from16 v20, v0

    sget v21, Lcom/samsung/android/coreapps/easysignup/R$string;->cancel:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    sget-object v22, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mButtonAgree:Landroid/widget/TextView;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mButtonAgree:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget v22, Lcom/samsung/android/coreapps/easysignup/R$string;->button:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mButtonDecline:Landroid/widget/TextView;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mButtonDecline:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget v22, Lcom/samsung/android/coreapps/easysignup/R$string;->button:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mButtonAgree:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mButtonDecline:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    sget v20, Lcom/samsung/android/coreapps/easysignup/R$id;->top:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 203
    .local v16, "top":Landroid/widget/LinearLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 v0, v20

    iget v13, v0, Landroid/content/res/Configuration;->orientation:I

    .line 204
    .local v13, "orientation":I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v0, v13, :cond_340

    .line 205
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 211
    :cond_1fb
    :goto_1fb
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->checkIsReady()V

    .line 213
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->changeButtonBackground()V

    .line 216
    const-string v20, "tnc_url"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 217
    .local v11, "mTNCUrl":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_211

    .line 218
    const-string v11, "http://static.bada.com/contents/legal/234/default/general_esu.html"

    .line 220
    :cond_211
    const-string v20, "pp_url"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 221
    .local v10, "mPPUrl":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_221

    .line 222
    const-string v10, "http://static.bada.com/contents/legal/234/default/pp_esu.html"

    .line 224
    :cond_221
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mTNCUrl : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " mPPUrl : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->TAG:Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    sget v20, Lcom/samsung/android/coreapps/easysignup/R$id;->notice_privacy:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 227
    .local v12, "np":Landroid/widget/TextView;
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->isAuth(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_351

    .line 228
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    :cond_268
    :goto_268
    sget v20, Lcom/samsung/android/coreapps/easysignup/R$id;->introduction_ct:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mIntroductionCT:Landroid/view/View;

    .line 247
    sget v20, Lcom/samsung/android/coreapps/easysignup/R$id;->introduction_es:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mIntroductionES:Landroid/view/View;

    .line 248
    sget v20, Lcom/samsung/android/coreapps/easysignup/R$id;->introduction_fm:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mIntroductionFM:Landroid/view/View;

    .line 249
    sget v20, Lcom/samsung/android/coreapps/easysignup/R$id;->introduction_ct_icon:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mIconCT:Landroid/view/View;

    .line 250
    sget v20, Lcom/samsung/android/coreapps/easysignup/R$id;->introduction_es_icon:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mIconES:Landroid/view/View;

    .line 251
    sget v20, Lcom/samsung/android/coreapps/easysignup/R$id;->introduction_fm_icon:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mIconFM:Landroid/view/View;

    .line 252
    sget v20, Lcom/samsung/android/coreapps/easysignup/R$id;->introduce_message_text:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 255
    .local v5, "introduce":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mServiceIdList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_521

    .line 256
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "add service introduction : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mServiceIdList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->TAG:Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2ff
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mServiceIdList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v3, v0, :cond_4d9

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mServiceIdList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 259
    .local v15, "sid":I
    const/16 v20, 0x4

    move/from16 v0, v20

    if-ge v15, v0, :cond_4a9

    .line 260
    if-nez v15, :cond_45e

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mIntroductionCT:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mIconCT:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 257
    :cond_33d
    :goto_33d
    add-int/lit8 v3, v3, 0x1

    goto :goto_2ff

    .line 206
    .end local v3    # "i":I
    .end local v5    # "introduce":Landroid/widget/TextView;
    .end local v10    # "mPPUrl":Ljava/lang/String;
    .end local v11    # "mTNCUrl":Ljava/lang/String;
    .end local v12    # "np":Landroid/widget/TextView;
    .end local v15    # "sid":I
    :cond_340
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v0, v13, :cond_1fb

    .line 207
    const/16 v20, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1fb

    .line 230
    .restart local v10    # "mPPUrl":Ljava/lang/String;
    .restart local v11    # "mTNCUrl":Ljava/lang/String;
    .restart local v12    # "np":Landroid/widget/TextView;
    :cond_351
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CscUtil;->isAusDevice()Z

    move-result v20

    if-eqz v20, :cond_41c

    .line 231
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget v22, Lcom/samsung/android/coreapps/easysignup/R$string;->notice_privacy_austrailia:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "<a href=\"https://account.samsung.com/membership/pp?paramLocale=en_AU\">"

    aput-object v24, v22, v23

    const/16 v23, 0x1

    const-string v24, "</a>"

    aput-object v24, v22, v23

    const/16 v23, 0x2

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "<a href=\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\">"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x3

    const-string v24, "</a>"

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mAuthType:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3d4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mAuthType:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v22, "MT"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_419

    :cond_3d4
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v22, Lcom/samsung/android/coreapps/easysignup/R$string;->notice_sms_charge:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    :goto_3f9
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_268

    .line 231
    :cond_419
    const-string v20, ""

    goto :goto_3f9

    .line 239
    :cond_41c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mAuthType:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_432

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mAuthType:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "MT"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_268

    .line 240
    :cond_432
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Lcom/samsung/android/coreapps/easysignup/R$string;->notice_sms_charge:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_268

    .line 263
    .restart local v3    # "i":I
    .restart local v5    # "introduce":Landroid/widget/TextView;
    .restart local v15    # "sid":I
    :cond_45e
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v15, v0, :cond_47c

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mIntroductionES:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mIconES:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_33d

    .line 266
    :cond_47c
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v15, v0, :cond_33d

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mIntroductionFM:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mIconFM:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 269
    sget v20, Lcom/samsung/android/coreapps/easysignup/R$string;->introduce_message:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_33d

    .line 272
    :cond_4a9
    sget v20, Lcom/samsung/android/coreapps/easysignup/R$id;->introduction_layout_icon:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 274
    .local v9, "layout":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->createIntroductionIconView(I)Landroid/widget/LinearLayout;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 276
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->createIntroductionView(I)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 277
    .local v7, "introductionLayoutView":Landroid/widget/LinearLayout;
    if-eqz v7, :cond_33d

    .line 278
    sget v20, Lcom/samsung/android/coreapps/easysignup/R$id;->introduction_layout:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 280
    .local v6, "introductionLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_33d

    .line 284
    .end local v6    # "introductionLayout":Landroid/widget/LinearLayout;
    .end local v7    # "introductionLayoutView":Landroid/widget/LinearLayout;
    .end local v9    # "layout":Landroid/widget/LinearLayout;
    .end local v15    # "sid":I
    :cond_4d9
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/PackageUtils;->getSDKServiceList()Ljava/util/ArrayList;

    move-result-object v14

    .line 285
    .local v14, "sdkServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    :goto_4de
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v3, v0, :cond_521

    .line 286
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 287
    .restart local v15    # "sid":I
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->createIntroductionIconView(I)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 288
    .local v8, "introductionView":Landroid/widget/LinearLayout;
    if-eqz v8, :cond_507

    .line 289
    sget v20, Lcom/samsung/android/coreapps/easysignup/R$id;->introduction_layout_icon:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 291
    .local v2, "IconLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 294
    .end local v2    # "IconLayout":Landroid/widget/LinearLayout;
    :cond_507
    sget v20, Lcom/samsung/android/coreapps/easysignup/R$id;->introduction_layout:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 297
    .restart local v6    # "introductionLayout":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->createIntroductionView(I)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 298
    .restart local v7    # "introductionLayoutView":Landroid/widget/LinearLayout;
    if-eqz v7, :cond_51e

    .line 299
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 285
    :cond_51e
    add-int/lit8 v3, v3, 0x1

    goto :goto_4de

    .line 303
    .end local v3    # "i":I
    .end local v6    # "introductionLayout":Landroid/widget/LinearLayout;
    .end local v7    # "introductionLayoutView":Landroid/widget/LinearLayout;
    .end local v8    # "introductionView":Landroid/widget/LinearLayout;
    .end local v14    # "sdkServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v15    # "sid":I
    :cond_521
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->getWindow()Landroid/view/Window;

    move-result-object v19

    .line 304
    .local v19, "window":Landroid/view/Window;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    sget v21, Lcom/samsung/android/coreapps/easysignup/R$color;->accept_disclaimer_background:I

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_550

    .line 306
    const/16 v20, 0x400

    const/16 v21, 0x400

    invoke-virtual/range {v19 .. v21}, Landroid/view/Window;->setFlags(II)V

    .line 311
    :goto_54f
    return-void

    .line 309
    :cond_550
    const/16 v20, 0x400

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_54f
.end method

.method private notifyAcceptDisclaimerResult(Z)V
    .registers 7
    .param p1, "result"    # Z

    .prologue
    const/4 v4, 0x1

    .line 507
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 508
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x32

    iput v2, v1, Landroid/os/Message;->what:I

    .line 510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyAcceptDisclaimerResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    if-ne p1, v4, :cond_4e

    .line 513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mI = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mImsi:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/coreapps/common/util/CommonLog;->debugStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 520
    :goto_44
    :try_start_44
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_4d

    .line 521
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4d} :catch_51

    .line 526
    :cond_4d
    :goto_4d
    return-void

    .line 516
    :cond_4e
    iput v4, v1, Landroid/os/Message;->arg1:I

    goto :goto_44

    .line 523
    :catch_51
    move-exception v0

    .line 524
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4d
.end method

.method private requestPermission()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 111
    const/4 v2, 0x7

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v4

    const/4 v2, 0x1

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "android.permission.READ_SMS"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "android.permission.SEND_SMS"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "android.permission.RECEIVE_SMS"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "android.permission.READ_CONTACTS"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "android.permission.WRITE_CONTACTS"

    aput-object v3, v0, v2

    .line 120
    .local v0, "PERMISSIONS":[Ljava/lang/String;
    invoke-static {p0, v0, v4}, Lcom/samsung/android/coreapps/common/util/PermissionUtils;->checkPermissions(Landroid/app/Activity;[Ljava/lang/String;I)I

    move-result v1

    .line 121
    .local v1, "result":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_37

    .line 122
    const-string v2, "ERROR"

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 126
    :cond_36
    :goto_36
    return-void

    .line 123
    :cond_37
    if-nez v1, :cond_36

    .line 124
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->initialize()V

    goto :goto_36
.end method

.method private showProgressBar()V
    .registers 4

    .prologue
    .line 563
    const-string v0, "showProgressBar"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 565
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 566
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/coreapps/easysignup/R$string;->in_progress:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 568
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$6;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 574
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 575
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 577
    :cond_3c
    return-void
.end method


# virtual methods
.method public cancelAction()V
    .registers 5

    .prologue
    .line 460
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 461
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->stopService(Landroid/content/Intent;)Z

    .line 463
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 464
    .local v1, "i2":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->stopService(Landroid/content/Intent;)Z

    .line 466
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 467
    .local v2, "i3":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->stopService(Landroid/content/Intent;)Z

    .line 469
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->setResult(I)V

    .line 470
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->finish()V

    .line 471
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 454
    invoke-super {p0}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;->onBackPressed()V

    .line 456
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->cancelAction()V

    .line 457
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 389
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    sget v1, Lcom/samsung/android/coreapps/easysignup/R$id;->check_receiving_marketing_informs:I

    if-eq v0, v1, :cond_b

    .line 390
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->checkIsReady()V

    .line 392
    :cond_b
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 396
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    .line 398
    .local v7, "id":I
    sget v0, Lcom/samsung/android/coreapps/easysignup/R$id;->button_left:I

    if-ne v7, v0, :cond_c

    .line 399
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->cancelAction()V

    .line 413
    :cond_b
    :goto_b
    return-void

    .line 401
    :cond_c
    sget v0, Lcom/samsung/android/coreapps/easysignup/R$id;->button_right:I

    if-ne v7, v0, :cond_32

    .line 402
    const/16 v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->httpRespHandler:Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$HttpRespHandler;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->checkMarket:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mImsi:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mImsi:Ljava/lang/String;

    invoke-static {v5}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getMCC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$3;

    invoke-direct {v6, p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$3;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;)V

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/AcceptDisclaimerManager;->createTNCInfoForEasySignup(ILandroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 408
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->showProgressBar()V

    goto :goto_b

    .line 410
    :cond_32
    sget v0, Lcom/samsung/android/coreapps/easysignup/R$id;->text_accept_terms:I

    if-ne v7, v0, :cond_b

    .line 411
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->checkDisclaimer:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->checkDisclaimer:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_45

    const/4 v0, 0x1

    :goto_41
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_b

    :cond_45
    const/4 v0, 0x0

    goto :goto_41
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 9
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/16 v4, 0x400

    .line 418
    invoke-super {p0, p1}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 420
    sget v2, Lcom/samsung/android/coreapps/easysignup/R$id;->top:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 421
    .local v0, "top":Landroid/widget/LinearLayout;
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3b

    .line 422
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 428
    :cond_17
    :goto_17
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 429
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 431
    :cond_24
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 432
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v6, :cond_45

    .line 433
    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 440
    :goto_37
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->changeButtonBackground()V

    .line 441
    return-void

    .line 423
    .end local v1    # "window":Landroid/view/Window;
    :cond_3b
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v6, :cond_17

    .line 424
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_17

    .line 437
    .restart local v1    # "window":Landroid/view/Window;
    :cond_45
    invoke-virtual {v1, v4}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_37
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const-string v0, "onCreate"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    if-eqz p1, :cond_10

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->cancelAction()V

    .line 108
    :goto_f
    return-void

    .line 107
    :cond_10
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->requestPermission()V

    goto :goto_f
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 363
    invoke-super {p0}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;->onDestroy()V

    .line 365
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->dismissProgressBar()V

    .line 366
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 354
    const v0, 0x102002c

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 355
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->onBackPressed()V

    .line 358
    :cond_c
    invoke-super {p0, p1}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 130
    if-nez p1, :cond_b

    .line 131
    invoke-static {p3}, Lcom/samsung/android/coreapps/common/util/PermissionUtils;->verifyPermissions([I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 132
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->initialize()V

    .line 138
    :cond_b
    :goto_b
    return-void

    .line 134
    :cond_c
    const-string v0, "ALL PERMISSION DENIED"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->finish()V

    goto :goto_b
.end method

.method protected showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_43

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_43

    .line 530
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->dismissProgressBar()V

    .line 532
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/samsung/android/coreapps/easysignup/R$string;->retry:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$5;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/samsung/android/coreapps/easysignup/R$string;->cancel:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$4;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 557
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 558
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 560
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_43
    return-void
.end method
