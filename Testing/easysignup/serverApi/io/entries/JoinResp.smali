.class public Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinResp;
.super Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;
.source "JoinResp.java"


# instance fields
.field public access_token:Ljava/lang/String;

.field public duid:Ljava/lang/String;

.field public refresh_token:Ljava/lang/String;

.field public services:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServiceInfo;

.field public urls:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServerInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;-><init>()V

    return-void
.end method
