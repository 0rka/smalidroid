.class public Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/UpdateServiceParams;
.super Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;
.source "UpdateServiceParams.java"


# instance fields
.field protected sids:[I


# direct methods
.method public constructor <init>([I)V
    .registers 2
    .param p1, "sids"    # [I

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/UpdateServiceParams;->sids:[I

    .line 9
    return-void
.end method
