.class public Lcom/samsung/android/coreapps/easysignup/network/SppPushClient;
.super Ljava/lang/Object;
.source "SppPushClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/network/SppPushClient$ISppRegChangedListener;,
        Lcom/samsung/android/coreapps/easysignup/network/SppPushClient$SppRegReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_SPP_REG_CHANGED:Ljava/lang/String; = "com.sec.spp.RegistrationChangedAction"

.field private static final EXTRA_APPID:Ljava/lang/String; = "appId"

.field private static final EXTRA_REQTYPE:Ljava/lang/String; = "reqType"

.field private static final EXTRA_USERDATA:Ljava/lang/String; = "userdata"

.field private static final PUSH_REQ_TYPE_DEREGISTRATION:I = 0x2

.field private static final PUSH_REQ_TYPE_REGISTRATION:I = 0x1

.field private static final SPP_ACTION:Ljava/lang/String; = "com.sec.spp.push.PUSH_CLIENT_SERVICE_ACTION"

.field private static final SPP_PACKAGE:Ljava/lang/String; = "com.sec.spp.push"

.field private static final SPP_REQ_SERVICE:Ljava/lang/String; = "com.sec.spp.push.RequestService"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/samsung/android/coreapps/easysignup/network/SppPushClient;

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/network/SppPushClient;->TAG:Ljava/lang/String;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/network/SppPushClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static createIntentFilter()Landroid/content/IntentFilter;
    .registers 2

    .prologue
    .line 37
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sec.spp.RegistrationChangedAction"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static deregister(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-static {p0}, Lcom/samsung/android/coreapps/easysignup/network/SppPushClient;->newSppIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 52
    .local v0, "it":Landroid/content/Intent;
    const-string v2, "reqType"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    .line 56
    .local v1, "svc":Landroid/content/ComponentName;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deregister SPP Service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/network/SppPushClient;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    if-eqz v1, :cond_2a

    const/4 v2, 0x1

    :goto_29
    return v2

    :cond_2a
    const/4 v2, 0x0

    goto :goto_29
.end method

.method private static newSppIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.spp.push.PUSH_CLIENT_SERVICE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, "it":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.spp.push"

    const-string v3, "com.sec.spp.push.RequestService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 63
    const-string v1, "appId"

    const-string v2, "641d1714fac8cca0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v1, "userdata"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    return-object v0
.end method

.method public static register(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 41
    invoke-static {p0}, Lcom/samsung/android/coreapps/easysignup/network/SppPushClient;->newSppIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 42
    .local v0, "it":Landroid/content/Intent;
    const-string v3, "reqType"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    .line 46
    .local v1, "svc":Landroid/content/ComponentName;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Register SPP Service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/network/SppPushClient;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    if-eqz v1, :cond_29

    :goto_28
    return v2

    :cond_29
    const/4 v2, 0x0

    goto :goto_28
.end method
