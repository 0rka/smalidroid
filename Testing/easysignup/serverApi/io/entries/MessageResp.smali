.class public Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/MessageResp;
.super Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;
.source "MessageResp.java"


# instance fields
.field public left_blocking_hour:I

.field public rcode:J

.field public receiver_info:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;

.field public rmsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;-><init>()V

    return-void
.end method
