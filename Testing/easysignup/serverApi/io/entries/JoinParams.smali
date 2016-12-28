.class public Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinParams;
.super Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;
.source "JoinParams.java"


# instance fields
.field protected csc:Ljava/lang/String;

.field protected device_id:Ljava/lang/String;

.field protected imsi:Ljava/lang/String;

.field protected language:Ljava/lang/String;

.field protected model_number:Ljava/lang/String;

.field public pkg:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PackageInfo;

.field protected push_info:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;

.field protected push_muid:I

.field protected sids:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinParams;->device_id:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinParams;->imsi:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;[IILjava/lang/String;)V
    .registers 9
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "pushInfoArray"    # [Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;
    .param p5, "sids"    # [I
    .param p6, "push_muid"    # I
    .param p7, "csc"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iput-object p3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinParams;->language:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinParams;->push_info:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;

    .line 36
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinParams;->model_number:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinParams;->sids:[I

    .line 38
    iput p6, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinParams;->push_muid:I

    .line 39
    iput-object p7, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinParams;->csc:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;[ILjava/lang/String;)V
    .registers 8
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "pushInfoArray"    # [Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;
    .param p5, "sids"    # [I
    .param p6, "csc"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iput-object p3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinParams;->language:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinParams;->push_info:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;

    .line 26
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinParams;->model_number:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinParams;->sids:[I

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinParams;->push_muid:I

    .line 29
    iput-object p6, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinParams;->csc:Ljava/lang/String;

    .line 30
    return-void
.end method
