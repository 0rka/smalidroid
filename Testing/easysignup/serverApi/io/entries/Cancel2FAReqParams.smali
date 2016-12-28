.class public Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Cancel2FAReqParams;
.super Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;
.source "Cancel2FAReqParams.java"


# instance fields
.field protected device_id:Ljava/lang/String;

.field protected imsi:Ljava/lang/String;

.field protected mn:Ljava/lang/String;

.field protected receiver_info:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;)V
    .registers 5
    .param p1, "device_id"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "receiverInfos"    # [Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;-><init>()V

    .line 11
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Cancel2FAReqParams;->mn:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Cancel2FAReqParams;->device_id:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Cancel2FAReqParams;->imsi:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Cancel2FAReqParams;->receiver_info:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;

    .line 19
    return-void
.end method
