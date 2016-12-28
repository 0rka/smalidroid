.class public Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;
.super Landroid/os/AsyncTask;
.source "WebContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;
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

.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p2, "mType"    # Ljava/lang/String;
    .param p3, "Mcc"    # Ljava/lang/String;
    .param p4, "Lnc"    # Ljava/lang/String;
    .param p5, "docType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 325
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 321
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->cMCC:Ljava/lang/String;

    .line 322
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->cLNC:Ljava/lang/String;

    .line 323
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->mMenu:Ljava/lang/String;

    .line 326
    # setter for: Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mDocType:Ljava/lang/String;
    invoke-static {p1, p5}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->access$502(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;Ljava/lang/String;)Ljava/lang/String;

    .line 327
    iput-object p2, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->mMenu:Ljava/lang/String;

    .line 328
    iput-object p3, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->cMCC:Ljava/lang/String;

    .line 329
    iput-object p4, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->cLNC:Ljava/lang/String;

    .line 330
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .registers 8
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 348
    const/4 v2, 0x0

    .line 349
    .local v2, "responseCode":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckURLTask doInBackground URL : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mURL:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->access$600(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :try_start_1f
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mURL:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->access$600(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 353
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 354
    .local v1, "exitCode":Ljava/net/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_33
    .catch Ljava/net/MalformedURLException; {:try_start_1f .. :try_end_33} :catch_51
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_33} :catch_56

    move-result v2

    .line 360
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

    sget-object v5, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 355
    :catch_51
    move-exception v0

    .line 356
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_34

    .line 357
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_56
    move-exception v0

    .line 358
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 320
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 9
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 366
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 367
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

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->mMenu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_ba

    .line 369
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->cLNC:Ljava/lang/String;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 370
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->setResponseCode(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->access$700(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;I)V

    .line 371
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->access$100(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mURL:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->access$600(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->access$100(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$WebChromeClientClass;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    invoke-direct {v1, v2}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$WebChromeClientClass;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 373
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->access$100(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$WebViewClientClass;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$WebViewClientClass;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 384
    :cond_73
    :goto_73
    return-void

    .line 374
    :cond_74
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->mMenu:Ljava/lang/String;

    const-string v1, "TNC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 375
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    const-string v2, "TNC"

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mMcc:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->access$800(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "default"

    const-string v5, "general_esu.html"

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v6, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_73

    .line 376
    :cond_97
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->mMenu:Ljava/lang/String;

    const-string v1, "PP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 377
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    const-string v2, "PP"

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mMcc:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->access$800(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "default"

    const-string v5, "pp_esu.html"

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v6, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_73

    .line 380
    :cond_ba
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->access$100(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mURL:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->access$600(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->access$100(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$WebChromeClientClass;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    invoke-direct {v1, v2}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$WebChromeClientClass;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 382
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->access$100(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$WebViewClientClass;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$WebViewClientClass;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_73
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 320
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 4

    .prologue
    .line 334
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 336
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->mMenu:Ljava/lang/String;

    const-string v1, "NOTICE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 337
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    const-string v1, "http://account.samsung.com/mobile/easySignUpNotice.do"

    # setter for: Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mURL:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->access$602(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;Ljava/lang/String;)Ljava/lang/String;

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckURLTask [NOTICE] onPreExecute Url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mURL:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->access$600(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :goto_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckURLTask onPreExecute Url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mURL:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->access$600(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    return-void

    .line 340
    :cond_51
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://static.bada.com/contents/legal/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->cMCC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->cLNC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$CheckURLTask;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mDocType:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->access$500(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mURL:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->access$602(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_32
.end method
