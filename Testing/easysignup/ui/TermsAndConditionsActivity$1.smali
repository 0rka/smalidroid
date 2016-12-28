.class Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$1;
.super Ljava/lang/Object;
.source "TermsAndConditionsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;)V
    .registers 2

    .prologue
    .line 206
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->access$000(Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 211
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->access$100(Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->setResult(ILandroid/content/Intent;)V

    .line 212
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/ui/TermsAndConditionsActivity;->finish()V

    .line 213
    return-void
.end method
