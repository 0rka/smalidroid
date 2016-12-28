.class public Lcom/samsung/android/coreapps/easysignup/entry/ErrorResp;
.super Lcom/samsung/android/coreapps/easysignup/entry/Entry;
.source "ErrorResp.java"


# instance fields
.field protected left_blocking_hour:I

.field protected rcode:J

.field protected rmsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/entry/Entry;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public getLeftBlockingHour()I
    .registers 2

    .prologue
    .line 22
    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/entry/ErrorResp;->left_blocking_hour:I

    return v0
.end method

.method public getRcode()J
    .registers 3

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/samsung/android/coreapps/easysignup/entry/ErrorResp;->rcode:J

    return-wide v0
.end method

.method public getRmsg()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/entry/ErrorResp;->rmsg:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Error [rcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/coreapps/easysignup/entry/ErrorResp;->rcode:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rmsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/entry/ErrorResp;->rmsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
