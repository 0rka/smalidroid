.class public Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;
.super Ljava/lang/Object;
.source "PushMessageRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest$PushMessage;
    }
.end annotation


# instance fields
.field private language:Ljava/lang/String;

.field protected mn:Ljava/lang/String;

.field protected push_message:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest$PushMessage;

.field protected receiver_info:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;

.field protected target_sid:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;->mn:Ljava/lang/String;

    .line 16
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;->language:Ljava/lang/String;

    .line 17
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;->language:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 18
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;->language:Ljava/lang/String;

    const-string v1, "_"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;->language:Ljava/lang/String;

    .line 21
    :cond_25
    return-void
.end method


# virtual methods
.method public getPushMessage()Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest$PushMessage;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;->push_message:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest$PushMessage;

    return-object v0
.end method

.method public getReciverInformation()[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;->receiver_info:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;

    return-object v0
.end method

.method public getTargetSid()I
    .registers 2

    .prologue
    .line 36
    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;->target_sid:I

    return v0
.end method

.method public setPushMessage(Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest$PushMessage;)V
    .registers 2
    .param p1, "pushMessage"    # Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest$PushMessage;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;->push_message:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest$PushMessage;

    .line 29
    return-void
.end method

.method public setReciverInformation([Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;)V
    .registers 2
    .param p1, "receiverInfos"    # [Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;->receiver_info:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;

    .line 33
    return-void
.end method

.method public setTargetSid(I)V
    .registers 2
    .param p1, "serviceId"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;->target_sid:I

    .line 25
    return-void
.end method
