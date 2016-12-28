.class public Lcom/samsung/android/coreapps/easysignup/receiver/LocaleReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocaleReceiver.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 14
    const-string v0, "ESU.LocaleReceiver"

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/receiver/LocaleReceiver;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    if-nez p2, :cond_3

    .line 36
    :cond_2
    :goto_2
    return-void

    .line 20
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 23
    const-string v1, "action is empty"

    const-string v2, "ESU.LocaleReceiver"

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 27
    :cond_15
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->isSimAbsent()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-static {p1}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 28
    :cond_21
    const-string v1, "Sim is absent or Not authenticated"

    const-string v2, "ESU.LocaleReceiver"

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 32
    :cond_29
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2
.end method
