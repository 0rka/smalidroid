.class public Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/MtAuthError;
.super Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;
.source "MtAuthError.java"


# instance fields
.field protected left_blocking_hour:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method public getLeftBlockingHour()I
    .registers 2

    .prologue
    .line 12
    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/MtAuthError;->left_blocking_hour:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "AuthError [rcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/MtAuthError;->rcode:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rmsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/MtAuthError;->rmsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
