.class Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService$1;
.super Ljava/lang/Object;
.source "GetPolicyService.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;)V
    .registers 2

    .prologue
    .line 111
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService$1;->this$0:Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService$1;->this$0:Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;->stopSelf()V

    .line 115
    return-void
.end method
