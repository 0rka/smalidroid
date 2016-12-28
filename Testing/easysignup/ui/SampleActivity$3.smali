.class Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$3;
.super Ljava/lang/Object;
.source "SampleActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->showProgressBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;)V
    .registers 2

    .prologue
    .line 184
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$3;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 190
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    const-string v2, "EsuRequestManager"

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 192
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$3;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;

    const-class v2, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$3;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->stopService(Landroid/content/Intent;)Z

    .line 195
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$3;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->setResult(I)V

    .line 196
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$3;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;

    invoke-virtual {v1}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->finish()V

    .line 197
    return-void
.end method
