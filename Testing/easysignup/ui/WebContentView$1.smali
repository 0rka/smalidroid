.class Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$1;
.super Ljava/lang/Object;
.source "WebContentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;)V
    .registers 2

    .prologue
    .line 192
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->access$100(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 197
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->mIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->access$200(Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->setResult(ILandroid/content/Intent;)V

    .line 198
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/ui/WebContentView;->finish()V

    .line 199
    return-void
.end method
