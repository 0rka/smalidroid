.class public Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ForceAuthParams;
.super Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;
.source "ForceAuthParams.java"


# instance fields
.field protected ccc:Ljava/lang/String;

.field protected device_id:Ljava/lang/String;

.field protected imsi:Ljava/lang/String;

.field protected phone_number:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ForceAuthParams;->device_id:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ForceAuthParams;->imsi:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "ccc"    # Ljava/lang/String;
    .param p4, "phone_number"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ForceAuthParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iput-object p3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ForceAuthParams;->ccc:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ForceAuthParams;->phone_number:Ljava/lang/String;

    .line 23
    return-void
.end method
