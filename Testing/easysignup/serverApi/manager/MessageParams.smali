.class public Lcom/samsung/android/coreapps/easysignup/serverApi/manager/MessageParams;
.super Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;
.source "MessageParams.java"


# instance fields
.field protected device_id:Ljava/lang/String;

.field protected imsi:Ljava/lang/String;

.field protected language:Ljava/lang/String;

.field protected message:Ljava/lang/String;

.field protected mn:Ljava/lang/String;

.field protected receiver_info:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;

.field protected sender_info:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;

.field protected sid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;)V
    .registers 9
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "sid"    # I
    .param p4, "language"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "senderInfo"    # Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;
    .param p7, "receiverInfos"    # [Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;-><init>()V

    .line 29
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/MessageParams;->mn:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/MessageParams;->device_id:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/MessageParams;->imsi:Ljava/lang/String;

    .line 14
    iput p3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/MessageParams;->sid:I

    .line 15
    invoke-static {p4}, Lcom/samsung/android/coreapps/common/util/CommonUtils;->reformatLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/MessageParams;->language:Ljava/lang/String;

    .line 16
    iput-object p5, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/MessageParams;->message:Ljava/lang/String;

    .line 17
    iput-object p6, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/MessageParams;->sender_info:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;

    .line 18
    iput-object p7, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/MessageParams;->receiver_info:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;

    .line 19
    return-void
.end method
