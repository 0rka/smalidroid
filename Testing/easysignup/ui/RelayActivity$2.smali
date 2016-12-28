.class Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$2;
.super Ljava/lang/Object;
.source "RelayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->showProgressBar(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;)V
    .registers 2

    .prologue
    .line 414
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$2;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 417
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    const-string v2, "EsuRequestManager"

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 419
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$2;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    const-class v2, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 420
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$2;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->stopService(Landroid/content/Intent;)Z

    .line 422
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$2;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->setResult(I)V

    .line 423
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$2;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    invoke-virtual {v1}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->finish()V

    .line 424
    return-void
.end method
