.class public Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthReqBody;
.super Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;
.source "IsAuthReqBody.java"


# instance fields
.field protected csc:Ljava/lang/String;

.field protected device_id:Ljava/lang/String;

.field protected imsi:Ljava/lang/String;

.field protected mn:Ljava/lang/String;

.field protected type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "csc"    # Ljava/lang/String;
    .param p4, "mn"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthReqBody;->device_id:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthReqBody;->imsi:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthReqBody;->csc:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthReqBody;->mn:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public setRequestType(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthReqBody;->type:Ljava/lang/String;

    .line 21
    return-void
.end method
