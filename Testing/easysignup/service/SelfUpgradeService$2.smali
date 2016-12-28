.class Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService$2;
.super Ljava/lang/Object;
.source "SelfUpgradeService.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;)V
    .registers 2

    .prologue
    .line 104
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService$2;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onErrorResponse, (or timeout)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService$2;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;->stopSelf()V

    .line 109
    return-void
.end method
