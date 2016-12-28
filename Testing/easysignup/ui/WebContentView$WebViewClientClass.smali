.class Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$WebViewClientClass;
.super Landroid/webkit/WebViewClient;
.source "WebContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebViewClientClass"
.end annotation


# static fields
.field private static final BLOCKED_ID_CANCEL_URL:Ljava/lang/String; = "/mobile/account/deviceInterfaceCloseOAuth2.do"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;)V
    .registers 2

    .prologue
    .line 238
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$WebViewClientClass;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;
    .param p2, "x1"    # Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$1;

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$WebViewClientClass;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;)V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadResource "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageFinished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$WebViewClientClass;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_28

    .line 272
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$WebViewClientClass;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    # invokes: Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->dismissProgress()V
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->access$400(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;)V

    .line 274
    :cond_28
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPageStarted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v2, "/mobile/account/deviceInterfaceCloseOAuth2.do"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 254
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 255
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "close"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "close":Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 257
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$WebViewClientClass;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    invoke-virtual {v2}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->finish()V

    .line 261
    .end local v0    # "close":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_37
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$WebViewClientClass;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    # invokes: Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->showProgress()V
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->access$300(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;)V

    .line 262
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 264
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError errorCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :try_start_28
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$WebViewClientClass;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    invoke-virtual {v1}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_35

    .line 287
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$WebViewClientClass;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    # invokes: Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->dismissProgress()V
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->access$400(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_35} :catch_39

    .line 292
    :cond_35
    :goto_35
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void

    .line 289
    :catch_39
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_35
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebContentView::shouldOverrideUrlLoading URL = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 246
    const/4 v0, 0x1

    return v0
.end method
