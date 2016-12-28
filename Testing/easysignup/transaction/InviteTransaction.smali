.class public Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction;
.super Landroid/app/Service;
.source "InviteTransaction.java"

# interfaces
.implements Lcom/samsung/android/coreapps/easysignup/transaction/TokenValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction$1;,
        Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction$HttpRespHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCbMessenger:Landroid/os/Messenger;

.field private mHttpRespHandler:Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction$HttpRespHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction;

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction;->TAG:Ljava/lang/String;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 31
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction$HttpRespHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction$HttpRespHandler;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction;Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction$1;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction;->mHttpRespHandler:Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction$HttpRespHandler;

    .line 66
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction;IIJ)V
    .registers 6
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # J

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction;->sendCallbackMessage(IIJ)V

    return-void
.end method

.method private sendCallbackMessage(IIJ)V
    .registers 10
    .param p1, "token"    # I
    .param p2, "result"    # I
    .param p3, "rCode"    # J

    .prologue
    .line 84
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction;->mCbMessenger:Landroid/os/Messenger;

    if-nez v3, :cond_c

    .line 85
    const-string v3, "no callback messenger"

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :goto_b
    return-void

    .line 89
    :cond_c
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 90
    .local v2, "message":Landroid/os/Message;
    iput p1, v2, Landroid/os/Message;->what:I

    .line 91
    iput p2, v2, Landroid/os/Message;->arg1:I

    .line 92
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 93
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "server_response_code"

    invoke-virtual {v0, v3, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 94
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 97
    :try_start_20
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction;->mCbMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 98
    const-string v3, "callback message sent"

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2c} :catch_2d

    goto :goto_b

    .line 99
    :catch_2d
    move-exception v1

    .line 100
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 37
    const-string v1, "onStartCommand()"

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v1, "extra_cb_handler"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction;->mCbMessenger:Landroid/os/Messenger;

    .line 40
    const-string v1, "service_id"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 41
    .local v3, "sid":I
    const-string v1, "message"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 43
    .local v5, "message":Ljava/lang/String;
    const-string v1, "sender_cc"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 45
    .local v10, "senderCc":Ljava/lang/String;
    const-string v1, "sender_national_phone_number"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 47
    .local v11, "senderNationalPhoneNumber":Ljava/lang/String;
    new-instance v6, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;

    invoke-direct {v6, v10, v11}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .local v6, "senderInfo":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;
    const-string v1, "cc"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 51
    .local v8, "ccList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "national_phone_number"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 53
    .local v9, "nationalNumberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v8, v9}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;->fromList(Ljava/util/ArrayList;Ljava/util/ArrayList;)[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;

    move-result-object v7

    .line 55
    .local v7, "receiverInfos":[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/MessageParams;

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/MessageParams;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;)V

    .line 56
    .local v0, "params":Lcom/samsung/android/coreapps/easysignup/serverApi/manager/MessageParams;
    const/16 v1, 0xdc

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction;->mHttpRespHandler:Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction$HttpRespHandler;

    const-string v4, "SMS"

    new-instance v12, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    iget-object v13, p0, Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction;->mHttpRespHandler:Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction$HttpRespHandler;

    invoke-direct {v12, v13}, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;-><init>(Landroid/os/Handler;)V

    invoke-static {v1, v2, v0, v4, v12}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->message(ILandroid/os/Handler;Lcom/samsung/android/coreapps/easysignup/serverApi/manager/MessageParams;Ljava/lang/String;Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;)V

    .line 58
    const/4 v1, 0x2

    return v1
.end method
