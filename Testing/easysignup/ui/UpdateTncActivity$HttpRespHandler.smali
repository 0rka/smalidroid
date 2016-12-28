.class Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$HttpRespHandler;
.super Landroid/os/Handler;
.source "UpdateTncActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpRespHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;)V
    .registers 2

    .prologue
    .line 188
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$HttpRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;
    .param p2, "x1"    # Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$1;

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$HttpRespHandler;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 191
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_17

    .line 196
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$HttpRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;

    const/4 v1, 0x1

    # invokes: Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->notifyAcceptDisclaimerResult(Z)V
    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->access$100(Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;Z)V

    .line 201
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$HttpRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->setResult(I)V

    .line 202
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$HttpRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->finish()V

    .line 207
    :cond_17
    return-void
.end method
