.class final Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$2;
.super Landroid/os/AsyncTask;
.source "GetRefreshTokenTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->registerGcm(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3

    .prologue
    .line 352
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 356
    const/4 v2, 0x0

    .line 358
    .local v2, "result":Z
    :try_start_1
    sget-boolean v3, Lcom/samsung/android/coreapps/common/CommonFeature;->SUPPORT_GCM:Z

    if-eqz v3, :cond_3b

    .line 359
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$2;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "576165596854"

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, "gcmRegId":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RegisterGcm. gcmRegId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->access$500()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 363
    invoke-static {v1}, Lcom/samsung/android/coreapps/common/util/CommonPref;->setGcmRegId(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_3a} :catch_40

    .line 364
    const/4 v2, 0x1

    .line 371
    .end local v1    # "gcmRegId":Ljava/lang/String;
    :cond_3b
    :goto_3b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    .line 367
    :catch_40
    move-exception v0

    .line 368
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RegisterGcm. error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->access$500()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 352
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 376
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 377
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$2;->val$handler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 378
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 379
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "gcm_register_result"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 380
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 381
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 382
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 352
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
