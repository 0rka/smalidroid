.class public Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;
.super Landroid/app/Activity;
.source "GreetingDialogActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlertDialog:Landroid/app/Dialog;

.field private mDataPopup:Landroid/app/Dialog;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mServiceState:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-class v0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->TAG:Ljava/lang/String;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->mServiceState:I

    .line 42
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$1;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;)Landroid/telephony/TelephonyManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;)Landroid/telephony/PhoneStateListener;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    .prologue
    .line 31
    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->mServiceState:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->mServiceState:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->mAlertDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->mAlertDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->mDataPopup:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->checkNetwork()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->proceedOK()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->sendCancelResult()V

    return-void
.end method

.method private alert(Ljava/lang/String;)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 115
    const-string v1, "alert() dialog"

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->mAlertDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 118
    const-string v1, "already dialog is shown, ignore"

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_1a
    return-void

    .line 122
    :cond_1b
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/samsung/android/coreapps/easysignup/R$string;->esu_information:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/samsung/android/coreapps/easysignup/R$string;->ok:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$2;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 131
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$3;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 140
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->mAlertDialog:Landroid/app/Dialog;

    .line 141
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_1a
.end method

.method private checkNetwork()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->isSimAbsent()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 100
    sget v2, Lcom/samsung/android/coreapps/easysignup/R$string;->check_your_sim_card:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->alert(Ljava/lang/String;)V

    .line 111
    :goto_10
    return v1

    .line 103
    :cond_11
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/network/NetState;->getNetState(Landroid/content/Context;)I

    move-result v0

    .line 105
    .local v0, "netState":I
    const/4 v2, -0x3

    if-eq v2, v0, :cond_2f

    const/4 v2, -0x2

    if-eq v2, v0, :cond_2f

    const-string v2, "is_forceauth_mode"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    if-nez v2, :cond_39

    iget v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->mServiceState:I

    if-eqz v2, :cond_39

    .line 106
    :cond_2f
    sget v2, Lcom/samsung/android/coreapps/easysignup/R$string;->unable_to_connect_to_the_network:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->alert(Ljava/lang/String;)V

    goto :goto_10

    .line 111
    :cond_39
    const/4 v1, 0x1

    goto :goto_10
.end method

.method private makeDataPopup()Landroid/app/Dialog;
    .registers 13

    .prologue
    .line 172
    const/4 v4, 0x0

    .line 177
    .local v4, "dialog":Landroid/app/Dialog;
    :try_start_1
    invoke-static {p0}, Lcom/samsung/android/coreapps/easysignup/network/NetState;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_89

    .line 178
    sget v7, Lcom/samsung/android/coreapps/easysignup/R$string;->use_network_connections:I

    .line 179
    .local v7, "titleResId":I
    sget v8, Lcom/samsung/android/coreapps/easysignup/R$string;->needs_to_use_network:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget v11, Lcom/samsung/android/coreapps/easysignup/R$string;->app_name:I

    invoke-virtual {p0, v11}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "bodyText":Ljava/lang/String;
    :goto_1b
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    sget v9, Lcom/samsung/android/coreapps/easysignup/R$layout;->data_noti_popup:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 192
    .local v0, "body":Landroid/view/View;
    sget v8, Lcom/samsung/android/coreapps/easysignup/R$id;->data_popup_content:I

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 193
    .local v3, "bodyTextView":Landroid/widget/TextView;
    sget v8, Lcom/samsung/android/coreapps/easysignup/R$id;->data_popup_checkbox:I

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 195
    .local v1, "bodyCheckBox":Landroid/widget/CheckBox;
    if-eqz v3, :cond_3b

    .line 196
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    :cond_3b
    if-eqz v1, :cond_58

    .line 200
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x10

    if-le v8, v9, :cond_54

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/samsung/android/coreapps/easysignup/R$dimen;->check_box_padding:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v6, v8

    .line 202
    .local v6, "padding":I
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1, v6, v8, v9, v10}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 205
    .end local v6    # "padding":I
    :cond_54
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 208
    :cond_58
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    sget v9, Lcom/samsung/android/coreapps/easysignup/R$string;->ok:I

    new-instance v10, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$6;

    invoke-direct {v10, p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$6;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    sget v9, Lcom/samsung/android/coreapps/easysignup/R$string;->cancel:I

    new-instance v10, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$5;

    invoke-direct {v10, p0}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$5;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$4;

    invoke-direct {v9, p0}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity$4;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 238
    .end local v0    # "body":Landroid/view/View;
    .end local v1    # "bodyCheckBox":Landroid/widget/CheckBox;
    .end local v2    # "bodyText":Ljava/lang/String;
    .end local v3    # "bodyTextView":Landroid/widget/TextView;
    .end local v7    # "titleResId":I
    :goto_88
    return-object v4

    .line 182
    :cond_89
    sget v7, Lcom/samsung/android/coreapps/easysignup/R$string;->IDS_ST_HEADER_WLAN_NOT_AVAILABLE_CHN:I

    .line 183
    .restart local v7    # "titleResId":I
    invoke-static {p0}, Lcom/samsung/android/coreapps/easysignup/network/NetState;->isWifiOn(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_98

    .line 184
    sget v8, Lcom/samsung/android/coreapps/easysignup/R$string;->IDS_ST_POP_WLAN_CONNECTION_REQUIRED_CONNECT_TO_WLAN_AND_TRY_AGAIN_CHN:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "bodyText":Ljava/lang/String;
    goto :goto_1b

    .line 187
    .end local v2    # "bodyText":Ljava/lang/String;
    :cond_98
    sget v8, Lcom/samsung/android/coreapps/easysignup/R$string;->IDS_ST_POP_WLAN_IS_NOT_TURNED_ON_TO_USE_THE_NETWORK_TURN_ON_WLAN_CHN:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->getString(I)Ljava/lang/String;
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9d} :catch_a0

    move-result-object v2

    .restart local v2    # "bodyText":Ljava/lang/String;
    goto/16 :goto_1b

    .line 234
    .end local v2    # "bodyText":Ljava/lang/String;
    .end local v7    # "titleResId":I
    :catch_a0
    move-exception v5

    .line 235
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_88
.end method

.method private proceedOK()V
    .registers 2

    .prologue
    .line 145
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->setResult(I)V

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->finish()V

    .line 147
    return-void
.end method

.method private sendCancelResult()V
    .registers 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_d

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->setResult(I)V

    .line 158
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->finish()V

    .line 160
    :cond_d
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 1

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 152
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->sendCancelResult()V

    .line 153
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const-string v0, "###onCreate"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 82
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->isSimAbsent()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 83
    sget v0, Lcom/samsung/android/coreapps/easysignup/R$string;->check_your_sim_card:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->alert(Ljava/lang/String;)V

    .line 89
    :goto_23
    return-void

    .line 87
    :cond_24
    const-string v0, "listen telephony manager"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_23
.end method

.method protected onDataPopupCancelClick()V
    .registers 4

    .prologue
    .line 243
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/coreapps/easysignup/network/NetState;->isWifiOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-static {p0}, Lcom/samsung/android/coreapps/easysignup/network/NetState;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 244
    sget v1, Lcom/samsung/android/coreapps/easysignup/R$string;->IDS_ST_POP_WLAN_CONNECTION_REQUIRED_CONNECT_TO_WLAN_AND_TRY_AGAIN_CHN:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1e

    .line 250
    :cond_1a
    :goto_1a
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->sendCancelResult()V

    .line 251
    return-void

    .line 246
    :catch_1e
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method protected onDataPopupOkClick(Z)V
    .registers 4
    .param p1, "isChecked"    # Z

    .prologue
    .line 254
    const-string v0, "data_popup_hide"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 256
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->proceedOK()V

    .line 257
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 93
    const-string v0, "###onDestroy"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 96
    return-void
.end method

.method protected showDataPopup()V
    .registers 2

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_15

    .line 164
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->makeDataPopup()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->mDataPopup:Landroid/app/Dialog;

    .line 165
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->mDataPopup:Landroid/app/Dialog;

    if-eqz v0, :cond_15

    .line 166
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/GreetingDialogActivity;->mDataPopup:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 169
    :cond_15
    return-void
.end method
