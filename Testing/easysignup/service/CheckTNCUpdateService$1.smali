.class Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService$1;
.super Ljava/lang/Object;
.source "CheckTNCUpdateService.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;)V
    .registers 2

    .prologue
    .line 73
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService$1;->this$0:Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 6
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 76
    if-eqz p1, :cond_2e

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage ###2### HttpResultCode ERROR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CheckTNCUpdateService"

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x337f9800

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;->registerAlarm(J)V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService$1;->this$0:Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;->stopSelf()V

    .line 82
    :cond_2e
    return-void
.end method
