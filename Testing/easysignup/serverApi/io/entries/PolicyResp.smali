.class public Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PolicyResp;
.super Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;
.source "PolicyResp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PolicyResp$SupportedService;
    }
.end annotation


# instance fields
.field public itv:J

.field public mv:Ljava/lang/String;

.field public pl:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PackageVersionInfo;

.field public ss:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PolicyResp$SupportedService;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;-><init>()V

    .line 5
    return-void
.end method
