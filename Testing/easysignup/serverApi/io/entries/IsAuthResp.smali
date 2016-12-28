.class public Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;
.super Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;
.source "IsAuthResp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$Services;,
        Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AppStatus;,
        Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$MoAuth;,
        Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;
    }
.end annotation


# instance fields
.field public app_status:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AppStatus;

.field public auth_info:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;

.field public auth_status:I

.field public device_type_value:Ljava/lang/String;

.field public msisdn:Ljava/lang/String;

.field public ss:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PolicyResp$SupportedService;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthResponse [auth_status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;->auth_status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", auth_info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;->auth_info:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msisdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;->msisdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "device type ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;->device_type_value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;->ss:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PolicyResp$SupportedService;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", app_status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;->app_status:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AppStatus;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
