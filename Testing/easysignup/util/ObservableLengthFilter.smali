.class public Lcom/samsung/android/coreapps/easysignup/util/ObservableLengthFilter;
.super Landroid/text/InputFilter$LengthFilter;
.source "ObservableLengthFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/util/ObservableLengthFilter$OnMaxLengthReachListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/samsung/android/coreapps/easysignup/util/ObservableLengthFilter$OnMaxLengthReachListener;

.field private mMaxLength:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "maxLength"    # I

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/coreapps/easysignup/util/ObservableLengthFilter;-><init>(ILcom/samsung/android/coreapps/easysignup/util/ObservableLengthFilter$OnMaxLengthReachListener;)V

    .line 20
    return-void
.end method

.method public constructor <init>(ILcom/samsung/android/coreapps/easysignup/util/ObservableLengthFilter$OnMaxLengthReachListener;)V
    .registers 3
    .param p1, "maxLength"    # I
    .param p2, "listener"    # Lcom/samsung/android/coreapps/easysignup/util/ObservableLengthFilter$OnMaxLengthReachListener;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 25
    iput p1, p0, Lcom/samsung/android/coreapps/easysignup/util/ObservableLengthFilter;->mMaxLength:I

    .line 26
    iput-object p2, p0, Lcom/samsung/android/coreapps/easysignup/util/ObservableLengthFilter;->mListener:Lcom/samsung/android/coreapps/easysignup/util/ObservableLengthFilter$OnMaxLengthReachListener;

    .line 27
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 43
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 45
    .local v0, "result":Ljava/lang/CharSequence;
    if-nez v0, :cond_7

    .line 55
    :cond_6
    :goto_6
    return-object v0

    .line 50
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/util/ObservableLengthFilter;->mListener:Lcom/samsung/android/coreapps/easysignup/util/ObservableLengthFilter$OnMaxLengthReachListener;

    if-eqz v1, :cond_6

    .line 51
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/util/ObservableLengthFilter;->mListener:Lcom/samsung/android/coreapps/easysignup/util/ObservableLengthFilter$OnMaxLengthReachListener;

    iget v2, p0, Lcom/samsung/android/coreapps/easysignup/util/ObservableLengthFilter;->mMaxLength:I

    invoke-interface {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ObservableLengthFilter$OnMaxLengthReachListener;->onMaxLengthReachListener(I)V

    goto :goto_6
.end method

.method public getMaxLength()I
    .registers 2

    .prologue
    .line 30
    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/util/ObservableLengthFilter;->mMaxLength:I

    return v0
.end method

.method public setOnMaxLengthReachListener(Lcom/samsung/android/coreapps/easysignup/util/ObservableLengthFilter$OnMaxLengthReachListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/android/coreapps/easysignup/util/ObservableLengthFilter$OnMaxLengthReachListener;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/util/ObservableLengthFilter;->mListener:Lcom/samsung/android/coreapps/easysignup/util/ObservableLengthFilter$OnMaxLengthReachListener;

    .line 35
    return-void
.end method
