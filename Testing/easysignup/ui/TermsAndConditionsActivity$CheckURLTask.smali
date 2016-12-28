.class public Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;
.super Landroid/os/AsyncTask;
.source "TermsAndConditionsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckURLTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field cLNC:Ljava/lang/String;

.field cMCC:Ljava/lang/String;

.field mMenu:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p2, "mType"    # Ljava/lang/String;
    .param p3, "Mcc"    # Ljava/lang/String;
    .param p4, "Lnc"    # Ljava/lang/String;
    .param p5, "docType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 339
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 335
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->cMCC:Ljava/lang/String;

    .line 336
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->cLNC:Ljava/lang/String;

    .line 337
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->mMenu:Ljava/lang/String;

    .line 340
    # setter for: Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->mDocType:Ljava/lang/String;
    invoke-static {p1, p5}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->access$402(Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 341
    iput-object p2, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->mMenu:Ljava/lang/String;

    .line 342
    iput-object p3, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->cMCC:Ljava/lang/String;

    .line 343
    iput-object p4, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->cLNC:Ljava/lang/String;

    .line 344
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .registers 8
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 362
    const/4 v2, 0x0

    .line 363
    .local v2, "responseCode":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckURLTask doInBackground URL : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->mURL:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->access$500(Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :try_start_1f
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->mURL:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->access$500(Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 367
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 368
    .local v1, "exitCode":Ljava/net/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_33
    .catch Ljava/net/MalformedURLException; {:try_start_1f .. :try_end_33} :catch_51
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_33} :catch_56

    move-result v2

    .line 374
    .end local v1    # "exitCode":Ljava/net/HttpURLConnection;
    .end local v3    # "url":Ljava/net/URL;
    :goto_34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckURLTask doInBackground responseCode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 369
    :catch_51
    move-exception v0

    .line 370
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_34

    .line 371
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_56
    move-exception v0

    .line 372
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 334
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 9
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 380
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMenu : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->mMenu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_ba

    .line 383
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->cLNC:Ljava/lang/String;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 384
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->setResponseCode(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->access$600(Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;I)V

    .line 385
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->access$000(Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->mURL:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->access$500(Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->access$000(Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$WebChromeClientClass;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;

    invoke-direct {v1, v2}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$WebChromeClientClass;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 387
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->access$000(Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$WebViewClientClass;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$WebViewClientClass;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 398
    :cond_73
    :goto_73
    return-void

    .line 388
    :cond_74
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->mMenu:Ljava/lang/String;

    const-string v1, "TNC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 389
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;

    const-string v2, "TNC"

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->mMcc:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->access$800(Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "default"

    const-string v5, "general_esu.html"

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v6, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_73

    .line 390
    :cond_97
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->mMenu:Ljava/lang/String;

    const-string v1, "PP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 391
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;

    const-string v2, "PP"

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->mMcc:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->access$800(Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "default"

    const-string v5, "pp_esu.html"

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v6, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_73

    .line 394
    :cond_ba
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->access$000(Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->mURL:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->access$500(Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->access$000(Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$WebChromeClientClass;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;

    invoke-direct {v1, v2}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$WebChromeClientClass;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 396
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->access$000(Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$WebViewClientClass;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$WebViewClientClass;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_73
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 334
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 4

    .prologue
    .line 348
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 350
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->mMenu:Ljava/lang/String;

    const-string v1, "NOTICE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 351
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;

    const-string v1, "http://account.samsung.com/mobile/easySignUpNotice.do"

    # setter for: Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->mURL:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->access$502(Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckURLTask [NOTICE] onPreExecute Url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->mURL:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->access$500(Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :goto_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckURLTask onPreExecute Url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->mURL:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->access$500(Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void

    .line 354
    :cond_51
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://static.bada.com/contents/legal/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->cMCC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->cLNC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->mDocType:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->access$400(Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->mURL:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->access$502(Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_32
.end method
