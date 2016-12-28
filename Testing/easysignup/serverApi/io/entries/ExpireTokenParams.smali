.class public Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ExpireTokenParams;
.super Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;
.source "ExpireTokenParams.java"


# instance fields
.field protected duid:Ljava/lang/String;

.field protected token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "duid"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ExpireTokenParams;->duid:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ExpireTokenParams;->token:Ljava/lang/String;

    .line 9
    return-void
.end method
