.class final Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;
.super Ljava/lang/Object;
.source "Stack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private array:[Ljava/lang/Object;

.field private size:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 9
    .local p0, "this":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;, "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->array:[Ljava/lang/Object;

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->size:I

    return-void
.end method

.method private ensureStack()V
    .registers 5

    .prologue
    .local p0, "this":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;, "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack<TT;>;"
    const/4 v3, 0x0

    .line 62
    iget v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->size:I

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->array:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v1, v2, :cond_17

    .line 63
    iget v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->size:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 64
    .local v0, "newStack":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->array:[Ljava/lang/Object;

    iget v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->array:[Ljava/lang/Object;

    .line 67
    .end local v0    # "newStack":[Ljava/lang/Object;
    :cond_17
    return-void
.end method


# virtual methods
.method public cleanup(I)I
    .registers 3
    .param p1, "count"    # I

    .prologue
    .line 35
    .local p0, "this":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;, "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack<TT;>;"
    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->size:I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->cleanup(II)I

    move-result v0

    return v0
.end method

.method public cleanup(II)I
    .registers 8
    .param p1, "count"    # I
    .param p2, "oldStackSize"    # I

    .prologue
    .line 39
    .local p0, "this":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;, "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack<TT;>;"
    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->size:I

    .line 40
    .local v0, "curStackSize":I
    if-ge p2, v0, :cond_23

    .line 41
    move v1, p2

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_14

    .line 42
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->array:[Ljava/lang/Object;

    sub-int v3, v1, p1

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->array:[Ljava/lang/Object;

    aget-object v4, v4, v1

    aput-object v4, v2, v3

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 44
    :cond_14
    iget v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->size:I

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->size:I

    .line 48
    .end local v1    # "i":I
    :goto_19
    iget v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->size:I

    if-gez v2, :cond_20

    .line 49
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->size:I

    .line 51
    :cond_20
    sub-int v2, p2, p1

    return v2

    .line 46
    :cond_23
    iget v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->size:I

    sub-int v3, p1, p2

    add-int/2addr v3, v0

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->size:I

    goto :goto_19
.end method

.method public drop()V
    .registers 2

    .prologue
    .line 31
    .local p0, "this":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;, "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack<TT;>;"
    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->size:I

    .line 32
    return-void
.end method

.method public fix(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;, "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack<TT;>;"
    .local p1, "check":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->size:I

    .line 56
    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->size:I

    if-lez v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    if-ne v0, p1, :cond_1a

    .line 57
    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->size:I

    .line 59
    :cond_1a
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;, "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->array:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public peek()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;, "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;, "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->ensureStack()V

    .line 71
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->size:I

    aput-object p1, v0, v1

    .line 72
    return-void
.end method

.method public pushAt(ILjava/lang/Object;)V
    .registers 8
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;, "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack<TT;>;"
    .local p2, "scope":Ljava/lang/Object;, "TT;"
    move v1, p1

    .line 76
    .local v1, "pos":I
    if-gez v1, :cond_4

    .line 77
    const/4 v1, 0x0

    .line 79
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->ensureStack()V

    .line 80
    iget v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->size:I

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_b
    if-lt v0, v1, :cond_1a

    .line 81
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->array:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->array:[Ljava/lang/Object;

    aget-object v4, v4, v0

    aput-object v4, v2, v3

    .line 80
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 83
    :cond_1a
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->array:[Ljava/lang/Object;

    aput-object p2, v2, v1

    .line 84
    iget v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->size:I

    .line 85
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 22
    .local p0, "this":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;, "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack<TT;>;"
    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 89
    .local p0, "this":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;, "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v1, "res":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->size:I

    if-ge v0, v2, :cond_1a

    .line 91
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->array:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 93
    :cond_1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2d

    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 96
    :cond_2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
