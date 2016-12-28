.class Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService$HttpRespHandler;
.super Landroid/os/Handler;
.source "CreateTNCInfoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpRespHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;)V
    .registers 2

    .prologue
    .line 36
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService$HttpRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;
    .param p2, "x1"    # Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService$1;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService$HttpRespHandler;-><init>(Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 40
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_11

    .line 61
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService$HttpRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;

    const/4 v1, 0x1

    # invokes: Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;->notifyResult(Z)V
    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;->access$100(Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;Z)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService$HttpRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;->stopSelf()V

    .line 64
    :cond_11
    return-void
.end method
