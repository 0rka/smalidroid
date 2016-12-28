.class public Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;
.super Landroid/app/Service;
.source "IsValidTransaction.java"

# interfaces
.implements Lcom/samsung/android/coreapps/easysignup/transaction/TokenValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;->TAG:Ljava/lang/String;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 50
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {p0, p1}, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;->checkInvalid(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Landroid/content/Context;Landroid/os/Message;Ljava/lang/String;Z)V
    .registers 4
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 23
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;->sendReplyBroadcast(Landroid/content/Context;Landroid/os/Message;Ljava/lang/String;Z)V

    return-void
.end method

.method private static checkInvalid(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid value for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_28
    return-void
.end method

.method private static sendReplyBroadcast(Landroid/content/Context;Landroid/os/Message;Ljava/lang/String;Z)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "msisdn"    # Ljava/lang/String;
    .param p3, "isSucceed"    # Z

    .prologue
    .line 146
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.android.coreapps.easysignup.intent.IS_VALID"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "msisdn"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v4, "extra_result_code"

    if-eqz p3, :cond_cc

    const/4 v3, 0x0

    :goto_11
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "debugStr "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/samsung/android/coreapps/common/util/CommonLog;->debugStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is success : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    if-eqz p3, :cond_cf

    .line 154
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsValidResp;

    .line 155
    .local v2, "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsValidResp;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resp.st = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsValidResp;->st:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v3, "STATUS"

    iget v4, v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsValidResp;->st:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    iget-object v3, v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsValidResp;->svc:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsValidResp$ServiceInfo;

    if-eqz v3, :cond_cf

    .line 158
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_74
    iget-object v3, v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsValidResp;->svc:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsValidResp$ServiceInfo;

    array-length v3, v3

    if-ge v0, v3, :cond_cf

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resp.svc s : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsValidResp;->svc:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsValidResp$ServiceInfo;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsValidResp$ServiceInfo;->s:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsValidResp;->svc:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsValidResp$ServiceInfo;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsValidResp$ServiceInfo;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SERVICE_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsValidResp;->svc:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsValidResp$ServiceInfo;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsValidResp$ServiceInfo;->s:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsValidResp;->svc:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsValidResp$ServiceInfo;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsValidResp$ServiceInfo;->c:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_74

    .line 148
    .end local v0    # "i":I
    .end local v2    # "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsValidResp;
    :cond_cc
    const/4 v3, 0x1

    goto/16 :goto_11

    .line 165
    :cond_cf
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 166
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    const-string v0, "onBind()"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 29
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 30
    const-string v0, "Create"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 35
    const-string v0, "onStartCommand"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    if-eqz p1, :cond_e

    .line 38
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;

    invoke-direct {v0, p0, p1, p3}, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;Landroid/content/Intent;I)V

    .line 41
    :cond_e
    const/4 v0, 0x2

    return v0
.end method
