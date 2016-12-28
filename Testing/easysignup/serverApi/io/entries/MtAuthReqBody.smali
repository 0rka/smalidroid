.class public Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/MtAuthReqBody;
.super Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;
.source "MtAuthReqBody.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/MtAuthReqBody;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected ccc:Ljava/lang/String;

.field protected device_id:Ljava/lang/String;

.field protected imsi:Ljava/lang/String;

.field protected language:Ljava/lang/String;

.field protected phone_number:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/MtAuthReqBody$1;

    invoke-direct {v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/MtAuthReqBody$1;-><init>()V

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/MtAuthReqBody;->CREATOR:Landroid/os/Parcelable$Creator;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/MtAuthReqBody;->device_id:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/MtAuthReqBody;->imsi:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/MtAuthReqBody;->ccc:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/MtAuthReqBody;->phone_number:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/MtAuthReqBody;->language:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "ccc"    # Ljava/lang/String;
    .param p4, "phoneNumber"    # Ljava/lang/String;
    .param p5, "language"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/MtAuthReqBody;->device_id:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/MtAuthReqBody;->imsi:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/MtAuthReqBody;->ccc:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/MtAuthReqBody;->phone_number:Ljava/lang/String;

    .line 21
    invoke-static {p5}, Lcom/samsung/android/coreapps/common/util/CommonUtils;->reformatLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/MtAuthReqBody;->language:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/MtAuthReqBody;->ccc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/MtAuthReqBody;->phone_number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/MtAuthReqBody;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return-void
.end method
