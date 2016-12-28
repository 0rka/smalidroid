.class Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimInfo;
.super Ljava/lang/Object;
.source "SelectSimActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimInfo"
.end annotation


# instance fields
.field public bChecked:Z

.field public imsi:Ljava/lang/String;

.field public msisdn:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$1;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimInfo;-><init>()V

    return-void
.end method
