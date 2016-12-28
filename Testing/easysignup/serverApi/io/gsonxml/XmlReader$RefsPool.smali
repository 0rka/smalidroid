.class final Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;
.super Ljava/lang/Object;
.source "XmlReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RefsPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final SIZE:I = 0x20


# instance fields
.field private final creator:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Creator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private len:I

.field private final store:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Creator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Creator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 858
    .local p0, "this":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;, "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool<TT;>;"
    .local p1, "factory":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Creator;, "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Creator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 853
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;->store:[Ljava/lang/Object;

    .line 856
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;->len:I

    .line 859
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;->creator:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Creator;

    .line 860
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 864
    .local p0, "this":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;, "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool<TT;>;"
    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;->len:I

    if-nez v0, :cond_b

    .line 865
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;->creator:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Creator;

    invoke-interface {v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Creator;->create()Ljava/lang/Object;

    move-result-object v0

    .line 867
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;->store:[Ljava/lang/Object;

    iget v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;->len:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;->len:I

    aget-object v0, v0, v1

    goto :goto_a
.end method

.method public release(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 872
    .local p0, "this":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;, "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;->len:I

    const/16 v1, 0x20

    if-ge v0, v1, :cond_10

    .line 873
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;->store:[Ljava/lang/Object;

    iget v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;->len:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;->len:I

    aput-object p1, v0, v1

    .line 875
    :cond_10
    return-void
.end method
