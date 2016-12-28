.class public Lcom/samsung/android/coreapps/easysignup/widget/StateLinearLayout;
.super Landroid/widget/FrameLayout;
.source "StateLinearLayout.java"

# interfaces
.implements Lcom/samsung/android/coreapps/easysignup/widget/IDrawableStateObservable;


# instance fields
.field private mOnDrawableStateChanged:Lcom/samsung/android/coreapps/easysignup/widget/IDrawableStateObservable$OnDrawableStateChanged;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 43
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 45
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/widget/StateLinearLayout;->mOnDrawableStateChanged:Lcom/samsung/android/coreapps/easysignup/widget/IDrawableStateObservable$OnDrawableStateChanged;

    if-eqz v0, :cond_10

    .line 46
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/widget/StateLinearLayout;->mOnDrawableStateChanged:Lcom/samsung/android/coreapps/easysignup/widget/IDrawableStateObservable$OnDrawableStateChanged;

    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/widget/StateLinearLayout;->getDrawableState()[I

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/coreapps/easysignup/widget/IDrawableStateObservable$OnDrawableStateChanged;->onDrawableStateChanged(Landroid/view/View;[I)V

    .line 48
    :cond_10
    return-void
.end method

.method public setOnDrawableStateChanged(Lcom/samsung/android/coreapps/easysignup/widget/IDrawableStateObservable$OnDrawableStateChanged;)V
    .registers 2
    .param p1, "onDrawableStateChanged"    # Lcom/samsung/android/coreapps/easysignup/widget/IDrawableStateObservable$OnDrawableStateChanged;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/widget/StateLinearLayout;->mOnDrawableStateChanged:Lcom/samsung/android/coreapps/easysignup/widget/IDrawableStateObservable$OnDrawableStateChanged;

    .line 39
    return-void
.end method
