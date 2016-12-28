.class public Lcom/samsung/android/coreapps/easysignup/util/SpannablePosition;
.super Ljava/lang/Object;
.source "SpannablePosition.java"


# instance fields
.field end:I

.field start:I


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "_start"    # I
    .param p2, "_end"    # I

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Lcom/samsung/android/coreapps/easysignup/util/SpannablePosition;->start:I

    .line 18
    iput v0, p0, Lcom/samsung/android/coreapps/easysignup/util/SpannablePosition;->end:I

    .line 21
    iput p1, p0, Lcom/samsung/android/coreapps/easysignup/util/SpannablePosition;->start:I

    .line 22
    iput p2, p0, Lcom/samsung/android/coreapps/easysignup/util/SpannablePosition;->end:I

    .line 23
    return-void
.end method


# virtual methods
.method public getEnd()I
    .registers 2

    .prologue
    .line 30
    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/util/SpannablePosition;->end:I

    return v0
.end method

.method public getStart()I
    .registers 2

    .prologue
    .line 26
    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/util/SpannablePosition;->start:I

    return v0
.end method
