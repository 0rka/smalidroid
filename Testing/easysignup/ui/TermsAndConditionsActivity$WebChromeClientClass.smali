.class public Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$WebChromeClientClass;
.super Landroid/webkit/WebChromeClient;
.source "TermsAndConditionsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebChromeClientClass"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;)V
    .registers 2

    .prologue
    .line 310
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$WebChromeClientClass;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$WebChromeClientClass;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .registers 6
    .param p2, "acceptType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 321
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 322
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$WebChromeClientClass;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 325
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p2, "acceptType"    # Ljava/lang/String;
    .param p3, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 330
    .local p1, "uploadFile":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$WebChromeClientClass;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    .line 331
    return-void
.end method
