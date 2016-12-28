.class public Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/SppErrorResp;
.super Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;
.source "SppErrorResp.java"


# instance fields
.field protected code:Ljava/lang/String;

.field protected message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 9
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/SppErrorResp;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 13
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/SppErrorResp;->message:Ljava/lang/String;

    return-object v0
.end method
