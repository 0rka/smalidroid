.class public Lcom/samsung/android/coreapps/easysignup/receiver/SamsungAccountStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SamsungAccountStateReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/samsung/android/coreapps/easysignup/receiver/SamsungAccountStateReceiver;

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/receiver/SamsungAccountStateReceiver;->TAG:Ljava/lang/String;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    if-nez p2, :cond_3

    .line 46
    :cond_2
    :goto_2
    return-void

    .line 26
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "action":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive action : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/coreapps/easysignup/receiver/SamsungAccountStateReceiver;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v4, "android.intent.action.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    const-string v4, "com.samsung.android.coreapps.easysignup.ACTION_AUTH_RESULT"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 31
    :cond_2f
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    .line 32
    .local v3, "manager":Landroid/accounts/AccountManager;
    if-nez v3, :cond_3d

    .line 33
    const-string v4, "AccountManager.get() is null"

    sget-object v5, Lcom/samsung/android/coreapps/easysignup/receiver/SamsungAccountStateReceiver;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 37
    :cond_3d
    const-string v4, "com.osp.app.signin"

    invoke-virtual {v3, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 39
    .local v0, "accountArr":[Landroid/accounts/Account;
    if-eqz v0, :cond_2

    array-length v4, v0

    if-lez v4, :cond_2

    .line 40
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .local v2, "i":Landroid/content/Intent;
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2
.end method
