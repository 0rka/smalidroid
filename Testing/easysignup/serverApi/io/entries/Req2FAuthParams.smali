.class public Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthParams;
.super Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;
.source "Req2FAuthParams.java"


# instance fields
.field protected device_id:Ljava/lang/String;

.field protected imsi:Ljava/lang/String;

.field protected language:Ljava/lang/String;

.field protected mn:Ljava/lang/String;

.field protected push_info:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;

.field protected receiver_info:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;Ljava/lang/String;)V
    .registers 7
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "push_info"    # [Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;
    .param p4, "receiverInfo"    # [Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;
    .param p5, "language"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;-><init>()V

    .line 16
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthParams;->mn:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthParams;->device_id:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthParams;->imsi:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthParams;->push_info:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;

    .line 26
    iput-object p4, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthParams;->receiver_info:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;

    .line 27
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 28
    invoke-static {p5}, Lcom/samsung/android/coreapps/common/util/CommonUtils;->reformatLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthParams;->language:Ljava/lang/String;

    .line 32
    :goto_1b
    return-void

    .line 30
    :cond_1c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthParams;->language:Ljava/lang/String;

    goto :goto_1b
.end method
