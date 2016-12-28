.class public Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;
.super Ljava/lang/Object;
.source "IsAuthResp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthInfo"
.end annotation


# instance fields
.field public MO:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$MoAuth;

.field public auth_methods:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
