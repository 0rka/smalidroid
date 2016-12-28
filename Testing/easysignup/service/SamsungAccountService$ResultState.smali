.class Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$ResultState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "SamsungAccountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)V
    .registers 2

    .prologue
    .line 249
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;
    .param p2, "x1"    # Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$1;

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$ResultState;-><init>(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)V

    return-void
.end method


# virtual methods
.method protected processMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 252
    invoke-super {p0, p1}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;->processMessage(Landroid/os/Message;)V

    .line 254
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->stopSelf()V

    .line 255
    return-void
.end method
