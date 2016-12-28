.class Lcom/samsung/android/coreapps/easysignup/service/IsAuthService$1;
.super Ljava/lang/Object;
.source "IsAuthService.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;)V
    .registers 2

    .prologue
    .line 128
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService$1;->this$0:Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 7
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 131
    iget-object v1, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    .line 132
    .local v1, "networkResponse":Lcom/android/volley/NetworkResponse;
    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "errorCause":Ljava/lang/String;
    :goto_8
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService$1;->this$0:Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;

    invoke-virtual {v2}, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IsAuth fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 134
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService$1;->this$0:Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;

    invoke-virtual {v2}, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;->stopSelf()V

    .line 135
    return-void

    .line 132
    .end local v0    # "errorCause":Ljava/lang/String;
    :cond_2f
    const-string v0, ""

    goto :goto_8
.end method
