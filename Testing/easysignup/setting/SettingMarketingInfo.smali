.class public Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;
.super Landroid/preference/Preference;
.source "SettingMarketingInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$HttpRespHandler;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String;

.field private static final TOKEN_CHECK_MARKETING_INFO:I = 0x1f


# instance fields
.field httpRespHandler:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$HttpRespHandler;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mImageTip:Landroid/widget/ImageView;

.field private mIsUserAgreedNow:Z

.field private mMarketInformsDialog:Landroid/app/AlertDialog;

.field private mNeedIgnoreChangedListener:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->TAG:Ljava/lang/String;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mNeedIgnoreChangedListener:Z

    .line 137
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$HttpRespHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$HttpRespHandler;-><init>(Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$1;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->httpRespHandler:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$HttpRespHandler;

    .line 46
    sget v0, Lcom/samsung/android/coreapps/easysignup/R$layout;->layout_setting_checkbox:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->setLayoutResource(I)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mNeedIgnoreChangedListener:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mNeedIgnoreChangedListener:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->showProgressBar()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mIsUserAgreedNow:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mIsUserAgreedNow:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;)Landroid/widget/CheckBox;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mMarketInformsDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;Landroid/app/AlertDialog;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->closeDialog(Landroid/app/AlertDialog;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->dismissProgressBar()V

    return-void
.end method

.method private closeDialog(Landroid/app/AlertDialog;)V
    .registers 2
    .param p1, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 130
    if-nez p1, :cond_3

    .line 135
    :goto_2
    return-void

    .line 133
    :cond_3
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 134
    const/4 p1, 0x0

    .line 135
    goto :goto_2
.end method

.method private dismissProgressBar()V
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_5

    .line 180
    :goto_4
    return-void

    .line 178
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_4
.end method

.method private showProgressBar()V
    .registers 4

    .prologue
    .line 159
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 160
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/coreapps/easysignup/R$string;->in_progress:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 162
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$3;-><init>(Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 170
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 171
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 172
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 52
    const-string v2, "marketing_agreement"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    .line 53
    .local v0, "isChecked":Z
    iput-boolean v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mIsUserAgreedNow:Z

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBindView() isChecked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget v2, Lcom/samsung/android/coreapps/easysignup/R$id;->check_receiving_marketing_informs:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mCheckBox:Landroid/widget/CheckBox;

    .line 57
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 58
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v3, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$1;-><init>(Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 80
    sget v2, Lcom/samsung/android/coreapps/easysignup/R$id;->marketing_informs_tip:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mImageTip:Landroid/widget/ImageView;

    .line 81
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mImageTip:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    sget v2, Lcom/samsung/android/coreapps/easysignup/R$id;->marketing_informs:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 84
    .local v1, "rootLayout":Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 91
    .local v2, "id":I
    sget v3, Lcom/samsung/android/coreapps/easysignup/R$id;->marketing_informs_tip:I

    if-ne v2, v3, :cond_45

    .line 92
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mMarketInformsDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_14

    .line 94
    :try_start_d
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mMarketInformsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_4d
    .catchall {:try_start_d .. :try_end_12} :catchall_54

    .line 98
    iput-object v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mMarketInformsDialog:Landroid/app/AlertDialog;

    .line 101
    :cond_14
    :goto_14
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mMarketInformsDialog:Landroid/app/AlertDialog;

    if-nez v3, :cond_45

    .line 103
    :try_start_18
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 104
    .local v0, "context":Landroid/content/Context;
    const-string v3, "mMarketInformsDialog CLICK"

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/samsung/android/coreapps/easysignup/R$string;->receive_marketing_information:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/samsung/android/coreapps/easysignup/R$string;->enable_this_option:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/samsung/android/coreapps/easysignup/R$string;->ok:I

    new-instance v5, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$2;

    invoke-direct {v5, p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$2;-><init>(Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mMarketInformsDialog:Landroid/app/AlertDialog;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_45} :catch_58

    .line 120
    .end local v0    # "context":Landroid/content/Context;
    :cond_45
    :goto_45
    sget v3, Lcom/samsung/android/coreapps/easysignup/R$id;->marketing_informs:I

    if-ne v2, v3, :cond_4c

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->updateCheckMarket()V

    .line 123
    :cond_4c
    return-void

    .line 95
    :catch_4d
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4e
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_54

    .line 98
    iput-object v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mMarketInformsDialog:Landroid/app/AlertDialog;

    goto :goto_14

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_54
    move-exception v3

    iput-object v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mMarketInformsDialog:Landroid/app/AlertDialog;

    throw v3

    .line 114
    :catch_58
    move-exception v1

    .line 115
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_45
.end method

.method public updateCheckMarket()V
    .registers 3

    .prologue
    .line 126
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 127
    return-void

    .line 126
    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public updateGuiOnly()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mNeedIgnoreChangedListener:Z

    .line 141
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_17

    .line 142
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mCheckBox:Landroid/widget/CheckBox;

    const-string v1, "marketing_agreement"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 143
    :cond_17
    iput-boolean v3, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mNeedIgnoreChangedListener:Z

    .line 144
    return-void
.end method
