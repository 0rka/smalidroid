.class public Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/HeartBeatReqBody;
.super Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;
.source "HeartBeatReqBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/HeartBeatReqBody$HeartBeatParam;
    }
.end annotation


# instance fields
.field protected list:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/HeartBeatReqBody$HeartBeatParam;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/HeartBeatReqBody$HeartBeatParam;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "paramsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/HeartBeatReqBody$HeartBeatParam;>;"
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;-><init>()V

    .line 15
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/HeartBeatReqBody$HeartBeatParam;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/HeartBeatReqBody$HeartBeatParam;

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/HeartBeatReqBody;->list:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/HeartBeatReqBody$HeartBeatParam;

    .line 16
    return-void
.end method
