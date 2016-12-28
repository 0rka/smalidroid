.class public Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;
.super Lcom/samsung/android/coreapps/common/ui/BaseActivity;
.source "SmsAuthenticatorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final AUTH_SMS_PREFIX_CODE:Ljava/lang/String; = "ChatON : "

.field private static final CODE_LENGTH:I = 0x4

.field private static final FINAL_KEY:Ljava/lang/String; = ": "

.field public static final KEY_MSISDN:Ljava/lang/String; = "msisdn"

.field public static final RCODE_REACHED_ACS:J = 0xee7146e4L

.field public static final RCODE_REACHED_SMS:J = 0xee7146e3L

.field public static final RCODE_REQUESTED_RIGHT_BEFORE:J = 0xee7146e2L

.field public static final REQUEST_CODE_ACS:I = 0x65

.field public static final REQUEST_CODE_COUNTRY:I = 0x64

.field private static final SHOW_BUTTON_BACKGROUND:Ljava/lang/String; = "show_button_background"

.field protected static final TAG:Ljava/lang/String;

.field private static final TIME_OUT:J = 0xea60L

.field public static final TOKEN_MT_AUTHENTICATE:I = 0x2a

.field public static final TOKEN_REQUEST_AUTH_CODE:I = 0x29


# instance fields
.field private final AUTH_METHOD_ACS:Ljava/lang/String;

.field private final AUTH_METHOD_SMS:Ljava/lang/String;

.field private final MT_TYPE_ACS:Ljava/lang/String;

.field private final MT_TYPE_SMS:Ljava/lang/String;

.field private allCountries:[Ljava/lang/CharSequence;

.field private countryCode:[Ljava/lang/CharSequence;

.field private countryISO:[Ljava/lang/CharSequence;

.field private countryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private countryMap2:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAuthMethods:[Ljava/lang/String;

.field private mAuthType:Ljava/lang/String;

.field private mButtonCancel:Landroid/widget/TextView;

.field private mButtonOK:Landroid/widget/TextView;

.field private mCccText:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mCountryCodeLetter2:Ljava/lang/String;

.field private mCountryNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEditArea:Landroid/widget/EditText;

.field private mEditTextPhoneNumber:Landroid/widget/EditText;

.field private mISOcountryCode:Ljava/lang/String;

.field private mImsi:Ljava/lang/String;

.field private mIsACSAvailable:Z

.field private mIsSMSAvailable:Z

.field private mMessenger:Landroid/os/Messenger;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRadioACS:Landroid/widget/RadioButton;

.field private mRadioACSLayout:Landroid/widget/LinearLayout;

.field private mRadioSMS:Landroid/widget/RadioButton;

.field private mRadioSMSLayout:Landroid/widget/LinearLayout;

.field private mTimer:Landroid/os/CountDownTimer;

.field private mTopArea:Landroid/widget/TextView;

.field private mVerificationMethodSelector:Landroid/widget/LinearLayout;

.field private mtAuthHandler:Landroid/os/Handler;

.field private progressCloser:Ljava/lang/Runnable;

.field private reqAuthCodeHandler:Landroid/os/Handler;

.field smsReceiver:Landroid/content/BroadcastReceiver;

.field private successResp:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthResp;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    const-class v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;-><init>()V

    .line 103
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mMessenger:Landroid/os/Messenger;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->countryMap:Ljava/util/Map;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->countryMap2:Ljava/util/Map;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mCountryNames:Ljava/util/List;

    .line 119
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->successResp:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthResp;

    .line 131
    const-string v0, "SMS"

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->MT_TYPE_SMS:Ljava/lang/String;

    .line 132
    const-string v0, "ACS"

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->MT_TYPE_ACS:Ljava/lang/String;

    .line 134
    const-string v0, "SMS"

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->AUTH_METHOD_SMS:Ljava/lang/String;

    .line 135
    const-string v0, "ACS"

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->AUTH_METHOD_ACS:Ljava/lang/String;

    .line 144
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$1;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->progressCloser:Ljava/lang/Runnable;

    .line 539
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$7;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->smsReceiver:Landroid/content/BroadcastReceiver;

    .line 626
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$8;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->reqAuthCodeHandler:Landroid/os/Handler;

    .line 672
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$9;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mtAuthHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mEditTextPhoneNumber:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mButtonOK:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->authenticateMTDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1102(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthResp;)Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthResp;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;
    .param p1, "x1"    # Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthResp;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->successResp:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthResp;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->notifyMTAuthResult(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mCountryCodeLetter2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mIsSMSAvailable:Z

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mIsACSAvailable:Z

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mVerificationMethodSelector:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mAuthType:Ljava/lang/String;

    return-object v0
.end method

.method private authenticateMTDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "authCode"    # Ljava/lang/String;
    .param p3, "authType"    # Ljava/lang/String;

    .prologue
    .line 498
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthParams;

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p3, p2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    .local v0, "params":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthParams;
    const/16 v1, 0x2a

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mtAuthHandler:Landroid/os/Handler;

    new-instance v3, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mtAuthHandler:Landroid/os/Handler;

    invoke-direct {v3, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;-><init>(Landroid/os/Handler;)V

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->authenticate(ILandroid/os/Handler;Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthParams;Lcom/android/volley/Response$ErrorListener;)V

    .line 500
    return-void
.end method

.method private changeButtonBackground()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 726
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_button_background"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_27

    .line 728
    .local v0, "show":Z
    :goto_16
    if-eqz v0, :cond_26

    .line 729
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mButtonOK:Landroid/widget/TextView;

    sget v2, Lcom/samsung/android/coreapps/easysignuplib/R$drawable;->bottom_btn_bg_for_show_button_background:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 730
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mButtonCancel:Landroid/widget/TextView;

    sget v2, Lcom/samsung/android/coreapps/easysignuplib/R$drawable;->bottom_btn_bg_for_show_button_background:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 732
    :cond_26
    return-void

    .end local v0    # "show":Z
    :cond_27
    move v0, v1

    .line 726
    goto :goto_16
.end method

.method private getCountryCallingCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "mImsi"    # Ljava/lang/String;

    .prologue
    .line 603
    const-string v2, "[MT]getCountryCallingCode begin"

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCccText = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mCccText:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const/4 v0, 0x0

    .line 609
    .local v0, "ccc":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mCccText:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6c

    .line 610
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mCountryNames:Ljava/util/List;

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mCccText:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 611
    .local v1, "index":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    if-ltz v1, :cond_6c

    .line 613
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->countryCode:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 617
    .end local v1    # "index":I
    :cond_6c
    if-nez v0, :cond_76

    .line 618
    invoke-static {p1}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getMCC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/coreapps/common/util/NumberUtils;->convertMCC2CountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 620
    :cond_76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ccc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string v2, "[MT]getCountryCallingCode end"

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    return-object v0
.end method

.method private initialize()V
    .registers 31

    .prologue
    .line 193
    const-string v26, "initialize"

    sget-object v27, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static/range {v26 .. v27}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 197
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mContext:Landroid/content/Context;

    .line 198
    sget v26, Lcom/samsung/android/coreapps/easysignuplib/R$layout;->layout_sms_authenticator:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->setContentView(I)V

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    .line 201
    .local v15, "intent":Landroid/content/Intent;
    const-string v26, "extra_cb_handler"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v26

    check-cast v26, Landroid/os/Messenger;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mMessenger:Landroid/os/Messenger;

    .line 202
    const-string v26, "imsi"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mImsi:Ljava/lang/String;

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mImsi:Ljava/lang/String;

    move-object/from16 v26, v0

    if-nez v26, :cond_53

    .line 204
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mImsi:Ljava/lang/String;

    .line 207
    :cond_53
    const-string v26, "extra_auth_methods"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_6b

    .line 208
    const-string v26, "extra_auth_methods"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mAuthMethods:[Ljava/lang/String;

    .line 211
    :cond_6b
    sget v26, Lcom/samsung/android/coreapps/easysignuplib/R$id;->topArea:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mTopArea:Landroid/widget/TextView;

    .line 212
    sget v26, Lcom/samsung/android/coreapps/easysignuplib/R$id;->localNo:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/EditText;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mEditArea:Landroid/widget/EditText;

    .line 213
    sget v26, Lcom/samsung/android/coreapps/easysignuplib/R$id;->phoneNo2:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/EditText;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mEditTextPhoneNumber:Landroid/widget/EditText;

    .line 214
    sget v26, Lcom/samsung/android/coreapps/easysignuplib/R$id;->conutry_calling_code:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/Button;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mCccText:Landroid/widget/Button;

    .line 216
    sget v26, Lcom/samsung/android/coreapps/easysignuplib/R$id;->radio_sms:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/RadioButton;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mRadioSMS:Landroid/widget/RadioButton;

    .line 217
    sget v26, Lcom/samsung/android/coreapps/easysignuplib/R$id;->radio_acs:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/RadioButton;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mRadioACS:Landroid/widget/RadioButton;

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mRadioSMS:Landroid/widget/RadioButton;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mRadioACS:Landroid/widget/RadioButton;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 221
    sget v26, Lcom/samsung/android/coreapps/easysignuplib/R$id;->radio_sms_layout:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mRadioSMSLayout:Landroid/widget/LinearLayout;

    .line 222
    sget v26, Lcom/samsung/android/coreapps/easysignuplib/R$id;->radio_acs_layout:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mRadioACSLayout:Landroid/widget/LinearLayout;

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mRadioSMSLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mRadioACSLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    sget v26, Lcom/samsung/android/coreapps/easysignuplib/R$id;->button_right:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mButtonOK:Landroid/widget/TextView;

    .line 227
    sget v26, Lcom/samsung/android/coreapps/easysignuplib/R$id;->button_left:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mButtonCancel:Landroid/widget/TextView;

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mButtonOK:Landroid/widget/TextView;

    move-object/from16 v26, v0

    sget v27, Lcom/samsung/android/coreapps/easysignuplib/R$string;->ok:I

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    sget-object v28, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mButtonCancel:Landroid/widget/TextView;

    move-object/from16 v26, v0

    sget v27, Lcom/samsung/android/coreapps/easysignuplib/R$string;->cancel:I

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    sget-object v28, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mButtonOK:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mButtonOK:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mEditTextPhoneNumber:Landroid/widget/EditText;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/EditText;->length()I

    move-result v26

    if-eqz v26, :cond_305

    const/16 v26, 0x1

    :goto_1a2
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mButtonOK:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->isEnabled()Z

    move-result v10

    .line 237
    .local v10, "enabled":Z
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    .line 238
    .local v9, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 239
    iget v8, v9, Landroid/util/DisplayMetrics;->density:F

    .line 240
    .local v8, "density":F
    float-to-int v0, v8

    move/from16 v26, v0

    mul-int/lit8 v22, v26, 0x16

    .line 242
    .local v22, "pixels":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_309

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    sget v27, Lcom/samsung/android/coreapps/easysignuplib/R$drawable;->tw_btn_icon_previous_mtrl:I

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 244
    .local v7, "d":Landroid/graphics/drawable/Drawable;
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v22

    move/from16 v3, v22

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mButtonOK:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 252
    :goto_20e
    if-eqz v10, :cond_33d

    .line 253
    const-string v26, "#000000"

    invoke-static/range {v26 .. v26}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v26

    sget-object v27, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v7, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mButtonOK:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/high16 v27, -0x1000000

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setTextColor(I)V

    .line 260
    :goto_22a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mButtonCancel:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    sget v26, Lcom/samsung/android/coreapps/easysignuplib/R$id;->choose_verification_method:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mVerificationMethodSelector:Landroid/widget/LinearLayout;

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mEditArea:Landroid/widget/EditText;

    move-object/from16 v26, v0

    const v27, 0x10000005

    invoke-virtual/range {v26 .. v27}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mImsi:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getMCC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/coreapps/common/util/NumberUtils;->getCountryCodeLetter2FromMCC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mCountryCodeLetter2:Ljava/lang/String;

    .line 268
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    sget v28, Lcom/samsung/android/coreapps/easysignuplib/R$string;->esu_a_verification_code_will_be_sent:I

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    sget v28, Lcom/samsung/android/coreapps/easysignuplib/R$string;->esu_enter_your_phone_number:I

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 270
    .local v25, "topString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mTopArea:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mAuthMethods:[Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_37c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mAuthMethods:[Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    if-lez v26, :cond_37c

    .line 273
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mAuthMethods:[Ljava/lang/String;

    .local v4, "arr$":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_2be
    move/from16 v0, v17

    if-ge v13, v0, :cond_359

    aget-object v5, v4, v13

    .line 274
    .local v5, "authMethod":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Authmethods : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    sget-object v27, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static/range {v26 .. v27}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v26, "ACS"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2f0

    .line 276
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mIsACSAvailable:Z

    .line 277
    :cond_2f0
    const-string v26, "SMS"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_302

    .line 278
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mIsSMSAvailable:Z

    .line 273
    :cond_302
    add-int/lit8 v13, v13, 0x1

    goto :goto_2be

    .line 233
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "authMethod":Ljava/lang/String;
    .end local v7    # "d":Landroid/graphics/drawable/Drawable;
    .end local v8    # "density":F
    .end local v9    # "dm":Landroid/util/DisplayMetrics;
    .end local v10    # "enabled":Z
    .end local v13    # "i$":I
    .end local v17    # "len$":I
    .end local v22    # "pixels":I
    .end local v25    # "topString":Ljava/lang/String;
    :cond_305
    const/16 v26, 0x0

    goto/16 :goto_1a2

    .line 247
    .restart local v8    # "density":F
    .restart local v9    # "dm":Landroid/util/DisplayMetrics;
    .restart local v10    # "enabled":Z
    .restart local v22    # "pixels":I
    :cond_309
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    sget v27, Lcom/samsung/android/coreapps/easysignuplib/R$drawable;->tw_btn_icon_next_mtrl:I

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 248
    .restart local v7    # "d":Landroid/graphics/drawable/Drawable;
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v22

    move/from16 v3, v22

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mButtonOK:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v7, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_20e

    .line 257
    :cond_33d
    const-string v26, "#FF888888"

    invoke-static/range {v26 .. v26}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v26

    sget-object v27, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v7, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mButtonOK:Landroid/widget/TextView;

    move-object/from16 v26, v0

    sget v27, Lcom/samsung/android/coreapps/easysignuplib/R$color;->bottom_button_color:I

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_22a

    .line 281
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v13    # "i$":I
    .restart local v17    # "len$":I
    .restart local v25    # "topString":Ljava/lang/String;
    :cond_359
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mIsSMSAvailable:Z

    move/from16 v26, v0

    if-eqz v26, :cond_49d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mIsACSAvailable:Z

    move/from16 v26, v0

    if-nez v26, :cond_49d

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mVerificationMethodSelector:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 283
    const-string v26, "SMS"

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mAuthType:Ljava/lang/String;

    .line 290
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v17    # "len$":I
    :cond_37c
    :goto_37c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mCountryCodeLetter2:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3e1

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mCountryCodeLetter2:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "AR"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3ae

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mCountryCodeLetter2:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "MX"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3ae

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mCountryCodeLetter2:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "BR"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_4c2

    .line 292
    :cond_3ae
    sget v26, Lcom/samsung/android/coreapps/easysignuplib/R$id;->localNoLayout:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 293
    .local v18, "localNoLayout":Landroid/widget/LinearLayout;
    const/16 v26, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 295
    sget v26, Lcom/samsung/android/coreapps/easysignuplib/R$id;->phoneNo2Label:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 296
    .local v20, "phoneNo2Label":Landroid/widget/TextView;
    const/16 v26, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mEditArea:Landroid/widget/EditText;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/EditText;->requestFocus()Z

    .line 311
    .end local v18    # "localNoLayout":Landroid/widget/LinearLayout;
    .end local v20    # "phoneNo2Label":Landroid/widget/TextView;
    :cond_3e1
    :goto_3e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mCccText:Landroid/widget/Button;

    move-object/from16 v26, v0

    new-instance v27, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$2;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$2;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)V

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    sget v27, Lcom/samsung/android/coreapps/easysignuplib/R$array;->country:I

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->allCountries:[Ljava/lang/CharSequence;

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    sget v27, Lcom/samsung/android/coreapps/easysignuplib/R$array;->country_code:I

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->countryCode:[Ljava/lang/CharSequence;

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    sget v27, Lcom/samsung/android/coreapps/easysignuplib/R$array;->ISO_country_code_Letter2:I

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->countryISO:[Ljava/lang/CharSequence;

    .line 324
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->allCountries:[Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v12, v0, :cond_53c

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->countryMap:Ljava/util/Map;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->allCountries:[Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    aget-object v27, v27, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->countryCode:[Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    aget-object v28, v28, v12

    invoke-interface/range {v26 .. v28}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->countryMap2:Ljava/util/Map;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->countryISO:[Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    aget-object v27, v27, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->allCountries:[Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    aget-object v28, v28, v12

    invoke-interface/range {v26 .. v28}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->allCountries:[Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    aget-object v26, v26, v12

    move-object/from16 v0, v26

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 328
    .local v6, "builder":Ljava/lang/StringBuilder;
    const-string v26, " (+"

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->countryCode:[Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    aget-object v27, v27, v12

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ")"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mCountryNames:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    add-int/lit8 v12, v12, 0x1

    goto :goto_424

    .line 284
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .end local v12    # "i":I
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v13    # "i$":I
    .restart local v17    # "len$":I
    :cond_49d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mIsSMSAvailable:Z

    move/from16 v26, v0

    if-nez v26, :cond_37c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mIsACSAvailable:Z

    move/from16 v26, v0

    if-eqz v26, :cond_37c

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mVerificationMethodSelector:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 286
    const-string v26, "ACS"

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mAuthType:Ljava/lang/String;

    goto/16 :goto_37c

    .line 298
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v17    # "len$":I
    :cond_4c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mCountryCodeLetter2:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "IN"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_519

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mVerificationMethodSelector:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 300
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    sget v28, Lcom/samsung/android/coreapps/easysignuplib/R$string;->we_recommend_using_a_voice_call:I

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    sget v28, Lcom/samsung/android/coreapps/easysignuplib/R$string;->if_your_registered_for_dnd_service:I

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 302
    .local v24, "string":Ljava/lang/String;
    sget v26, Lcom/samsung/android/coreapps/easysignuplib/R$id;->guide_to_acs:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 303
    .local v11, "guide":Landroid/widget/TextView;
    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3e1

    .line 304
    .end local v11    # "guide":Landroid/widget/TextView;
    .end local v24    # "string":Ljava/lang/String;
    :cond_519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mCountryCodeLetter2:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "MM"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3e1

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mVerificationMethodSelector:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 306
    const-string v26, "ACS"

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mAuthType:Ljava/lang/String;

    goto/16 :goto_3e1

    .line 332
    .restart local v12    # "i":I
    :cond_53c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mEditTextPhoneNumber:Landroid/widget/EditText;

    move-object/from16 v26, v0

    new-instance v27, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$3;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$3;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)V

    invoke-virtual/range {v26 .. v27}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mEditTextPhoneNumber:Landroid/widget/EditText;

    move-object/from16 v26, v0

    new-instance v27, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$4;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$4;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)V

    invoke-virtual/range {v26 .. v27}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mImsi:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getMCC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/coreapps/common/util/NumberUtils;->getPositionMCC2CountryCode(Ljava/lang/String;)I

    move-result v23

    .line 371
    .local v23, "position":I
    if-ltz v23, :cond_5f5

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mCccText:Landroid/widget/Button;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mCountryNames:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/CharSequence;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 377
    :goto_58d
    new-instance v16, Landroid/content/IntentFilter;

    const-string v26, "android.provider.Telephony.SMS_RECEIVED"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 378
    .local v16, "intentFilter":Landroid/content/IntentFilter;
    const v26, 0x7fffffff

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->smsReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mImsi:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getSimMSISDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 382
    .local v21, "phoneNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mImsi:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getCountryCallingCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/common/util/NumberUtils;->getNationalNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 384
    .local v19, "nationalNumeber":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_601

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mEditTextPhoneNumber:Landroid/widget/EditText;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mEditTextPhoneNumber:Landroid/widget/EditText;

    move-object/from16 v26, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/EditText;->setSelection(I)V

    .line 394
    :goto_5f1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->changeButtonBackground()V

    .line 395
    return-void

    .line 374
    .end local v16    # "intentFilter":Landroid/content/IntentFilter;
    .end local v19    # "nationalNumeber":Ljava/lang/String;
    .end local v21    # "phoneNumber":Ljava/lang/String;
    :cond_5f5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mCccText:Landroid/widget/Button;

    move-object/from16 v26, v0

    sget v27, Lcom/samsung/android/coreapps/easysignuplib/R$string;->select_your_country:I

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setHint(I)V

    goto :goto_58d

    .line 388
    .restart local v16    # "intentFilter":Landroid/content/IntentFilter;
    .restart local v19    # "nationalNumeber":Ljava/lang/String;
    .restart local v21    # "phoneNumber":Ljava/lang/String;
    :cond_601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mEditTextPhoneNumber:Landroid/widget/EditText;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mEditTextPhoneNumber:Landroid/widget/EditText;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/EditText;->requestFocus()Z

    .line 390
    const-string v26, "input_method"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodManager;

    .line 391
    .local v14, "imm":Landroid/view/inputmethod/InputMethodManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mEditTextPhoneNumber:Landroid/widget/EditText;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v14, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_5f1
.end method

.method private notifyMTAuthResult(Z)V
    .registers 7
    .param p1, "result"    # Z

    .prologue
    .line 829
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyMTAuthResult , result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 832
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x50

    iput v3, v2, Landroid/os/Message;->what:I

    .line 833
    if-eqz p1, :cond_40

    .line 834
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 835
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 836
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "msisdn"

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->successResp:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthResp;

    iget-object v4, v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthResp;->msisdn:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 843
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_36
    :try_start_36
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mMessenger:Landroid/os/Messenger;

    if-eqz v3, :cond_3f

    .line 844
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3f} :catch_44

    .line 849
    :cond_3f
    :goto_3f
    return-void

    .line 839
    :cond_40
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->arg1:I

    goto :goto_36

    .line 846
    :catch_44
    move-exception v1

    .line 847
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3f
.end method

.method private requestAuthCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "ccc"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSmsAuth - phoneNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , ccc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->reqAuthCodeHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/coreapps/easysignuplib/R$string;->in_progress:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->showProgress(Landroid/os/Handler;Ljava/lang/CharSequence;Z)V

    .line 493
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/MtAuthReqBody;

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mImsi:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/samsung/android/coreapps/common/util/NumberUtils;->getNationalNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/MtAuthReqBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    .local v0, "body":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/MtAuthReqBody;
    const/16 v1, 0x29

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->reqAuthCodeHandler:Landroid/os/Handler;

    new-instance v3, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->reqAuthCodeHandler:Landroid/os/Handler;

    invoke-direct {v3, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;-><init>(Landroid/os/Handler;)V

    invoke-static {v1, v0, v2, p3, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->requestMtAuth(ILcom/samsung/android/coreapps/easysignup/serverApi/io/entries/MtAuthReqBody;Landroid/os/Handler;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 495
    return-void
.end method

.method private requestPermission()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 161
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

    .line 170
    .local v0, "PERMISSIONS":[Ljava/lang/String;
    invoke-static {p0, v0, v4}, Lcom/samsung/android/coreapps/common/util/PermissionUtils;->checkPermissions(Landroid/app/Activity;[Ljava/lang/String;I)I

    move-result v1

    .line 171
    .local v1, "result":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_37

    .line 172
    const-string v2, "ERROR"

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 176
    :cond_36
    :goto_36
    return-void

    .line 173
    :cond_37
    if-nez v1, :cond_36

    .line 174
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->initialize()V

    goto :goto_36
.end method


# virtual methods
.method protected cancelTimer()V
    .registers 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_9

    .line 535
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 537
    :cond_9
    return-void
.end method

.method protected dismissProgress()V
    .registers 3

    .prologue
    .line 420
    const-string v0, "dismissProgress"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->reqAuthCodeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->progressCloser:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 423
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mtAuthHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->progressCloser:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 425
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 426
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 428
    :cond_26
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 13
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v5, -0x1

    .line 779
    packed-switch p1, :pswitch_data_13a

    .line 826
    :cond_5
    :goto_5
    return-void

    .line 781
    :pswitch_6
    if-ne p2, v5, :cond_5

    .line 782
    if-eqz p3, :cond_5

    .line 783
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 784
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v5, "PARAMS_COUNTRY_NAME"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 786
    .local v4, "selectedCountryISO":Ljava/lang/String;
    if-eqz v4, :cond_75

    .line 787
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->countryMap:Ljava/util/Map;

    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->countryMap2:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 788
    .local v2, "mCountryCallingCode":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mCccText:Landroid/widget/Button;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->countryMap2:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 789
    const-string v5, "country_name"

    invoke-static {v5, v2}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SelectCountry] NewCallingCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mISOcountryCode:Ljava/lang/String;

    .line 796
    .end local v2    # "mCountryCallingCode":Ljava/lang/String;
    :cond_75
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mISOcountryCode:Ljava/lang/String;

    const-string v6, "AR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_93

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mISOcountryCode:Ljava/lang/String;

    const-string v6, "MX"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_93

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mISOcountryCode:Ljava/lang/String;

    const-string v6, "BR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a6

    .line 798
    :cond_93
    const/16 v3, 0xa

    .line 802
    .local v3, "maxLength":I
    :goto_95
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mEditTextPhoneNumber:Landroid/widget/EditText;

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/text/InputFilter;

    new-instance v7, Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter;

    invoke-direct {v7, p0, v3}, Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter;-><init>(Landroid/content/Context;I)V

    aput-object v7, v6, v8

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_5

    .line 800
    .end local v3    # "maxLength":I
    :cond_a6
    const/16 v3, 0x14

    .restart local v3    # "maxLength":I
    goto :goto_95

    .line 808
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "maxLength":I
    .end local v4    # "selectedCountryISO":Ljava/lang/String;
    :pswitch_a9
    if-ne p2, v5, :cond_cf

    .line 809
    if-eqz p3, :cond_5

    .line 810
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 811
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string v5, "acs_code"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 813
    .local v0, "authCode":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mtAuthHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/coreapps/easysignuplib/R$string;->please_wait:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6, v8}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->showProgress(Landroid/os/Handler;Ljava/lang/CharSequence;Z)V

    .line 814
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mImsi:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mAuthType:Ljava/lang/String;

    invoke-direct {p0, v5, v0, v6}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->authenticateMTDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 817
    .end local v0    # "authCode":Ljava/lang/String;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_cf
    const/4 v5, 0x4

    if-ne p2, v5, :cond_5

    .line 818
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mCountryCodeLetter2:Ljava/lang/String;

    const-string v6, "AR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f0

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mCountryCodeLetter2:Ljava/lang/String;

    const-string v6, "MX"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f0

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mCountryCodeLetter2:Ljava/lang/String;

    const-string v6, "BR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_122

    .line 819
    :cond_f0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mEditArea:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mEditTextPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mImsi:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getCountryCallingCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mAuthType:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v7}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->requestAuthCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 821
    :cond_122
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mEditTextPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mImsi:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getCountryCallingCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mAuthType:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v7}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->requestAuthCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 779
    nop

    :pswitch_data_13a
    .packed-switch 0x64
        :pswitch_6
        :pswitch_a9
    .end packed-switch
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 481
    const-string v0, "onBackPressed"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-super {p0}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;->onBackPressed()V

    .line 484
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->setResult(I)V

    .line 485
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->finish()V

    .line 486
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 736
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 738
    .local v0, "id":I
    sget v1, Lcom/samsung/android/coreapps/easysignuplib/R$id;->radio_sms_layout:I

    if-ne v0, v1, :cond_3c

    .line 739
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mRadioSMS:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 740
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mRadioACS:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 741
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mCountryCodeLetter2:Ljava/lang/String;

    const-string v2, "MM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 742
    const-string v1, "ACS"

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mAuthType:Ljava/lang/String;

    .line 746
    :goto_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAuthType == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mAuthType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    :cond_3c
    sget v1, Lcom/samsung/android/coreapps/easysignuplib/R$id;->radio_acs_layout:I

    if-ne v0, v1, :cond_68

    .line 750
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mRadioSMS:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 751
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mRadioACS:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 752
    const-string v1, "ACS"

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mAuthType:Ljava/lang/String;

    .line 753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAuthType == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mAuthType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    :cond_68
    sget v1, Lcom/samsung/android/coreapps/easysignuplib/R$id;->button_right:I

    if-ne v0, v1, :cond_f6

    .line 757
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mEditTextPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 758
    const-string v1, "phone number empty"

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    :cond_83
    :goto_83
    return-void

    .line 744
    :cond_84
    const-string v1, "SMS"

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mAuthType:Ljava/lang/String;

    goto :goto_22

    .line 762
    :cond_89
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mAuthType:Ljava/lang/String;

    if-nez v1, :cond_91

    .line 763
    const-string v1, "SMS"

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mAuthType:Ljava/lang/String;

    .line 766
    :cond_91
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mCountryCodeLetter2:Ljava/lang/String;

    const-string v2, "AR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_af

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mCountryCodeLetter2:Ljava/lang/String;

    const-string v2, "MX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_af

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mCountryCodeLetter2:Ljava/lang/String;

    const-string v2, "BR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 767
    :cond_af
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mEditArea:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mEditTextPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mImsi:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getCountryCallingCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mAuthType:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->requestAuthCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_83

    .line 769
    :cond_e0
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mEditTextPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mImsi:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getCountryCallingCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mAuthType:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->requestAuthCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_83

    .line 771
    :cond_f6
    sget v1, Lcom/samsung/android/coreapps/easysignuplib/R$id;->button_left:I

    if-ne v0, v1, :cond_83

    .line 772
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->finish()V

    goto :goto_83
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 719
    invoke-super {p0, p1}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 720
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 722
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->changeButtonBackground()V

    .line 723
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 155
    const-string v0, "onCreate"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->requestPermission()V

    .line 158
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 463
    const-string v1, "onDestroy"

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->smsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_c} :catch_1c

    .line 471
    :goto_c
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->dismissProgress()V

    .line 472
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_18

    .line 473
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 476
    :cond_18
    invoke-super {p0}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;->onDestroy()V

    .line 477
    return-void

    .line 467
    :catch_1c
    move-exception v0

    .line 468
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "sms reciever was registered"

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 180
    if-nez p1, :cond_12

    .line 181
    invoke-static {p3}, Lcom/samsung/android/coreapps/common/util/PermissionUtils;->verifyPermissions([I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 182
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->initialize()V

    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/EasySignUpLib;->init(Landroid/content/Context;)V

    .line 189
    :cond_12
    :goto_12
    return-void

    .line 185
    :cond_13
    const-string v0, "ALL PERMISSION DENIED"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->finish()V

    goto :goto_12
.end method

.method public runCountDown()V
    .registers 7

    .prologue
    .line 507
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_9

    .line 508
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 511
    :cond_9
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$6;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$6;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;JJ)V

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$6;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mTimer:Landroid/os/CountDownTimer;

    .line 531
    return-void
.end method

.method protected showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 8
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->dismissProgress()V

    .line 432
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 459
    :goto_9
    return-void

    .line 436
    :cond_a
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_3b

    .line 437
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/samsung/android/coreapps/easysignuplib/R$string;->ok:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$5;

    invoke-direct {v4, p0}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$5;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 449
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 455
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_30
    :try_start_30
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
    :try_end_35
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_30 .. :try_end_35} :catch_36

    goto :goto_9

    .line 456
    :catch_36
    move-exception v1

    .line 457
    .local v1, "e":Landroid/view/WindowManager$BadTokenException;
    invoke-virtual {v1}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_9

    .line 451
    .end local v1    # "e":Landroid/view/WindowManager$BadTokenException;
    :cond_3b
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_30
.end method

.method protected showProgress(Landroid/os/Handler;Ljava/lang/CharSequence;Z)V
    .registers 9
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "isTimerSet"    # Z

    .prologue
    const/4 v4, 0x0

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showProgress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->progressCloser:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 400
    if-eqz p3, :cond_28

    .line 401
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->progressCloser:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 404
    :cond_28
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_35

    .line 405
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 408
    :cond_35
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 409
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 417
    :goto_42
    return-void

    .line 411
    :cond_43
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 413
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 414
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 415
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_42
.end method

.method public validateActivity()Z
    .registers 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mContext:Landroid/content/Context;

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
