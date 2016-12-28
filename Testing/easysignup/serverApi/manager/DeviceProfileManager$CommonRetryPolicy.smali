.class Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager$CommonRetryPolicy;
.super Ljava/lang/Object;
.source "DeviceProfileManager.java"

# interfaces
.implements Lcom/android/volley/RetryPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CommonRetryPolicy"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager$1;

    .prologue
    .line 837
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager$CommonRetryPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentRetryCount()I
    .registers 2

    .prologue
    .line 846
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentTimeout()I
    .registers 2

    .prologue
    .line 841
    const/16 v0, 0x4e20

    return v0
.end method

.method public retry(Lcom/android/volley/VolleyError;)V
    .registers 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    .prologue
    .line 851
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    .line 852
    throw p1
.end method
