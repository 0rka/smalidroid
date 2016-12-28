.class Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService$HttpRespHandler;
.super Landroid/os/Handler;
.source "ExpireTokenService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpRespHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService;)V
    .registers 2

    .prologue
    .line 30
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService$HttpRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService;Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService;
    .param p2, "x1"    # Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService$1;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService$HttpRespHandler;-><init>(Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 35
    const-string v0, "Token is expired"

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService$HttpRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService;->access$100(Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService$HttpRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Token is expired"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 38
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService$HttpRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService;->stopSelf()V

    .line 39
    return-void
.end method
