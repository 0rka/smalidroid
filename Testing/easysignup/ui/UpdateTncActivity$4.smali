.class Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$4;
.super Ljava/lang/Object;
.source "UpdateTncActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->showProgressBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;)V
    .registers 2

    .prologue
    .line 358
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$4;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 361
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    const-string v1, "EsuRequestManager"

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 362
    return-void
.end method
