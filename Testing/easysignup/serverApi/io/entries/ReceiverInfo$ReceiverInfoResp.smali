.class public Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo$ReceiverInfoResp;
.super Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;
.source "ReceiverInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReceiverInfoResp"
.end annotation


# instance fields
.field public st:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "ccc"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method
