.class public Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsReq2FAResp$IsReq2FARespListItem;
.super Ljava/lang/Object;
.source "IsReq2FAResp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsReq2FAResp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsReq2FARespListItem"
.end annotation


# instance fields
.field public auth_code:Ljava/lang/String;

.field public mn:Ljava/lang/String;

.field public request_time:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
