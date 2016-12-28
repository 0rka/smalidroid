.class Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$RespHandler;
.super Landroid/os/Handler;
.source "TestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RespHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;)V
    .registers 2

    .prologue
    .line 686
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$RespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;
    .param p2, "x1"    # Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$1;

    .prologue
    .line 686
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$RespHandler;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 690
    const-string v3, "RespHandler called"

    const-string v4, "TestActivity"

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_61

    .line 692
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TOKEN_IS_AUTH : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TestActivity"

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 695
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "is_auth"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 696
    .local v2, "isAuth":Z
    const-string v3, "auth_type"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, "authType":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$RespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAuth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / authType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 702
    .end local v0    # "authType":Ljava/lang/String;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "isAuth":Z
    :cond_60
    :goto_60
    return-void

    .line 699
    :cond_61
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_60

    .line 700
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TOKEN_CREATE_TNC_INFO_RESULT : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TestActivity"

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_60
.end method
