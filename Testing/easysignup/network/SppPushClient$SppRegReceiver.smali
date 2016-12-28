.class public Lcom/samsung/android/coreapps/easysignup/network/SppPushClient$SppRegReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SppPushClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/network/SppPushClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SppRegReceiver"
.end annotation


# static fields
.field private static final EXTRA_APP_ID:Ljava/lang/String; = "appId"

.field private static final EXTRA_ERROR:Ljava/lang/String; = "Error"

.field private static final EXTRA_PUSH_STATUS:Ljava/lang/String; = "com.sec.spp.Status"

.field private static final EXTRA_REGID:Ljava/lang/String; = "RegistrationID"

.field private static final PUSH_REGISTRATION_SUCCESS:I


# instance fields
.field private mListener:Lcom/samsung/android/coreapps/easysignup/network/SppPushClient$ISppRegChangedListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/network/SppPushClient$ISppRegChangedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/android/coreapps/easysignup/network/SppPushClient$ISppRegChangedListener;

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/network/SppPushClient$SppRegReceiver;->mListener:Lcom/samsung/android/coreapps/easysignup/network/SppPushClient$ISppRegChangedListener;

    .line 84
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "action":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SPP Reg Changed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # getter for: Lcom/samsung/android/coreapps/easysignup/network/SppPushClient;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/network/SppPushClient;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v5, "appId"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "appId":Ljava/lang/String;
    const-string v5, "641d1714fac8cca0"

    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2d

    .line 110
    :cond_2c
    :goto_2c
    return-void

    .line 96
    :cond_2d
    const-string v5, "com.sec.spp.Status"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 97
    .local v3, "pushStatus":I
    if-nez v3, :cond_7f

    .line 98
    const-string v5, "RegistrationID"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, "regId":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Registration Success : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # getter for: Lcom/samsung/android/coreapps/easysignup/network/SppPushClient;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/network/SppPushClient;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {v4}, Lcom/samsung/android/coreapps/common/util/CommonPref;->setSppRegId(Ljava/lang/String;)V

    .line 106
    .end local v4    # "regId":Ljava/lang/String;
    :goto_59
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callback onRegistrationChanged : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/network/SppPushClient$SppRegReceiver;->mListener:Lcom/samsung/android/coreapps/easysignup/network/SppPushClient$ISppRegChangedListener;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # getter for: Lcom/samsung/android/coreapps/easysignup/network/SppPushClient;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/network/SppPushClient;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/network/SppPushClient$SppRegReceiver;->mListener:Lcom/samsung/android/coreapps/easysignup/network/SppPushClient$ISppRegChangedListener;

    if-eqz v5, :cond_2c

    .line 108
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/network/SppPushClient$SppRegReceiver;->mListener:Lcom/samsung/android/coreapps/easysignup/network/SppPushClient$ISppRegChangedListener;

    invoke-interface {v5}, Lcom/samsung/android/coreapps/easysignup/network/SppPushClient$ISppRegChangedListener;->onRegistrationChanged()V

    goto :goto_2c

    .line 102
    :cond_7f
    const-string v5, "Error"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 103
    .local v2, "errorCode":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Registration Error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # getter for: Lcom/samsung/android/coreapps/easysignup/network/SppPushClient;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/network/SppPushClient;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_59
.end method
