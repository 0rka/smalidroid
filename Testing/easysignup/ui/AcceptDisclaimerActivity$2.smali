.class Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$2;
.super Ljava/lang/Object;
.source "AcceptDisclaimerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;)V
    .registers 2

    .prologue
    .line 174
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$2;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 177
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.orca.auth.ACTION_REQ_VIEW_PRIVACY_POLICY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 179
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity$2;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;

    invoke-virtual {v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 180
    return-void
.end method
