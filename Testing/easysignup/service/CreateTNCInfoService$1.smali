.class Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService$1;
.super Ljava/lang/Object;
.source "CreateTNCInfoService.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;)V
    .registers 2

    .prologue
    .line 118
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService$1;->this$0:Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService$1;->this$0:Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;

    const/4 v1, 0x0

    # invokes: Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;->notifyResult(Z)V
    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;->access$100(Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;Z)V

    .line 122
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService$1;->this$0:Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;->stopSelf()V

    .line 123
    return-void
.end method
