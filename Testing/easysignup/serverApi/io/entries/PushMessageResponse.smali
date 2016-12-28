.class public Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageResponse;
.super Ljava/lang/Object;
.source "PushMessageResponse.java"


# instance fields
.field protected left_blocking_hour:I

.field protected receiver_info:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo$ReceiverInfoResp;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public getLeftBlockingHour()I
    .registers 2

    .prologue
    .line 14
    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageResponse;->left_blocking_hour:I

    return v0
.end method

.method public getReciverInformation()[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo$ReceiverInfoResp;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageResponse;->receiver_info:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo$ReceiverInfoResp;

    return-object v0
.end method
