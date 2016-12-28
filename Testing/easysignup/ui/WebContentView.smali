.class public Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;
.super Lcom/samsung/android/coreapps/common/ui/BaseActivity;
.source "WebContentView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$ProgressHandler;,
        Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;,
        Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$WebChromeClientClass;,
        Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$WebViewClientClass;
    }
.end annotation


# static fields
.field private static final CONTACT_US_URL:Ljava/lang/String; = "http://help.content.samsung.com/csweb/auth/gosupport.do?serviceCd=%s&chnlCd=%s&_common_country=%s&_common_lang=%s&saccountID=%s&targetUrl=/ticket/createQuestionTicket.do&mcc=%s&mnc=%s&dvcModelCd=%s&odcVersion=%s&isChn=%s"

.field private static final DEFAULT_URL:Ljava/lang/String; = "http://static.bada.com/contents/legal/234/default/"

.field private static final FAQ_URL:Ljava/lang/String; = "http://help.content.samsung.com/csweb/auth/gosupport.do?serviceCd=%s&chnlCd=%s&_common_country=%s&_common_lang=%s&saccountID=%s&targetUrl=/faq/searchFaq.do&mcc=%s&mnc=%s&dvcModelCd=%s&odcVersion=%s&isChn=%s"

.field private static final PRIVACY_POLICY_HTML:Ljava/lang/String; = "pp_esu.html"

.field private static final REQUEST_CODE_UPLOAD_FILES:I = 0x3e9

.field protected static final TAG:Ljava/lang/String;

.field private static final TERMS_HTML:Ljava/lang/String; = "general_esu.html"

.field private static final TERMS_URL:Ljava/lang/String; = "http://static.bada.com/contents/legal/"

.field private static final mChnlCd:Ljava/lang/String; = "odc"


# instance fields
.field private mDocType:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mMcc:Ljava/lang/String;

.field private mProgressHandler:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$ProgressHandler;

.field private mServiceCid:Ljava/lang/String;

.field private mURL:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const-class v0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->TAG:Ljava/lang/String;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;-><init>()V

    .line 47
    const-string v0, "coreapps"

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mServiceCid:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mWebView:Landroid/webkit/WebView;

    .line 52
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mIntent:Landroid/content/Intent;

    .line 54
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mURL:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mMcc:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mDocType:Ljava/lang/String;

    .line 387
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;)Landroid/webkit/WebView;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->showProgress()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->dismissProgress()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mDocType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mDocType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;I)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->setResponseCode(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mMcc:Ljava/lang/String;

    return-object v0
.end method

.method private dismissProgress()V
    .registers 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mProgressHandler:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$ProgressHandler;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$ProgressHandler;->hideProgress()V

    .line 213
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_f

    .line 214
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 216
    :cond_f
    return-void
.end method

.method private init()V
    .registers 6

    .prologue
    .line 182
    const-string v3, "init()"

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sget v3, Lcom/samsung/android/coreapps/easysignup/R$id;->webView:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iput-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mWebView:Landroid/webkit/WebView;

    .line 184
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mWebView:Landroid/webkit/WebView;

    if-eqz v3, :cond_1a

    .line 185
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->requestFocus()Z

    .line 187
    :cond_1a
    sget v3, Lcom/samsung/android/coreapps/easysignup/R$id;->webView_progress:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 188
    .local v1, "progressBar":Landroid/widget/ProgressBar;
    sget v3, Lcom/samsung/android/coreapps/easysignup/R$id;->webView_progress_text:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 189
    .local v2, "progressText":Landroid/widget/TextView;
    new-instance v3, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$ProgressHandler;

    invoke-direct {v3, v1, v2}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$ProgressHandler;-><init>(Landroid/widget/ProgressBar;Landroid/widget/TextView;)V

    iput-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mProgressHandler:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$ProgressHandler;

    .line 191
    sget v3, Lcom/samsung/android/coreapps/easysignup/R$id;->btn_Close:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 192
    .local v0, "btnClose":Landroid/widget/Button;
    new-instance v3, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$1;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    return-void
.end method

.method private setResponseCode(I)V
    .registers 4
    .param p1, "result"    # I

    .prologue
    .line 219
    const/16 v0, 0xc8

    if-eq p1, v0, :cond_1e

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mURL:Ljava/lang/String;

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://static.bada.com/contents/legal/234/default/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mDocType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mURL:Ljava/lang/String;

    .line 223
    :cond_1e
    return-void
.end method

.method private setWindowConfiguration()V
    .registers 5

    .prologue
    const/16 v3, 0x400

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 172
    .local v0, "window":Landroid/view/Window;
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->isNote()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1d

    .line 173
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 179
    :goto_1c
    return-void

    .line 177
    :cond_1d
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1c
.end method

.method private showProgress()V
    .registers 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_b

    .line 206
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mWebView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 208
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mProgressHandler:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$ProgressHandler;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$ProgressHandler;->showProgress()V

    .line 209
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 167
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->setWindowConfiguration()V

    .line 168
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v10, 0x0

    .line 83
    const-string v0, "onCreate()"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-super {p0, p1}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    sget v0, Lcom/samsung/android/coreapps/easysignup/R$layout;->layout_web_content:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->setContentView(I)V

    .line 87
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getMCC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mMcc:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mIntent:Landroid/content/Intent;

    .line 89
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 91
    .local v7, "intentAction":Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->init()V

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->showProgress()V

    .line 94
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 95
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 96
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mWebView:Landroid/webkit/WebView;

    invoke-static {v3, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 98
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 100
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 101
    const-string v0, "onCreate() - intent Action is null."

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v10, v0}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->setResult(ILandroid/content/Intent;)V

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->finish()V

    .line 151
    :goto_6a
    return-void

    .line 107
    :cond_6b
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, "languageCode":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/PackageUtils;->getAppVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/PackageUtils;->getAppVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 109
    .local v9, "version":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CscUtil;->isChinaCountryCode()Z

    move-result v0

    if-eqz v0, :cond_ea

    const-string v8, "true"

    .line 111
    .local v8, "isChina":Ljava/lang/String;
    :goto_a0
    const-string v0, "com.sec.orca.auth.ACTION_REQ_VIEW_TNC"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 112
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;

    const-string v2, "TNC"

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mMcc:Ljava/lang/String;

    const-string v5, "general_esu.html"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v10, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 142
    :cond_b9
    :goto_b9
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mURL:Ljava/lang/String;

    if-nez v0, :cond_cc

    .line 143
    const-string v0, "onCreate() - URL is null."

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v10, v0}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->setResult(ILandroid/content/Intent;)V

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->finish()V

    .line 148
    :cond_cc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebContentView::onCreate() Server URL = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->setWindowConfiguration()V

    goto :goto_6a

    .line 109
    .end local v8    # "isChina":Ljava/lang/String;
    :cond_ea
    const-string v8, "false"

    goto :goto_a0

    .line 114
    .restart local v8    # "isChina":Ljava/lang/String;
    :cond_ed
    const-string v0, "com.sec.orca.auth.ACTION_REQ_VIEW_PRIVACY_POLICY"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    .line 115
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;

    const-string v2, "PP"

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mMcc:Ljava/lang/String;

    const-string v5, "pp_esu.html"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v10, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_b9

    .line 117
    :cond_107
    const-string v0, "com.sec.orca.auth.ACTION_REQ_VIEW_NOTICE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12f

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mMcc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/common/util/NumberUtils;->getMccToCountryNameAlpha3(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, "countryCode":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://account.samsung.com/mobile/easySignUpNotice.do?countryCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mURL:Ljava/lang/String;

    goto :goto_b9

    .line 121
    .end local v6    # "countryCode":Ljava/lang/String;
    :cond_12f
    const-string v0, "com.sec.orca.auth.ACTION_REQ_VIEW_FAQ"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b4

    .line 122
    const-string v0, "http://help.content.samsung.com/csweb/auth/gosupport.do?serviceCd=%s&chnlCd=%s&_common_country=%s&_common_lang=%s&saccountID=%s&targetUrl=/faq/searchFaq.do&mcc=%s&mnc=%s&dvcModelCd=%s&odcVersion=%s&isChn=%s"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mServiceCid:Ljava/lang/String;

    aput-object v2, v1, v10

    const-string v2, "odc"

    aput-object v2, v1, v3

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/DeviceUtils;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/DeviceUtils;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    const-string v2, ""

    aput-object v2, v1, v12

    const/4 v2, 0x5

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/DeviceUtils;->getMCC()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/DeviceUtils;->getMNC()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/DeviceUtils;->getDeviceModel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    aput-object v9, v1, v2

    const/16 v2, 0x9

    aput-object v8, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mURL:Ljava/lang/String;

    .line 126
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAQ URL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$WebChromeClientClass;

    invoke-direct {v1, p0}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$WebChromeClientClass;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$WebViewClientClass;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$WebViewClientClass;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto/16 :goto_b9

    .line 131
    :cond_1b4
    const-string v0, "com.sec.orca.auth.ACTION_REQ_VIEW_CONTACT_US"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 132
    const-string v0, "http://help.content.samsung.com/csweb/auth/gosupport.do?serviceCd=%s&chnlCd=%s&_common_country=%s&_common_lang=%s&saccountID=%s&targetUrl=/ticket/createQuestionTicket.do&mcc=%s&mnc=%s&dvcModelCd=%s&odcVersion=%s&isChn=%s"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mServiceCid:Ljava/lang/String;

    aput-object v2, v1, v10

    const-string v2, "odc"

    aput-object v2, v1, v3

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/DeviceUtils;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/DeviceUtils;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    const-string v2, ""

    aput-object v2, v1, v12

    const/4 v2, 0x5

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/DeviceUtils;->getMCC()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/DeviceUtils;->getMNC()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/DeviceUtils;->getDeviceModel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    aput-object v9, v1, v2

    const/16 v2, 0x9

    aput-object v8, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mURL:Ljava/lang/String;

    .line 136
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONTACT US URL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$WebChromeClientClass;

    invoke-direct {v1, p0}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$WebChromeClientClass;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$WebViewClientClass;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$WebViewClientClass;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_b9
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 155
    const-string v0, "onDestroy"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1a

    .line 157
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 158
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 160
    :cond_1a
    invoke-super {p0}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;->onDestroy()V

    .line 161
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 227
    const/4 v0, 0x1

    return v0
.end method
