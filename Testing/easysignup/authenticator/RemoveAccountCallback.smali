.class public Lcom/samsung/android/coreapps/easysignup/authenticator/RemoveAccountCallback;
.super Ljava/lang/Object;
.source "RemoveAccountCallback.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-class v0, Lcom/samsung/android/coreapps/easysignup/authenticator/RemoveAccountCallback;

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/authenticator/RemoveAccountCallback;->TAG:Ljava/lang/String;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/authenticator/RemoveAccountCallback;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    :try_start_0
    const-string v2, " RemoveAccountCallback - run() "

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/authenticator/RemoveAccountCallback;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_25

    .line 27
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.coreapps.easysignup.ACTION_ESU_REMOVED_ACCOUNT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    .local v1, "svc":Landroid/content/Intent;
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 29
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/authenticator/RemoveAccountCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_25
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_25} :catch_26
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_25} :catch_2b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_25} :catch_30

    .line 38
    .end local v1    # "svc":Landroid/content/Intent;
    :cond_25
    :goto_25
    return-void

    .line 31
    :catch_26
    move-exception v0

    .line 32
    .local v0, "e":Landroid/accounts/OperationCanceledException;
    invoke-virtual {v0}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    goto :goto_25

    .line 33
    .end local v0    # "e":Landroid/accounts/OperationCanceledException;
    :catch_2b
    move-exception v0

    .line 34
    .local v0, "e":Landroid/accounts/AuthenticatorException;
    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    goto :goto_25

    .line 35
    .end local v0    # "e":Landroid/accounts/AuthenticatorException;
    :catch_30
    move-exception v0

    .line 36
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_25
.end method
